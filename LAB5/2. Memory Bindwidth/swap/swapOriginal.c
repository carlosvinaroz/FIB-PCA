#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <time.h>
#include <sys/times.h>
 
void panic(char *miss)
{
        if (errno != 0) perror(miss);
        else fprintf(stderr, "%s\n", miss);
 
        exit(1);
}
 
int main(int argc, char *argv[])
{
   
    char c1, c2;
    int n1, n2;
    unsigned char buff[512];
    char c[2];
    struct tms start, end;
     /* START TIME*/
    if (times(&start) == (clock_t)-1) exit(0);
    /*READ VALUES*/
    if ((fread(&buff,1,512,stdin)) < 512) panic("read"); 
      
   
    /* WRITE VALUES CHAR BY CHAR */

    for(int i=0; i<512; i+=2)
    {
        c[0]=buff[i+1];
	c[1]=buff[i];
        if (write(1, &c, 2) < 0) panic("write");
    }
     /* END TIME */
    if (times(&end) == (clock_t)-1) exit(0);
 
    
           

     /* CALCULATE ELPASED TIME */
    float elapsed = (float)(end.tms_utime-start.tms_utime)/sysconf(_SC_CLK_TCK); + (float)(end.tms_stime-start.tms_stime)/sysconf(_SC_CLK_TCK);  
    fprintf(stdout, "\n Timing: elapsed %f s\n", elapsed);   
 
    return 0;
}
