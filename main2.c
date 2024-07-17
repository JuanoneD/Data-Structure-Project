
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
///##########################################STRUCTS####################################
    typedef struct movie movie;
    typedef struct node node;

    struct node
    {
        int index_film;
        int id;
        movie * movie;
        node * next;
    };
    node * construct_node(int index,int id,movie * name,node * next)
    {
        node * new_node = (node*)malloc(sizeof(node));
        new_node->index_film = index;
        new_node->movie = name;
        new_node->id = id;
        new_node->next = next;
        return new_node;
    }


    void destruct_node(node * current)
    {
        if(!current)return;
        node *temp;
        //printf("\n");
        while(current->next)
        {
            temp = current;
            current = current->next;
            //printf("\n%i",temp->id);
            free(temp);
        }
    }
    

    struct movie
    {
        int id;
        char title[100];
        node * neighbors;

    };

    
    movie  construct_movie(int id,char *title,node * next)
    {
        movie new_movie;
        new_movie.id = id;
        strcpy(new_movie.title,title);
        new_movie.neighbors = next;
        return new_movie;
    }
    

    typedef struct actor
    {
        int id;
        char  name[100];
        node * movies;

    }actor;

    
    actor construct_actor(int id,char * name,node * movies)
    {
        actor new_actor;
        new_actor.id = id;
        strcpy(new_actor.name,name);
        new_actor.movies = movies;
        return new_actor;
    }


///##########################################STRUCTS####################################

//// ############################################################################### DATA STRUCTURE ######################################################
    typedef struct Dynamic_array_movies
    {
        int size;
        int capacity;
        movie * movies;
        
    }array_movies;

    array_movies * construct_array_movie()
    {
        array_movies * new_array = malloc(sizeof(array_movies));
        new_array->size = 0;
        new_array->capacity = 0;
        new_array->movies = NULL;
        return new_array;
    }

    void add_array_movies(array_movies * array,movie new_movie)
    {
        if(!array)
        {
            return;
        }
        if(!array->movies)
        {
            array->capacity = 2;
            array->movies = malloc(array->capacity*sizeof(movie));
        }
        if(array->capacity == array->size)
        {
            array->capacity*= 2;
            movie * temp = realloc(array->movies,array->capacity*sizeof(movie));
            if (!temp)printf("\nERRO NA ALOCACAO DE MEMORIA");
            array->movies = temp;
        }
        array->movies[array->size++] = new_movie;
    }

    void destruct_array_movies(array_movies * array)
    {
        for(int i = 0;i<array->size;i++)
        {
            destruct_node(array->movies[i].neighbors);
        }
        free(array->movies);
        free(array);
    }

    typedef struct dynamic_array_actors
    {
        int size;
        int capacity;
        actor ** actors;
        
    }array_actors;

    array_actors * construct_array_actors()
    {
        array_actors * new_array = (array_actors*)malloc(sizeof(array_actors));
        new_array->capacity = 0;
        new_array->size = 0;
        new_array->actors = NULL;
        return new_array;
    }

    void add_array_actors(array_actors * array,actor new_actor)
    {
        actor * new_node = malloc(sizeof(actor));
        *new_node = new_actor;
        if(!array->actors)
        {
            array->capacity = 100;
            array->actors = (actor**)malloc(array->capacity*sizeof(actor*));
        }
        if(array->capacity == array->size)
        {
            array->capacity*=2;
            actor ** temp = realloc(array->actors,array->capacity*sizeof(actor*));
            if(!temp)printf("ERRO NA ALOCACAO DE MEMORIA");
            array->actors = temp;
        }
        array->actors[array->size++] = new_node;
    }

    void destruct_array_actors(array_actors * array)
    {
        free(array->actors);
        free(array);
    }

//// ############################################################################### DATA STRUCTURE ######################################################

