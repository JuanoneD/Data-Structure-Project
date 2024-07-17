#include <stdlib.h>
#include <string.h>

#ifndef  Structs
#define Structs 
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
        node *temp = current;
        while(temp)
        {
            temp = current->next;
            free(current);
            current = temp;
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
    

#endif // ! Structs