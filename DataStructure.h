#include "Structs.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#ifndef DataStructure
#define DataStructure


    typedef struct Dynamic_array_actors
    {
        int size;
        int capacity;
        Actor * actor;
        
    }array_actors;


    array_actors * construct_array_actors(){

        array_actors * new_array = (array_actors*)malloc(sizeof(array_actors));
        new_array->capacity = 0;
        new_array->size = 0;
        new_array->actor = NULL;
        return new_array;

    }

    void add_array_actors(array_actors * array,Actor actor){

        if(!array)
            return;
        
        if(!array->actor)
        {
            array->capacity ++;
            array->actor = (Actor*) malloc(array->capacity * sizeof(Actor));
        }
        if(array->capacity == array->size)
        {
            array->capacity *= 2;
            realloc(array->actor,array->capacity * sizeof(Actor));
        }
        array->actor[array->size++] = actor;
    }


    


#endif // DEBUG