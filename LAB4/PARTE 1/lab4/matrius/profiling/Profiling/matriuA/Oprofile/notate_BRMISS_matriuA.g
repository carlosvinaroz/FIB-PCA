/* 
 * Command line: opannotate --source matriuA.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted BR_MIS_PRED events (Mispredicted or not predicted branch speculatively executed) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriu4x4.c"
 * 
 *    101 100.000
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
               :{ /* main total:    101 100.000 */
               :    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
               :    unsigned int n_iter=N_ITER, i,j;
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
               :   for (iter=0; iter<n_iter; iter++)
               :   {
               :      for (i = 0; i < 4; i++) 
               :      {
               :        for (j = 0; j < 4; j++) 
               :	{
               :           for (k = 0; k < 4; k++) 
               :	   {
   101 100.000 :              C[i][j] = C[i][j] + A[i][k] * B[k][j];
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
