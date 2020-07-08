/* 
 * Command line: opannotate --source matriu1Unroll.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted CPU_CYCLES events (CPU cycle) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriu1Unroll.c"
 * 
 *  22240 99.7488
 */


               :#include <stdio.h>
               :#include <stdlib.h>
               :#include <assert.h>
               :
               :#define N_ITER 10000131
               :
               :
               :#define LOOP_UNROLL(_C, _A, _B, _k) { (_C) = ( (_C)  + (*(_A + _k)) * (*(_B + (_k*4))) );}
               :#define FIRST_LOOP_UNROLL(_C, _A, _B) {\
               :	LOOP_UNROLL(_C, _A, _B, 0);\
               :	LOOP_UNROLL(_C, _A, _B, 1);\
               :	LOOP_UNROLL(_C, _A, _B, 2);\
               :	LOOP_UNROLL(_C, _A, _B, 3);}
               :
               :
               :
               :void print_matriu(int C[][4])
               :{
               :   int i,j,k;
               :
               :   for (i = 0; i < 4; i++) 
               :   {
               :     for (j = 0; j < 4; j++) 
               :     {
               :       printf("%d ", C[i][j]);
               :     }
               :     printf("\n");
               :   }
               :}
               :
               :int main(int argc, char *argv[])
   957  4.2922 :{ /* main total:  22240 99.7488 */
               :    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
  1208  5.4180 :    unsigned int n_iter=N_ITER, i,j;
               :
               :    for (i=0; i<4; i++) {
               :        for (j=0; j<4; j++) {
               :            A[i][j] = rand();
               :            B[i][j] = rand();
               :        }
               :    }
               :
               :    if (argc > 1) {
               :	n_iter = atoi(argv[1]); 
               :    }
               :
               :   int iter;
               :   int k;
               :
   319  1.4307 :   for (iter=0; iter<n_iter; iter++)
   406  1.8210 :       for (i = 0; i < 4; i++) 
  5470 24.5335 :           for (j = 0; j < 4; j++)		
 13880 62.2533 :		FIRST_LOOP_UNROLL(C[i][j],&A[i][0],&B[0][j]); 
               :
               :    print_matriu(C);
               :         
               :    return 0;
               :}
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-addr.c"
 * 
 *      2  0.0090
 */


 /* _dl_addr total:      2  0.0090 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/stdio-common/vfprintf.c"
 * 
 *      1  0.0045
 */


 /* vfprintf total:      1  0.0045 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/../sysdeps/arm/dl-machine.h"
 * 
 *      1  0.0045
 */


