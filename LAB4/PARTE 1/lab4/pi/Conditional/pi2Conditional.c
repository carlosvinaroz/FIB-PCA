#include <memory.h>
#include <stdio.h>
#include <stdlib.h>

int N, N4;
signed char a[25480], b[25480], c[25480];
#define LOOP_UNROLL(_u, _r, _X, _DIV) {\
	(_u) = ((_r) * 10 + (_X) );\
	_r = ( (*(_DIV + _u)).r );\
	_X = ( (*(_DIV + _u)).q );}

/*
for( k = 0; k <= N4; k++ )                  
    {      
	u = r * 10 + x[k];                       
        r = div25[u].r                       
        x[k] = div25[u].q;                               
    }    


void DIVIDE( signed char *x, int n )                           
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

    r = 0;                                
    for( k = 0; k <= N4; k++ )                  
    {      
	u = r * 10 + x[k];                       
        q = u/n;                               
        r = u - q * n;                           
        x[k] = q;                               
    }             
}
*/
struct uDATA{
	unsigned q;	
	unsigned r;
};

struct uDATA div5[50];
struct uDATA div25[250];
struct uDATA div239[2390];

void create_hashTable(){
	unsigned i=0;
	for(int u=0;u<50;u+=5){
		div5[u].q = i;
		div5[u+1].q = i;
		div5[u+2].q = i;
		div5[u+3].q = i;
		div5[u+4].q = i;
		++i;
		div5[u].r = 0;
		div5[u+1].r = 1;
		div5[u+2].r = 2;
		div5[u+3].r = 3;
		div5[u+4].r = 4;
	}

	int u=0;
	for(i=0;i<10;i++){
		int N=25+(25*i);
		unsigned res=0;	
		for(u;u<N;u++){		
			div25[u].q=i;
			div25[u].r=res;
			++res;
		}
	}

	u=0;
	for(i=0;i<10;i++){
		int N=239+(239*i);
		int res=0;	
		for(u;u<N;u++){		
			div239[u].q=i;
			div239[u].r=res;
			++res;
		}
	}
}

void DIVIDE( signed char *x, struct uDATA *p)                           
{                                                
    int k;
    unsigned r, u;    

    r = 0;                   
    //struct uDATA *p = &div5[0];           
    for( k = 0; k <= N4; k++ )                  
    	LOOP_UNROLL(u,r,x[k],p);
}



void DIVIDE239FUSION( signed char *x )                           
{                                                
    int j, k;
    unsigned r, u, rr, uu;
    long v;

    r = rr= 0;  
    struct uDATA *p = &div239[0];                              
    for( k = 0; k <= N4; k++ ){                  
    	LOOP_UNROLL(u,r,x[k],p);  
    	LOOP_UNROLL(uu,rr,x[k],p);
    }            
}

void LONGDIV( signed char *x, int n )                          
{                                                
    int j, k;
    unsigned q, r, u;
    long v;

    if( n < 6553 )                               
    {                                            
        r = 0;                                   
        for( k = 0; k <= N4; k++ )               
        {                                        
            u = r * 10 + x[k];                   
            q = u / n;                           
            r = u - q * n;                       
            x[k] = q;                            
        }                                       
    }                                            
    else                                         
    {                                            
        r = 0;                                   
        for( k = 0; k <= N4; k++ )              
        {                                       
            if( r < 6553 )                      
            {                                   
                u = r * 10 + x[k];              
                q = u / n;                      
                r = u - q * n;                  
            }                                   
            else                                
            {                                   
                v = (long) r * 10 + x[k];       
                q = v / n;                      
                r = v - q * n;                  
            }                                   
            x[k] = q;                           
        }                                       
    }                                           
}

void MULTIPLY( signed char *x, int n )                        
{                                            
    int j, k;
    unsigned q, r, u;
    long v;
    r = 0;                                   
    for( k = N4; k >= 0; k-- )               
    {                                        
        q = n * x[k] + r;                    
        r = q / 10;                          
        x[k] = q - r * 10;                   
    }                                        
}

void SET( signed char *x, int n )                              
{                                                
    memset( x, 0, N4 + 1 );                      
    x[0] = n;                                    
}


void SUBTRACT( signed char *x, signed char *y, signed char *z )                      
{                                                
    int j, k;
    

    for( k = N4; k >= 1; k-- )                   
    {                                              
	    x[k] = y[k] - z[k]; 
	    int sign = (x[k]<0);                            
            x[k] += sign * 10;                          
            z[k-1]+= sign;                                                                   
    }  
    /* IF INNECESARIO, SIEMPRE ES FALSE */
    x[k] = y[k] - z[k];             
}

void SUBTRACT_TRUE( signed char *x, signed char *y, signed char *z )                      
{                                                
    int j, k;
    
    

    for( k = N4; k >= 1; k-- )                   
    {                                            
        x[k] = y[k] - z[k] + 10; 
        z[k-1]++;                                                    
    }  
    /* IF INNECESARIO, SIEMPRE ES FALSE */
    x[k] = y[k] - z[k];                           
}


void calculate( void );
void progress( void );
void epilog( void );


int main( int argc, char *argv[] )
{
    N = 10000;

    if( argc > 1 )
        N = atoi(argv[1]);

    setbuf(stdout, NULL);

    calculate();

    epilog();

    return 0;
}

void calculate( void )
{
    int j;

    N4 = N + 4;

    SET( a, 0 );
    SET( b, 0 );
    create_hashTable(); //Creamos la hash table
    for( j = 2 * N4 + 1; j >= 3; j -= 2 )
    {
        SET( c, 1 );
        LONGDIV( c, j );

        SUBTRACT( a, c, a );
        DIVIDE(a,&div25[0]);

        SUBTRACT( b, c, b );
	/* FUSION */
        DIVIDE239FUSION(b);
	/* FUSION */
        progress();
    }

    SET( c, 1 );

    SUBTRACT_TRUE( a, c, a ); //if siempre
    DIVIDE(a,&div5[0]);

    SUBTRACT_TRUE( b, c, b ); //if siempre
    DIVIDE(b,&div239[0]);

    MULTIPLY( a, 4 );
    SUBTRACT( a, a, b ); 
    MULTIPLY( a, 4 );

    progress();
}

/*

 N = 10000                      
 A = 0                          
 B = 0                          
 J = 2 * (N + 4) + 1            
 FOR J = J TO 3 STEP -2         
     A = (1 / J - A) / 5 ^ 2    
     B = (1 / J - B) / 239 ^ 2  
 NEXT J                         
 A = (1 - A) / 5                
 B = (1 - B) / 239              
 PI = (A * 4 - B) * 4           

*/

void progress( void )
{
    printf(".");
}

void epilog( void )
{
    int j;

    {
        fprintf( stdout, " \n3.");
        for( j = 1; j <= N; j++ )
        {
            fprintf( stdout, "%d", a[j]);
            if( j % 5  == 0 )
                if( j % 50 == 0 )
                    if( j % 250  == 0 )
                        fprintf( stdout, "    <%d>\n\n   ", j );
                    else
                        fprintf( stdout, "\n   " );
                else
                    fprintf( stdout, " " );
        }
    }
}

