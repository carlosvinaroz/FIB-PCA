#include <stdio.h>
#include <stdlib.h>
#include "yuv_filter.h"



// The top-level function
//For hybrid FPGA and SMP execution comment it out, and comment next target device directive
#pragma omp target device(fpga,smp) copy_deps num_instances(1)
//For SMP execution comment it out and comment above directive
//#pragma omp target device(smp) 
#pragma omp task in([WIDTH*HEIGHT]in_ch1,\
                    [WIDTH*HEIGHT]in_ch2,\
                    [WIDTH*HEIGHT]in_ch3)\
                out([WIDTH*HEIGHT]out_ch1,\
                    [WIDTH*HEIGHT]out_ch2,\
                    [WIDTH*HEIGHT]out_ch3)
void yuv_filter_hw ( image_pix_t in_ch1[DEF_WIDTH*DEF_HEIGHT], 
		     image_pix_t in_ch2[DEF_WIDTH*DEF_HEIGHT], 
		     image_pix_t in_ch3[DEF_WIDTH*DEF_HEIGHT], 
		     image_pix_t out_ch1[DEF_WIDTH*DEF_HEIGHT], 
		     image_pix_t out_ch2[DEF_WIDTH*DEF_HEIGHT], 
		     image_pix_t out_ch3[DEF_WIDTH*DEF_HEIGHT], 
		     image_dim_t width, 
		     image_dim_t height, 
		     yuv_scale_t Y_scale, 
		     yuv_scale_t U_scale, 
		     yuv_scale_t V_scale)
{	 
#pragma HLS INLINE off
#ifndef __SYNTHESIS__
   // for smp version
   // Workaround malloc() calls w/o changing rest of code
  // image_t *yuv = (image_t *)malloc(sizeof(image_t));
  // image_t *scale = (image_t *)malloc(sizeof(image_t));
#else 
   // for fpga version, this case variables _yuv and _scale are statically declared
   // and yuv and scale will point them 
   //image_t _yuv;
   //image_t _scale;
   //image_t *yuv = &_yuv;
   //image_t *scale = &_scale;
#endif
	
///////////////* VARIABLES *////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   image_dim_t xy;
   image_pix_t R, G, B, L, M, N;
   yuv_intrnl_t C, D, E;
   

///////////////* FUSION FUSION FUSION FUSION FUSION *///////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* RESUMIDO A UNA FUNCIÓN Y UN BUCLE*/
YUV_SCALE_LOOP_XY:
	for(xy=0; xy<width*height;xy++){
#pragma HLS LOOP_TRIPCOUNT min=200 max=1920 
#pragma HLS PIPELINE
	/* RGB TO YUV */
		 R = in_ch1[xy]; 
        	 G = in_ch2[xy];
       	 	 B = in_ch3[xy];           
	 	 L = ((Wrgb[0][0] * R + Wrgb[0][1] * G + Wrgb[0][2] * B + 128) >> 8) +  16; //Y
        	 M = ((Wrgb[1][0] * R + Wrgb[1][1] * G + Wrgb[1][2] * B + 128) >> 8) + 128; //U
        	 N = ((Wrgb[2][0] * R + Wrgb[2][1] * G + Wrgb[2][2] * B + 128) >> 8) + 128; //V
	
	/* YUV SCALE TO RGB */
		 C = ((L * Y_scale) >> 7) - 16;
        	 D = ((M * U_scale) >> 7) - 128;
        	 E = ((N * V_scale) >> 7) - 128;
        	 out_ch1[xy] = CLIP(( Wyuv[0][0] * C                  + Wyuv[0][2] * E + 128) >> 8); //R
        	 out_ch2[xy] = CLIP(( Wyuv[1][0] * C + Wyuv[1][1] * D + Wyuv[1][2] * E + 128) >> 8); //G
        	 out_ch3[xy] = CLIP(( Wyuv[2][0] * C + Wyuv[2][1] * D                  + 128) >> 8); //B

		
       		
	}
}
///////////////* FUSION FUSION FUSION FUSION FUSION *///////////////////////////////////////////////////////////////////////////////////////////////////////////////


