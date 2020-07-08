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
    struct tms start, end;
    unsigned char buff[512];    
    unsigned int esc; 
    
    /* START TIME*/
    if (times(&start) == (clock_t)-1) exit(0);

    /*READ VALUES*/
    if ((fread(&buff,1,512,stdin)) < 512) panic("read"); 
      
    
    /* WRITE VALUES INT BY INT */
    for(int i=0; i<512; i+=4)
    {	      
	esc = *((unsigned int*) &buff[i]); //Load de 4 bytes
        esc = ((esc << 8) & 0xFF00FF00) | ((esc >> 8) & 0x00FF00FF); //Swap bit hack       
 	if (fwrite(&esc,1,4,stdout) < 0) panic("write1"); //Write del swap generado        
    }
    /* END TIME */
    if (times(&end) == (clock_t)-1) exit(0);

    /* CALCULATE ELPASED TIME */
    float elapsed = (float)(end.tms_utime-start.tms_utime)/sysconf(_SC_CLK_TCK); + (float)(end.tms_stime-start.tms_stime)/sysconf(_SC_CLK_TCK);  
    fprintf(stdout, "\n Timing: elapsed %f s\n", elapsed);    
   
 
    return 0;
}
