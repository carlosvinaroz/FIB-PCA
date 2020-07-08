#ifndef _YUV_H_
#define _YUV_H_

#include <stdio.h>
#include <sys/time.h>
#include <time.h>

typedef signed short  rgb2yuv_coef_t ;
typedef signed short  yuv2rgb_coef_t;
typedef signed short  yuv_intrnl_t;
typedef unsigned char yuv_scale_t;


typedef unsigned char  image_pix_t;
typedef unsigned short image_dim_t;

#define DEF_WIDTH 200
#define DEF_HEIGHT 272

typedef struct {
   image_pix_t ch1[DEF_WIDTH][DEF_HEIGHT];
   image_pix_t ch2[DEF_WIDTH][DEF_HEIGHT];
   image_pix_t ch3[DEF_WIDTH][DEF_HEIGHT];
} channel_t;

typedef struct {
   channel_t channels;
   image_dim_t width;
   image_dim_t height;
} image_t;

void image_read(image_t *in_image);
void image_write(image_t *out_image);


#define CLIP(x) (((x)>255) ? 255 : (((x)<0) ? 0 : (x)))

void yuv_filter (
  image_t *in,
  image_t *out,
  yuv_scale_t Y_scale,
  yuv_scale_t U_scale,
  yuv_scale_t V_scale
  );


void yuv_filter (
  image_t *in,
  image_t *out,
  yuv_scale_t Y_scale,
  yuv_scale_t U_scale,
  yuv_scale_t V_scale
  );

const int HEIGHT=DEF_HEIGHT;
const int WIDTH=DEF_WIDTH;

const rgb2yuv_coef_t Wrgb[3][3] = {
      { 66, 129,  25},
      {-38, -74, 112},
      {122, -94, -18},
   };

const yuv2rgb_coef_t Wyuv[3][3] = {
      {298,    0,  409},
      {298, -100, -208},
      {298,  516,    0},
   };


double wall_time () {
   struct timespec ts;
   clock_gettime(CLOCK_MONOTONIC,&ts);
   return (double) (ts.tv_sec) + (double) ts.tv_nsec * 1.0e-9;
}

#endif /* _YUV_H_ */
