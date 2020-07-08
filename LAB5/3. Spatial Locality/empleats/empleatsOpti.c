#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NOM 39 
#define MAX_DIAS_MES 31 
#define MAX_CATEGORIA 41 
#define MAX_ADDRESS 101

/*
#define EXTES
*/

typedef struct 
{
  long long int NID;              /* Identification number - rang:0-2^32-1*/
  char Nom[MAX_NOM];  
  char Cognoms[MAX_NOM];  
  int  horesMes[MAX_DIAS_MES]; 
  char Categoria[MAX_CATEGORIA];
  unsigned int ptrClauForaneaDepartament;
  unsigned int ptrClauCategoria;
#ifdef EXTES     
  char Address[MAX_ADDRESS];
  char Nom_parella[MAX_NOM];
  char Cognoms_parella[MAX_NOM];
#endif
} Templeat;

/* NUEVA ESTRUCTURA CON LOS DATOS MÍNIMOS Y NECESARIOS */
typedef struct {
  long long int NID;
  Templeat *empls;
} IDEmpl;

int compare(const void *p1, const void *p2)
{
    if (((IDEmpl*) p1)->NID > ((IDEmpl*) p2)->NID) return(1);
    else if (((IDEmpl*) p1)->NID < ((IDEmpl*) p2)->NID) return(-1);
    else return(0);

}

int main(int argc, char *argv[])
{
	Templeat *empleats;
	/*DECLARAMOS LA ESTRUCTURA NUEVA*/
	IDEmpl *idenEmpleats;
	unsigned int N = 1000000, i;

	if (argc > 1) N = atoi(argv[1]);


	empleats = (Templeat *) malloc(N*sizeof(Templeat));
	if (empleats == NULL) { fprintf(stderr, "Out of memory\n"); exit(0); }
	memset(empleats, 0, N*sizeof(Templeat));
	/*LE RESERVAMOS MEMORIA ALINEADA A 8 BYTES POR DEFECTO*/
	idenEmpleats = (IDEmpl *) malloc(N*sizeof(IDEmpl));
	if (idenEmpleats == NULL) { fprintf(stderr, "Out of memory 2\n"); exit(0); }
	memset(idenEmpleats, 0, N*sizeof(IDEmpl));

	/* Random generation */
	for (i=0; i<N; i++) {
		empleats[i].NID = rand();
		/*GUARDAMOS EL NID Y APUNTAMOS A SU EMPLEADO*/
		idenEmpleats[i].NID = empleats[i].NID;
		idenEmpleats[i].empls=&empleats[i];	
		/**/	 
		empleats[i].Nom[0] = 'A' + ((i>>3) + (i<<2)) & 0x15;
		empleats[i].Cognoms[0] = 'a' + ((i>>2) + (i<<3)) & 0x15;
		empleats[i].horesMes[i % MAX_DIAS_MES] = i;
		empleats[i].Categoria[i % MAX_CATEGORIA] = (i << 2) * i;
		empleats[i].ptrClauForaneaDepartament = i<<10 + i<<14 + i>>3;
		empleats[i].ptrClauCategoria = i<<24 + i<< 18 + i<<10 + i>>2;
#ifdef EXTES     
                empleats[i].Address[0] = 'A' + ((i>>4) + (i<<2)) & 0x15;
                empleats[i].Nom_parella[0] = 'a' + ((i>>5) + (i<<2)) & 0x15;
  		empleats[i].Cognoms_parella[0] = 'A' + ((i>>5) + (i<<3)) & 0x15;
#endif
	}
	/*REORDENAMOS CON LA NUEVA ESTRUCTURA*/
	qsort(idenEmpleats, N, sizeof(IDEmpl), compare);
	for (i=0; i<N; i++){		
		/*ESCRIBIMOS EL EMPLEADO CON EL PUNTERO DE LA NUEVA ESTRUCTURA ORDENADA*/
	        write(1,idenEmpleats[i].empls,sizeof(Templeat));
	}

	return 0;
}