void yuv_filter (
      image_t *in,
      image_t *out,
      yuv_scale_t Y_scale,
      yuv_scale_t U_scale,
      yuv_scale_t V_scale
      )
{
   image_dim_t width, height;
   width = in->width;
   height = in->height;
   out->width = width;
   out->height = height;
   yuv_filter_hw(&in->channels.ch1[0][0], &in->channels.ch2[0][0], &in->channels.ch3[0][0],  &out->channels.ch1[0][0], &out->channels.ch2[0][0], &out->channels.ch3[0][0], in->width, in->height, Y_scale, U_scale, V_scale);

}

void image_read (
      image_t *in_image
      ) {
   image_dim_t width, height;
   int x, y;
   FILE *fp;

   fp=fopen("test_data/input.dat","r");
   int tmp;
   fscanf(fp, "%d", &tmp);
   width = tmp;
   fscanf(fp, "%d", &tmp);
   height = tmp;

   in_image->width  = width;
   in_image->height = height;
   for (x=0;x<width;x++) {
      for (y=0;y<height;y++) {
         fscanf(fp, "%d", &tmp);
         in_image->channels.ch1[x][y] = tmp;
         fscanf(fp, "%d", &tmp);
         in_image->channels.ch2[x][y] = tmp;
         fscanf(fp, "%d", &tmp);
         in_image->channels.ch3[x][y] = tmp;
      }
   }
   fclose(fp);

}


void image_write (
      image_t *out_image
      ) {
   FILE *fp;
   int xy,x,y;
   image_dim_t width, height;
   image_pix_t tmp;

   fp=fopen("test_data/output.dat","w");

   width = out_image->width;

   height = out_image->height;
   fprintf(fp,"%d\n%d\n",width,height);
   image_pix_t *out_channels=(image_pix_t*) malloc(sizeof(image_pix_t)*3*DEF_WIDTH*DEF_HEIGHT);

   xy=0;
   for (y=0;y<height;y++) {
      /* Scan-line: */
      for (x=0;x<width;x++) {
         out_channels[xy]= out_image->channels.ch1[x][y];
	 xy++;
         out_channels[xy]= out_image->channels.ch2[x][y];
	 xy++;
         out_channels[xy]= out_image->channels.ch3[x][y];
	 xy++;
      }
   }

   for (xy=0;xy<height*width*3-3;xy+=3) {
         tmp = out_channels[xy];
         fprintf(fp, "%d\n", tmp);
         tmp = out_channels[xy+1];
         fprintf(fp, "%d\n", tmp);
         tmp = out_channels[xy+2];
         fprintf(fp, "%d\n", tmp);
   }

   free(out_channels);

   fclose(fp);
}

#define N_IMAGES 10

int main (int argc, char *argv[]) {
   // Dynamically allocate image buffers as they are rather large
   // and stack overflow may occur if statically allocated
   //

   int n_images;
   int i;
  
   if (argc>1) 
     n_images = atoi(argv[1]);
   else n_images=N_IMAGES;

   image_t *img_rgb = (image_t *)malloc(n_images*sizeof(image_t));
   image_t *img_restore = (image_t *)malloc(n_images*sizeof(image_t));

   // Read input image
   for (i=0; i<n_images; i++)
     image_read(&img_rgb[i]);

   // Warm up
   for (i=0;i<n_images; i++)
      yuv_filter(&img_rgb[i], &img_restore[i], 128, 128, 128);
   #pragma omp taskwait

   // Start Timing
   double t_start = wall_time();
   // Create output image
   // Scale should be <=128 (128 corresponds to a scale of 1.0)
   for (i=0;i<n_images; i++)
      yuv_filter(&img_rgb[i], &img_restore[i], 128, 128, 128);
   #pragma omp taskwait

   // End Timing
   double t_end = wall_time();

   // Save output image
   image_write(&img_restore[0]);

   // Compare results
   int ret = system("diff --brief -w test_data/output.dat test_data/output.golden.dat");

   if (ret != 0) {
      printf("Test failed!!!\n", ret);
      printf( "  Execution time (secs): %f\n", t_end - t_start );
      return 1;
   } else {
      printf("Test passed!\n", ret);
      printf( "  Execution time (secs): %f\n", t_end - t_start );
      return 0;
   }
}

