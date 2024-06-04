#include "RandomFuncts.h"


int main()
{
    char buffer[1000];
    char *name,*movies,*type;
    int id;

    array_movies * array_movie = construct_array_movie();
    array_actors * array_actor = construct_array_actors();

    FILE * arq = fopen("title.basics.tsv","r");

    while (fgets(buffer,999,arq))
    {   
        for (int j =0;j<10000;j++){
            movie_split_buffer(buffer,&id,&type,&name);
            
            // if(type[0] == 'm' && type[1] == 'o' && type[2] == 'v' && type[3] == 'i' && type[4] == 'e')
            if (strncmp(type, "movie", 5) == 0) 
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




    arq = fopen("name.basics.tsv","r");
    while (fgets(buffer,999,arq))
    {
        for(int i=0;i <10000;i++)
        {
            actor_split_buffer(buffer,&id,&name,&movies);

            actor new_actor = construct_actor(id,name,NULL);

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
    destruct_array_actors(array_actor);
    destruct_array_movies(array_movie);
    printf("SUS");
    return 0;
}
