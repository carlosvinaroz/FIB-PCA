
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



	if (argc == 1) n = N; else n = atoi(argv[1]);
	srand(0);
	for (i=0; i< (n*ROTATIONS); i++)
	{
		if(i % ROTATIONS == 0) {
			a = 0;
			xp = yp = rand();
		}
                        rot[1]=cos(a);
                        rot[4]=sin(a)*-1;
                        rot[7]=-xp*cos(a)+yp*sin(a)+xp;
                        rot[2]=sin(a);
                        rot[5]=cos(a);
                        rot[8]=-xp*sin(a)-yp*cos(a)+yp;
                        rot[3]=0;
                        rot[6]=0;
                        rot[9]=1;
                        rot[0] = a;
			kk=write(1, rot, sizeof(rot));
                        // Here possible multiplication to convert vertex of a figure
                        // Here possible write to store the vector transformed
			a += (M_PI*2)/ROTATIONS;
		
	}
	return 0;
}
