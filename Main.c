#include "DataStructure.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void actor_split_buffer(char * buffer,char **id,char **name,char **movies){

    int i = 0;
    char * new_id = malloc(10 * sizeof(char));
    char * new_name = malloc(100 * sizeof(char));
    char * new_movies = malloc(100*sizeof(char));

    while (*buffer && *buffer != '\t')
    {
        new_id[i++] = *buffer++;
    }
    new_id[i] = '\0';
    *id = new_id;

    buffer++;
    i = 0;
    while (*buffer && *buffer != '\t')
    {
        new_name[i++] = *buffer++;
    }
    new_name[i] = '\0';
    *name = new_name;

    buffer++;
    i = 0;
    for(int j = 0; j<3;j++)
    {
        while (*buffer && *buffer != '\t')
        {
            buffer++;
        }
        buffer++;
    }
    while (*buffer && *buffer != '\t')
    {
        new_movies[i++] = *buffer++;
    }
    new_movies[i] = '\0';
    *movies = new_movies;
}


int main()
{
    char * buffer = (char*)malloc(1000*sizeof(char));
    char * id,*name,*movies;


    FILE * arq = fopen("name.basics.tsv","r");
    
    for(int i=0;i<100;i++)
    {
        fgets(buffer,999,arq);

        if(i != 0){

           actor_split_buffer(buffer,&id,&name,&movies); 
           printf("\nID: %s",id);
           free(id);
           printf("\nName: %s",name);
           free(name);
           printf("\nMovies: %s",movies);
           free(movies);

        }

        printf("\n \n");

        
    }

    free(buffer);
    return 1;
}
