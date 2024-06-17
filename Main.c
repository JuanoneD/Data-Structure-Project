#include "RandomFuncts.h"
#include <stdio.h>


int main()
{
    char buffer[1000];
    char *name,*movies,*type;
    int id,movie1,movie2,movie3,movie4;

    array_movies * array_movie = construct_array_movie();
    array_actors * array_actor = construct_array_actors();

    FILE * arq = fopen("title.basics2.tsv","r");

    while (fgets(buffer,999,arq))
    {   
        for (int j =0;j<100000;j++)
        {
            movie_split_buffer(buffer,&id,&type,&name);
            
            if(type[0] == 'm' && type[1] == 'o' && type[2] == 'v' && type[3] == 'i' && type[4] == 'e')
            //if (strncmp(type, "movie", 5) == 0) 
            {
                movie new_movie = construct_movie(id,name,NULL);
                
                add_array_movies(array_movie,new_movie);
                //printf("add id: %i \n",id);
            }

            if(!fgets(buffer,999,arq))
            {
                break;
            }

        }

        printf("Foram carregados %i filmes\nEscreva 0 para sair e 1 para carregar mais filmes \n",array_movie->size);
        scanf("%i",&id);
        if( id == 0)
        {
            break;
        }

    }
    free(type);
    fclose(arq);
    

    // for(int j=0;j<array_movie->size;j++)
    // {
    //     printf("%s\n",array_movie->movies[j].title);
    // }




    arq = fopen("name.basics2.tsv","r");

    fgets(buffer,999,arq);
    while (fgets(buffer,999,arq))
    {
        for(int i=0;i <100000;i++)
        {
            actor_split_buffer(buffer,&id,&name,&movies);
            actor new_actor = construct_actor(id,name,movies);

            add_array_actors(array_actor,new_actor);
            if(!fgets(buffer,999,arq))
            {
                break;
            }
        }

        printf("Foram carregados %i atores\nEscreva 0 para sair e 1 para carregar mais atores \n",array_actor->size);
        scanf("%i",&id);
        if( id == 0)
        {
            break;
        }
    }

    for(int i=0;i<array_actor->size;i++)
    {
        split_movies(array_actor->actors[i].movies,&movie1,&movie2,&movie3,&movie4);

        movie1 = binary_search_movies(array_movie,movie1);       
        movie2 = binary_search_movies(array_movie,movie2);
        movie3 = binary_search_movies(array_movie,movie3);
        movie4 = binary_search_movies(array_movie,movie4);

        if(movie2>= 0)
        {   
            add_neighbor(array_movie,movie1,movie2);
            add_neighbor(array_movie,movie2,movie1);
            if(movie3>=0)
            {
                add_neighbor(array_movie,movie1,movie3);
                add_neighbor(array_movie,movie2,movie3);
                add_neighbor(array_movie,movie3,movie1);
                add_neighbor(array_movie,movie3,movie2);
                if(movie4 >= 0)
                {
                    add_neighbor(array_movie,movie1,movie4);
                    add_neighbor(array_movie,movie2,movie4);
                    add_neighbor(array_movie,movie3,movie4);
                    add_neighbor(array_movie,movie4,movie1);
                    add_neighbor(array_movie,movie4,movie2);
                    add_neighbor(array_movie,movie4,movie3);
                }
            }
        }
    }

    fclose(arq);

    FILE *output = fopen("input.dot","w");

    fprintf(output,"graph { concentrate=true\n");
    for(int i =0;i<array_movie->size;i++)
    {
        node *current = array_movie->movies[i].neighbors;
        while (current)
        {
            fprintf(output,"\"%s\" -- \"%s\" \n",array_movie->movies[i].title,current->name);
            current = current->next;
        }
    }
    fprintf(output,"}");
    fclose(output);
    destruct_array_actors(array_actor);
    destruct_array_movies(array_movie);    
    printf("\nSUS");
    return 0;
}
