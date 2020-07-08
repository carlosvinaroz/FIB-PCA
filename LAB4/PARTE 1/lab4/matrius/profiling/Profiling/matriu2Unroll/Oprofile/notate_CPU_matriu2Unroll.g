/* 
 * Command line: opannotate --source matriu2Unroll.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted CPU_CYCLES events (CPU cycle) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriu2Unroll.c"
 * 
 *  17930 99.7053
 */


               :#include <stdio.h>
               :#include <stdlib.h>
               :#include <assert.h>
               :
               :#define N_ITER 10000131
               :
               :#define LOOP_UNROLL(_C, _A, _B, _k, _j) { (*(_C + _j)) = ( (*(_C + _j))  + (*(_A + _k)) * (*(_B + (_k*4) + _j)) );}
               :
               :#define FIRST_LOOP_UNROLL(_C, _A, _B, _j) {\
               :	LOOP_UNROLL(_C, _A, _B, 0, _j);\
               :	LOOP_UNROLL(_C, _A, _B, 1, _j);\
               :	LOOP_UNROLL(_C, _A, _B, 2, _j);\
               :	LOOP_UNROLL(_C, _A, _B, 3, _j);}
               :
               :#define SECOND_LOOP_UNROLL(_C, _A, _B){\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 0);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 1);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 2);\
               :	FIRST_LOOP_UNROLL(_C, _A, _B, 3);}
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
               :{ /* main total:  17930 99.7053 */
               :    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
   210  1.1678 :    unsigned int n_iter=N_ITER, i,j;
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
   385  2.1409 :   for (iter=0; iter<n_iter; iter++)
   423  2.3522 :       for (i = 0; i < 4; i++)           	            		
 16912 94.0444 :		SECOND_LOOP_UNROLL(&C[i][0], &A[i][0], &B[0][0]);			
               :
               :
               :    print_matriu(C);
               :         
               :    return 0;
               :}
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-lookup.c"
 * 
 *      2  0.0111
 */


 /* check_match total:      1  0.0056 */
 /* _dl_setup_hash total:      1  0.0056 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-addr.c"
 * 
 *      2  0.0111
 */


 /* _dl_addr total:      2  0.0111 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/../sysdeps/arm/dl-machine.h"
 * 
 *      1  0.0056
 */


