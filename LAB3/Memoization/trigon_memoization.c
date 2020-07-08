
#include <math.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#define N 6000
#define ROTATIONS 1000


int main(int argc, char *argv[])
{
	unsigned int i, j, n;
	float a, xp, yp;
        float rot[10];
        size_t kk;

    float mem_cos[ROTATIONS];
    float mem_sin[ROTATIONS];
    float mem_rotations[ROTATIONS];
    a = 0;
    for(i = 0; i < ROTATIONS; ++i) {
    	mem_cos[i] = cos(a);
    	mem_sin[i] = sin(a);
    	mem_rotations[i] = a;
    	a += 2*M_PI/ROTATIONS;
    }
    



	if (argc == 1) n = N; else n = atoi(argv[1]);
	srand(0);
	int pos = 0;
	for (i=0; i< (n*ROTATIONS); i++)
	{
		if(i % ROTATIONS == 0) {
			xp = yp = rand();
			pos = 0;
		}
                        rot[1]= mem_cos[pos];
                        rot[4]= mem_sin[pos]*-1;
                        rot[7]=-xp*mem_cos[pos]+yp*mem_sin[pos]+xp;
                        rot[2]=mem_sin[pos];
                        rot[5]=mem_cos[pos];
                        rot[8]=-xp*mem_sin[pos]-yp*mem_cos[pos]+yp;
                        rot[3]=0;
                        rot[6]=0;
                        rot[9]=1;
                        rot[0] = mem_rotations[pos];
			kk=write(1, rot, sizeof(rot));
			++pos;
                        // Here possible multiplication to convert vertex of a figure
                        // Here possible write to store the vector transformed
		
	}
	return 0;
}
