#include "DataStructure.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void actor_split_buffer(char * buffer,char **char_id,char **name,char **movies){

    int i = 0;
    char * new_char_id = malloc(10 * sizeof(char));
    char * new_name = malloc(100 * sizeof(char));
    char * new_movies = malloc(100*sizeof(char));

    while (*buffer && *buffer != '\t')
    {
        new_char_id[i++] = *buffer++;
    }
    new_char_id[i] = '\0';
    *char_id = new_char_id;
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
void movie_split_buffer(char * buffer,int *id,char ** type,char ** title)
{
    char *new_title = malloc(100*sizeof(char));
    char *new_char_id = malloc(10*sizeof(char));
    char *new_type = malloc(100*sizeof(char));

    int i = 0;

    while (*buffer && *buffer != '\t')
    {
        new_char_id[i++] = *buffer++;
    }
    new_char_id[i] = '\0';
    *id = atoi(new_char_id+2);
    buffer++;

    i = 0;
    while (*buffer && *buffer != '\t')
    {
        new_type[i++] = *buffer++;
    }
    new_type[i] = '\0';
    *type = new_type;
    buffer++;

    i = 0;
    while (*buffer && *buffer != '\t')
    {
        new_title[i++] = *buffer++;
    }
    new_title[i] = '\0';
    *title = new_title;

    free(new_char_id);
}


int main()
{
    char * buffer = (char*)malloc(1000*sizeof(char));
    char * char_id,*name,*movies,*type;
    int int_id;
    int i = 0;

    array_movies * array_movie = construct_array_movie();

    FILE * arq = fopen("title.basics2.tsv","r");

    while (fgets(buffer,999,arq))
    {   
        for (int j =0;j<5000;j++){
            movie_split_buffer(buffer,&int_id,&type,&name);
            
            // if(type[0] == 'm' && type[1] == 'o' && type[2] == 'v' && type[3] == 'i' && type[4] == 'e')
            if (strncmp(type, "movie", 5) == 0) 
            {
                movie new_movie = construct_movie(int_id,name,NULL);
                
                add_array_movies(array_movie,new_movie);
                printf("add id: %i \n",int_id);
            }

            if(!fgets(buffer,999,arq))
            {
                break;
            }

        }

        printf("Escreva 0 para sair e 1 para carregar mais filmes \n");
        scanf("%i",&int_id);
        if( int_id == 0)
        {
            break;
        }

    }
    free(type);
    fclose(arq);
    

    for(int j=0;j<array_movie->size;j++)
    {
        printf("%s\n",array_movie->movies[j].title);
    }




    // arq = fopen("name.basics2.tsv","r");
    // i = 0;
    // while (fgets(buffer,999,arq))
    // {

    //     if(i++ != 0)
    //     {
    //        actor_split_buffer(buffer,&char_id,&name,&movies);
    //        printf("\nchar_ID: %s",char_id);
    //        free(char_id);
    //        printf("\nName: %s",name);
    //        free(name);
    //        printf("\nMovies: %s",movies);
    //        free(movies);

    //     }

    //     printf("\n \n");

        
    // }

    destruct_array_movies(array_movie);
    free(buffer);
    return 0;
}
