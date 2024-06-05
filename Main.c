#include "RandomFuncts.h"


int main()
{
    char buffer[1000];
    char *name,*movies,*type;
    int id,movie1,movie2,movie3,movie4;
    node *new_node1,*new_node2,*new_node3,*new_node4;

    array_movies * array_movie = construct_array_movie();
    array_actors * array_actor = construct_array_actors();

    FILE * arq = fopen("title.basics.tsv","r");

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




    arq = fopen("name.basics.tsv","r");
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


        if(movie1 >= 0)
        {
            
            if(movie2>= 0)
            {   
                new_node1 = construct_node(movie1,array_movie->movies[movie1].title,NULL);
                new_node2 = construct_node(movie2,array_movie->movies[movie2].title,NULL);

                if(add_neighbor(&(*array_movie).movies[movie1],new_node2) == 0)
                {
                    free(new_node2);
                }
                if(add_neighbor(&(*array_movie).movies[movie2],new_node1) == 0)
                {
                    free(new_node1);
                }
                if(movie3>=0)
                {
                    new_node1 = construct_node(movie1,array_movie->movies[movie1].title,NULL);
                    new_node2 = construct_node(movie2,array_movie->movies[movie2].title,NULL);
                    new_node3 = construct_node(movie3,array_movie->movies[movie3].title,NULL);

                    if(add_neighbor(&(*array_movie).movies[movie1],new_node3) == 1)
                    {
                        new_node3 = construct_node(movie3,array_movie->movies[movie3].title,NULL);
                    }
                    if(add_neighbor(&(*array_movie).movies[movie2],new_node3) == 0)
                    {
                        free(new_node3);
                    }
                    if(add_neighbor(&(*array_movie).movies[movie3],new_node1) == 0)
                    {
                        free(new_node1);
                    }
                    if(add_neighbor(&(*array_movie).movies[movie3],new_node2) == 0)
                    {
                        free(new_node2);
                    }

                    if(movie4 > 0)
                    {
                        new_node1 = construct_node(movie1,array_movie->movies[movie1].title,NULL);
                        new_node2 = construct_node(movie2,array_movie->movies[movie2].title,NULL);
                        new_node3 = construct_node(movie3,array_movie->movies[movie3].title,NULL);
                        new_node4 = construct_node(movie4,array_movie->movies[movie4].title,NULL);

                        if(add_neighbor(&(*array_movie).movies[movie1],new_node4) == 1)
                        {
                            new_node4 = construct_node(movie4,array_movie->movies[movie4].title,NULL);
                        }
                        if(add_neighbor(&(*array_movie).movies[movie2],new_node4) == 1)
                        {
                            new_node4 = construct_node(movie4,array_movie->movies[movie4].title,NULL);
                        }
                        if(add_neighbor(&(*array_movie).movies[movie3],new_node4) == 0)
                        {
                            free(new_node4);
                        }
                        if(add_neighbor(&(*array_movie).movies[movie4],new_node1) == 0)
                        {
                            free(new_node1);
                        }
                        if(add_neighbor(&(*array_movie).movies[movie4],new_node2) == 0)
                        {
                            free(new_node2);
                        }
                        if(add_neighbor(&(*array_movie).movies[movie4],new_node3) == 0)
                        {
                            free(new_node3);
                        }
                    }

                }

                
            }
        }
    }

    for(int i =0;i<array_movie->size;i++)
    {
        node *current = array_movie->movies[i].neighbors;
        printf("\nFilme %s  tem esses vizinhos:",array_movie->movies[i].title);
        while (current)
        {
            printf(" %s,",current->name);
            current = current->next;
        }
    }

    
    
    destruct_array_actors(array_actor);
    destruct_array_movies(array_movie);    
    printf("SUS");
    return 0;
}
