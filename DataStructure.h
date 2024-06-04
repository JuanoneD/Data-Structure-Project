#include "Structs.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#ifndef DataStructure
#define DataStructure


    typedef struct dynamic_array_actors
    {
        int size;
        int capacity;
        actor * actors;
        
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

        if(!array)
        {
            return;
        }
        if(!array->actors)
        {
            array->capacity = 2;
            array->actors = malloc(array->capacity * sizeof(actor));
        }
        if(array->capacity == array->size)
        {
            array->capacity *= 2;
            actor * temp = realloc(array->actors,array->capacity * sizeof(actor));
            array->actors = temp;
        }
        array->actors[array->size++] = new_actor;
    }

    void destruct_array_actors(array_actors * array)
    {
        for(int i=0; i < array->size;i++)
        {
            destruct_node(array->actors[i].movies);
            free(array->actors[i].name);
        }
        free(array->actors);
        free(array);
    }

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
            array->movies = temp;
        }
        array->movies[array->size++] = new_movie;
    }

    void destruct_array_movies(array_movies * array)
    {
        for(int i = 0;i<array->size;i++)
        {
            destruct_node((*array).movies[i].neighbors);
            free((*array).movies[i].title);
        }
        free(array->movies);
        free(array);
    }



    


#endif // DEBUG