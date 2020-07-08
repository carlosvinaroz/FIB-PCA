/* 
 * Command line: opannotate --source matriuFullNoInline.g 
 * 
 * Interpretation of command line:
 * Output annotated source file with samples
 * Output all files
 * 
 * CPU: ARM Cortex-A9, speed 999 MHz (estimated)
 * Counted CPU_CYCLES events (CPU cycle) with a unit mask of 0x00 (No unit mask) count 100000
 */
/* 
 * Total samples for file : "/home/ubuntu/lab4/matrius/profiling/matriuFullNoInline.c"
 * 
 *  29950 99.7735
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
               :void multiplica(int A[4][4], int B[4][4], int C[4][4], unsigned int n_iter)
               :{ /* multiplica total:  29950 99.7735 */
               :   int iter;
               :   int i,j,k;
               :
   549  1.8289 :   for (iter=0; iter<n_iter; iter++)
 29401 97.9446 :		THIRD_LOOP_UNROLL(&C[0][0], &A[0][0], &B[0][0]);
               :}	
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
               :{
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
               :	
               :	multiplica(A,B,C,n_iter);
               :		
               :
               :    print_matriu(C);
               :         
               :    return 0;
               :}
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-lookup.c"
 * 
 *      1  0.0033
 */


 /* do_lookup_x total:      1  0.0033 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-load.c"
 * 
 *      1  0.0033
 */


 /* _dl_map_object_from_fd total:      1  0.0033 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/elf/dl-addr.c"
 * 
 *      1  0.0033
 */


 /* _dl_addr total:      1  0.0033 */
/* 
 * Total samples for file : "/build/glibc-XzEjT5/glibc-2.23/debug/printf_chk.c"
 * 
 *      1  0.0033
 */


 /* __printf_chk total:      1  0.0033 */
