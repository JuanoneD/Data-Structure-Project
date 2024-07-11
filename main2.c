#include "RandomFuncts.h"
#include <stdio.h>

int split_buffer(char * buffer,char * split, char key)
{
    int i = 0;
    while(*buffer && *buffer != key && *buffer != '\n')
    {
        split[i++] = *buffer++;
    }
    split[i++] = '\0';
    //printf("\n%s",split);
    return i;
}


int main()
{
    char buffer[1024];
    char id_char[1000];
    char movie_type[1000];
    char name[1000];
    int point;

    array_movies * array_mov = construct_array_movie();
    array_actors * array_act = construct_array_actors();


    FILE * arq = fopen("title.basics.tsv","r");
    fgets(buffer,99,arq);
    int count = 0;
    while (fgets(buffer,sizeof(buffer),arq))
    {
        point = split_buffer(buffer,id_char,'\t');
        int id = atoi(&id_char[2]);

        point+= split_buffer(&buffer[point],movie_type,'\t');
        if(movie_type[0] == 'm' && movie_type[1] == 'o' && movie_type[2] == 'v' && movie_type[3] == 'i' && movie_type[4] == 'e')
        //if(strncpy(movie_type,"movie",5)==0)
        {
            split_buffer(&buffer[point],name,'\t');
            movie new_movie = construct_movie(id,name,NULL);
            add_array_movies(array_mov,new_movie);
            //printf("\n%i",array_mov->movies[count++].id);
        }
            count ++;
    }
    printf("\n%i",array_mov->size);
    printf("\n%i",count);
    fclose(arq);


    arq = fopen("name.basics2.tsv","r");
    fgets(buffer,99,arq);

    while (fgets(buffer,sizeof(buffer),arq))
    {
        point = split_buffer(buffer,id_char,'\t');
        int id = atoi(&id_char[2]);
        point+= split_buffer(&buffer[point],name,'\t');
        for(int i=0;i<4;i++)
        {
            point+= split_buffer(&buffer[point],id_char,'\t');
        }
        point = 0;
        char split_id[100];
        int array_ids[4];
        printf("\n");
        for(int i=0;i<4;i++)
        {
            point += split_buffer(&id_char[point],split_id,',');
            //printf("%s == ",split_id);
            int aux = atoi(&split_id[2]);
            if (i!=0 && array_ids[i] == aux)
            {
                break;
            }
            array_ids[i] = aux;
            //printf("%i, ",array_ids[i]);
            aux = binary_search_movies(array_mov,array_ids[i]);
            printf("\n%i ",array_ids[i]);
            if (aux >=0)printf("%s",array_mov->movies[aux].title);
        }
    }
    destruct_array_actors(array_act);
    destruct_array_movies(array_mov);
    printf("\nSucesso");
    return 1;
}