///////////######################################### RANDOM FUNCTS ###########################################################
    int binary_search_movies(array_movies * array,int id_search)
    {
        int begin = 0;
        int end = array->size - 1;
        int mid;
        while (begin <= end)
        {
            mid = begin + (end - begin) / 2;
            if(array->movies[mid].id == id_search)
            {
                return mid;
            }
            if(array->movies[mid].id < id_search)
            {
                begin = mid + 1;
            }
            if(array->movies[mid].id > id_search)
            {
                end = mid - 1;
            }
        }
        return -1;
    }

    int split_buffer(char * buffer,char * split, char key)
    {
        int i = 0;
        while(*buffer && *buffer != key && *buffer != '\n')
        {
            split[i++] = *buffer++;
        }
        split[i++] = '\0';
        return i;
    }

    void add_neigbor(movie * principal_movie,movie * neigbor,int index_neigbor)
    {
        if(neigbor->id == principal_movie->id) return;
        node * new_node = construct_node(index_neigbor,neigbor->id,neigbor,NULL);
        if(!principal_movie->neighbors)
        {
            principal_movie->neighbors = new_node;
            return;
        }
        node * current = principal_movie->neighbors;
        while (current->next)
        {
            if(current->id == neigbor->id)
            {
                free(new_node);
                return;
            }
            current = current->next;
        }
        current->next = new_node;
    }
///////////######################################### RANDOM FUNCTS ###########################################################


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
    }
    printf("\n%i",array_mov->size);
    fclose(arq);


    arq = fopen("name.basics.tsv","r");
    fgets(buffer,99,arq);

    node * new_node;

    while (fgets(buffer,sizeof(buffer),arq))
    {
        point = split_buffer(buffer,id_char,'\t');
        int id_actor = atoi(&id_char[2]);
        point+= split_buffer(&buffer[point],name,'\t');
        for(int i=0;i<4;i++)
        {
            point+= split_buffer(&buffer[point],id_char,'\t');
        }
        point = 0;
        char split_id[100];
        int array_ids[4];
        new_node = NULL;
        for(int i=0;i<4;i++)
        {
            point += split_buffer(&id_char[point],split_id,',');
            int aux = atoi(&split_id[2]);
            if (i!=0 && array_ids[i] == aux || array_ids[i-1] == aux)
            {
                break;
            }
            array_ids[i] = aux;
            aux = binary_search_movies(array_mov,array_ids[i]);
            movie * actor_movie = aux >=0?&array_mov->movies[aux]:NULL;

            if(actor_movie)
            {
                if(!new_node)
                {
                    new_node =  construct_node(aux,actor_movie->id,actor_movie,NULL);
                }
                else
                {
                    node * node_2 = construct_node(aux,actor_movie->id,actor_movie,NULL);
                    node_2->next = new_node;
                    new_node = node_2;
                }
            }
        }
        actor new_actor = construct_actor(id_actor,name,new_node);
        add_array_actors(array_act,new_actor);
    }
    printf("\n%i",array_act->size);
    for(int i=0;i<array_act->size;i++)
    {
        actor * current_actor = array_act->actors[i];
        //printf("\n%i",current_actor->id);
        node * temp = current_actor->movies;
        while (temp)
        {
            node * neigbor = current_actor->movies;
            while (neigbor)
            {
                add_neigbor(temp->movie,neigbor->movie,neigbor->index_film);
                neigbor = neigbor->next;
            }
            temp = temp->next;
        }
        destruct_node(current_actor->movies);
        free(current_actor);
        if( i%100000 == 0)printf("\n%i",i);
    }
    ///########################
    for(int i=0;i<array_mov->size;i++)
    {
        movie * current_movie = &array_mov->movies[i];
        //printf("\n%i: ",current_movie->id);
        node * temp = current_movie->neighbors;
        while (temp)
        {
            //printf("%i ",temp->movie->id);
            temp = temp->next;
        }
        
    }
    destruct_array_actors(array_act);
    destruct_array_movies(array_mov);
    printf("\nSucesso");
    return 1;
}
