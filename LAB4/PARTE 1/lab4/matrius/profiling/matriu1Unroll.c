#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define N_ITER 10000131


#define LOOP_UNROLL(_C, _A, _B, _k) { (_C) = ( (_C)  + (*(_A + _k)) * (*(_B + (_k*4))) );}
#define FIRST_LOOP_UNROLL(_C, _A, _B) {\
	LOOP_UNROLL(_C, _A, _B, 0);\
	LOOP_UNROLL(_C, _A, _B, 1);\
	LOOP_UNROLL(_C, _A, _B, 2);\
	LOOP_UNROLL(_C, _A, _B, 3);}



void print_matriu(int C[][4])
{
   int i,j,k;

   for (i = 0; i < 4; i++) 
   {
     for (j = 0; j < 4; j++) 
     {
       printf("%d ", C[i][j]);
     }
     printf("\n");
   }
}

int main(int argc, char *argv[])
{
    int A[4][4], B[4][4], C[4][4] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
    unsigned int n_iter=N_ITER, i,j;

    for (i=0; i<4; i++) {
        for (j=0; j<4; j++) {
            A[i][j] = rand();
            B[i][j] = rand();
        }
    }

    if (argc > 1) {
	n_iter = atoi(argv[1]); 
    }

   int iter;
   int k;

   for (iter=0; iter<n_iter; iter++)
       for (i = 0; i < 4; i++) 
           for (j = 0; j < 4; j++)		
		FIRST_LOOP_UNROLL(C[i][j],&A[i][0],&B[0][j]); 

    print_matriu(C);
         
    return 0;
}
