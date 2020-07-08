#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/times.h>
#include <unistd.h>
#include <arm_neon.h> 

#define BS 8

void transpose(uint8_t *dst, const uint8_t *src, int dim) {
int i, j;
for(i = 0; i < dim; i+=BS){
	for(j = 0; j < dim; j+=BS ){ 
		//dst[j * dim + i] = src[i * dim + j];    
		/* LOADS 8x8 CHARS*/
		uint8x8_t s0 = vld1_u8(&src[j+i*dim]);
		uint8x8_t s1 = vld1_u8(&src[j+(i+1)*dim]);
		uint8x8_t s2 = vld1_u8(&src[j+(i+2)*dim]);
		uint8x8_t s3 = vld1_u8(&src[j+(i+3)*dim]);
		uint8x8_t s4 = vld1_u8(&src[j+(i+4)*dim]);
		uint8x8_t s5 = vld1_u8(&src[j+(i+5)*dim]);
		uint8x8_t s6 = vld1_u8(&src[j+(i+6)*dim]);
		uint8x8_t s7 = vld1_u8(&src[j+(i+7)*dim]);
		

		/*TRANSPOSE*/
		uint8x8x2_t t0 = vtrn_u8 (s0,s1);
                uint8x8x2_t t1 = vtrn_u8 (s2,s3);
                uint8x8x2_t t2 = vtrn_u8 (s4,s5);
                uint8x8x2_t t3 = vtrn_u8 (s6,s7);


		 uint16x4x2_t x0 = vtrn_u16 (vreinterpret_u16_u8(t0.val[0]),
					  vreinterpret_u16_u8(t1.val[0]));
                 uint16x4x2_t x1 = vtrn_u16 (vreinterpret_u16_u8(t2.val[0]),
                                          vreinterpret_u16_u8(t3.val[0]));
                 uint16x4x2_t x2 = vtrn_u16 (vreinterpret_u16_u8(t0.val[1]),
                                          vreinterpret_u16_u8(t1.val[1]));
                 uint16x4x2_t x3 = vtrn_u16 (vreinterpret_u16_u8(t2.val[1]),
                                          vreinterpret_u16_u8(t3.val[1]));


		 uint32x2x2_t f0 = vtrn_u32 (vreinterpret_u32_u16(x0.val[0]),
					  vreinterpret_u32_u16(x1.val[0]));
                 uint32x2x2_t f1 = vtrn_u32 (vreinterpret_u32_u16(x0.val[1]),
					  vreinterpret_u32_u16(x1.val[1]));
		 uint32x2x2_t f2 = vtrn_u32 (vreinterpret_u32_u16(x2.val[0]),
					  vreinterpret_u32_u16(x3.val[0]));
		 uint32x2x2_t f3 = vtrn_u32 (vreinterpret_u32_u16(x2.val[1]),
					  vreinterpret_u32_u16(x3.val[1]));

		/* STORES 8X8 CHARS */
		vst1_u8(&dst[i+j*dim],   vreinterpret_u8_u32(f0.val[0]));
		vst1_u8(&dst[i+(j+1)*dim], vreinterpret_u8_u32(f2.val[0]));
		vst1_u8(&dst[i+(j+2)*dim], vreinterpret_u8_u32(f1.val[0]));
		vst1_u8(&dst[i+(j+3)*dim], vreinterpret_u8_u32(f3.val[0]));
		vst1_u8(&dst[i+(j+4)*dim], vreinterpret_u8_u32(f0.val[1]));
		vst1_u8(&dst[i+(j+5)*dim], vreinterpret_u8_u32(f1.val[1]));
		vst1_u8(&dst[i+(j+6)*dim], vreinterpret_u8_u32(f2.val[1]));
		vst1_u8(&dst[i+(j+7)*dim], vreinterpret_u8_u32(f3.val[1]));			
               } 
	}
}

int main(int argc, char *argv[]) {
    int i;
	struct tms start, end;
    if (argc != 2) {
        printf("Usage: ./exec N\n");
        exit(0);
    }
    
    int dim = atoi(argv[1]);

    uint8_t *src = malloc(dim*dim*sizeof(char));
    uint8_t *dst = malloc(dim*dim*sizeof(char));

    srand(0);
    for (i = 0; i < dim*dim; ++i)
        src[i] = (char) i;


      // Insert instrumentation timing HERE (start timing)
    if (times(&start) == (clock_t)-1) exit(0);
    transpose(dst, src, dim);
    // Insert instrumentation timing HERE (end timing)
    if (times(&end) == (clock_t)-1) exit(0);
    // Check result
   float user =  (float)(end.tms_utime-start.tms_utime)/sysconf(_SC_CLK_TCK);
   float system = (float)(end.tms_stime-start.tms_stime)/sysconf(_SC_CLK_TCK);
   float elapsed = user + system;
  
    fprintf(stdout, "\n Timing: elpased %f user %f segons, system: %f segons\n", elapsed, user, system); 


    printf("%d\n",dst[rand()%(dim*dim)]);

    return 0;
}
