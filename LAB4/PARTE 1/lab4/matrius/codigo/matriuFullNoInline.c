#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define N_ITER 10000131

#define LOOP_UNROLL(_C, _A, _B, _k, _j, _i) { (*(_C + (_i*4) + _j)) = ( (*(_C + (_i*4) + _j))  + (*(_A+ (_i*4) + _k)) * (*(_B + (_k*4) + _j)) );}

#define FIRST_LOOP_UNROLL(_C, _A, _B, _j, _i) {\
	LOOP_UNROLL(_C, _A, _B, 0, _j, _i);\
	LOOP_UNROLL(_C, _A, _B, 1, _j, _i);\
	LOOP_UNROLL(_C, _A, _B, 2, _j, _i);\
	LOOP_UNROLL(_C, _A, _B, 3, _j, _i);}

#define SECOND_LOOP_UNROLL(_C, _A, _B, _i){\
	FIRST_LOOP_UNROLL(_C, _A, _B, 0, _i);\
	FIRST_LOOP_UNROLL(_C, _A, _B, 1, _i);\
	FIRST_LOOP_UNROLL(_C, _A, _B, 2, _i);\
	FIRST_LOOP_UNROLL(_C, _A, _B, 3, _i);}

#define THIRD_LOOP_UNROLL(_C, _A, _B){\
	SECOND_LOOP_UNROLL(_C, _A, _B, 0);\
	SECOND_LOOP_UNROLL(_C, _A, _B, 1);\
	SECOND_LOOP_UNROLL(_C, _A, _B, 2);\
	SECOND_LOOP_UNROLL(_C, _A, _B, 3);}


void multiplica(int A[4][4], int B[4][4], int C[4][4], unsigned int n_iter)
{
   int iter;
   int i,j,k;

   for (iter=0; iter<n_iter; iter++)
		THIRD_LOOP_UNROLL(&C[0][0], &A[0][0], &B[0][0]);
}	


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

	
	multiplica(A,B,C,n_iter);
		

    print_matriu(C);
         
    return 0;
}
