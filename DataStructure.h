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

    void add_array_actors(array_actors * array,actor new_actor){

        if(!array)
        {
            return;
        }
        if(!array->actors)
        {
            array->capacity ++;
            array->actors = malloc(array->capacity * sizeof(actor));
        }
        if(array->capacity == array->size)
        {
            array->capacity *= 2;
            realloc(array->actors,array->capacity * sizeof(actor));
        }
        array->actors[array->size++] = new_actor;
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

    add_array_movies(array_movies * array,movie new_movie)
    {
        if(!array)
        {
            return;
        }
        if(!array->movies)
        {
            array->capacity ++;
            array->movies = malloc(array->capacity*sizeof(movie));
        }
        if(array->capacity == array->size)
        {
            array->capacity*=2;
            realloc(array->movies,array->capacity*sizeof(movie));
        }
        array->movies[array->size++] = new_movie;
    }


    


#endif // DEBUG