#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/times.h>
#include <unistd.h>



void transpose(float *dst, float *src, int dim) {
    int i, j, ii, jj;
    for (i = 0; i < dim; i+=BS) 
        for(j = 0; j < dim; j+=BS) 
		for (ii = i; ii < i+BS; ii++) 
		        for(jj = j; jj < j+BS; jj++) 
           			dst[jj * dim + ii] = src[ii * dim + jj];        
    
}

int main(int argc, char *argv[]) {
    int i,j;
    // Data instrumentation timing
   struct tms start, end;

    if (argc != 2) {
        printf("Usage: ./exec N\n");
        exit(0);
    }
    
    int dim = atoi(argv[1]);

    float *src = malloc(dim*dim*sizeof(int));
    float *dst = malloc(dim*dim*sizeof(int));

    srand(0);
    for (i = 0; i < dim*dim; ++i)
        src[i] = (float) i;


    // Insert instrumentation timing HERE (start timing)
    if (times(&start) == (clock_t)-1) exit(0);
    transpose(dst, src, dim);
    // Insert instrumentation timing HERE (end timing)
    if (times(&end) == (clock_t)-1) exit(0);
    // Check result
   float user =  (float)(end.tms_utime-start.tms_utime)/sysconf(_SC_CLK_TCK);
   float system = (float)(end.tms_stime-start.tms_stime)/sysconf(_SC_CLK_TCK);
   float elapsed = user + system;
  
    fprintf(stderr, "\n Timing: elpased %f user %f segons, system: %f segons\n", elapsed, user, system); 

   /* for (i = 0; i < dim; ++i){
	for( j=0; j<dim; j++)
	        fprintf(stdout, "%f ",dst[i*dim+j]);
	fprintf(stdout, "\n ");
    }*/
    return 0;
}
