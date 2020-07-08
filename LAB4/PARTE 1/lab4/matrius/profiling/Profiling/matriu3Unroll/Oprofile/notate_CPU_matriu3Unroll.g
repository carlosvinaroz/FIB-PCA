/* 
 * Command line: opannotate --source matriu3Unroll.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted CPU_CYCLES events (CPU cycle) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriu3Unroll.c"
 * 
 *   8849 99.6060
 */


               :#include <stdio.h>
               :#include <stdlib.h>
               :#include <assert.h>
               :
               :#define N_ITER 10000131
               :
               :#define LOOP_UNROLL(_C, _A, _B, _k, _j, _i) { (*(_C + (_i*4) + _j)) = ( (*(_C + (_i*4) + _j))  + (*(_A+ (_i*4) + _k)) * (*(_B + (_k*4) + _j)) );}
               :
               :#define FIRST_LOOP_UNROLL(_C, _A, _B, _j, _i) {\
               :	LOOP_UNROLL(_C, _A, _B, 0, _j, _i);\
               :	LOOP_UNROLL(_C, _A, _B, 1, _j, _i);\
               :	LOOP_UNROLL(_C, _A, _B, 2, _j, _i);\
               :	LOOP_UNROLL(_C, _A, _B, 3, _j, _i);}
               :
               :#define SECOND_LOOP_UNROLL(_C, _A, _B, _i){\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 0, _i);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 1, _i);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 2, _i);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 3, _i);}
               :
               :#define THIRD_LOOP_UNROLL(_C, _A, _B){\
               :	SECOND_LOOP_UNROLL(_C, _A, _B, 0);\
               :	SECOND_LOOP_UNROLL(_C, _A, _B, 1);\
               :	SECOND_LOOP_UNROLL(_C, _A, _B, 2);\
               :	SECOND_LOOP_UNROLL(_C, _A, _B, 3);}
               :
               :
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
               :{ /* main total:   8849 99.6060 */
               :    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
  5923 66.6704 :    unsigned int n_iter=N_ITER, i,j;
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
               :	/* INLINE */
               :	int iter;
               :	int k;
               :
  2926 32.9356 :	for (iter=0; iter<n_iter; iter++)
               :		THIRD_LOOP_UNROLL(&C[0][0], &A[0][0], &B[0][0]);	
               :
               :    print_matriu(C);
               :         
               :    return 0;
               :}
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-addr.c"
 * 
 *      2  0.0225
 */


 /* _dl_addr total:      2  0.0225 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/libio/fileops.c"
 * 
 *      1  0.0113
 */


 /* _IO_file_xsputn@@GLIBC_2.4 total:      1  0.0113 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-lookup.c"
 * 
 *      1  0.0113
 */


 /* do_lookup_x total:      1  0.0113 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/../sysdeps/arm/dl-machine.h"
 * 
 *      1  0.0113
 */


