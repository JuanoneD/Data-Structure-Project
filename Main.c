#include "DataStructure.h"
#include <stdio.h>
#include<stdlib.h>


int main()
{
    int id = 0;
    char * c;
    FILE * arq = fopen("name.basics.tsv","r");
    c = (char*)malloc(100*sizeof(char));
    for(int i=0;i<10;i++)
    {
        
        fgets(c,99,arq);
        printf("\n %s",c);
        fscanf(arq,"%[^\t]",c);

        printf("\n %s",c);

        
    }
    free(c);
    return 1;
}
