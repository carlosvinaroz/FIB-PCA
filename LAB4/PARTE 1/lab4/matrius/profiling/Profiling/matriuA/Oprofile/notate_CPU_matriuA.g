/* 
 * Command line: opannotate --source matriuA.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted CPU_CYCLES events (CPU cycle) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriu4x4.c"
 * 
 *  37478 99.8003
 */


               :#include <stdio.h>
               :#include <stdlib.h>
               :#include <assert.h>
               :
               :#define N_ITER 10000131
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
   383  1.0199 :{ /* main total:  37478 99.8003 */
               :    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
  4304 11.4611 :    unsigned int n_iter=N_ITER, i,j;
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
               :   // INLINE A MANO, COMO ME ENSEÑO MI ABUELA
               :   int iter;
               :   int k;
               :
  1405  3.7414 :   for (iter=0; iter<n_iter; iter++)
               :   {
   395  1.0518 :      for (i = 0; i < 4; i++) 
               :      {
  2093  5.5735 :        for (j = 0; j < 4; j++) 
               :	{
  3706  9.8687 :           for (k = 0; k < 4; k++) 
               :	   {
 25192 67.0839 :              C[i][j] = C[i][j] + A[i][k] * B[k][j];
               :	   
               :	   }
               :	}
               :      }
               :   }
               :
               :    print_matriu(C);
               :         
               :    return 0;
               :}
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-misc.c"
 * 
 *      1  0.0027
 */


 /* _dl_name_match_p total:      1  0.0027 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-addr.c"
 * 
 *      1  0.0027
 */


 /* _dl_addr total:      1  0.0027 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/../sysdeps/arm/dl-machine.h"
 * 
 *      1  0.0027
 */


