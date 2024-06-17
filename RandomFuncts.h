#include "DataStructure.h"

#ifndef RandomFuncts
#define RandomFuncts

void actor_split_buffer(char * buffer,int *id,char **name,char **movies)
{

    int i = 0;
    char * new_char_id = (char*)malloc(10 * sizeof(char));
    char * new_name = (char*)malloc(100 * sizeof(char));
    char * new_movies = (char*)malloc(100*sizeof(char));

    while (*buffer && *buffer != '\t')
    {
        new_char_id[i++] = *buffer++;
    }
    new_char_id[i] = '\0';
    *id = atoi(new_char_id + 2);
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
    char *new_title = (char*)malloc(100*sizeof(char));
    char *new_char_id = (char*)malloc(10*sizeof(char));
    char *new_type = (char*)malloc(100*sizeof(char));

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

void split_movies(char * movie,int *movie1,int *movie2, int *movie3,int * movie4)
{
    char *new_movie = (char*)malloc(10*sizeof(char));
    int i=0;
    while (*movie && *movie != ',')
    {
        new_movie[i++] = *movie++;
    }
    new_movie[i] = '\0';
    *movie1 = atoi(new_movie+2);
    movie ++;

    i = 0;
    while (*movie && *movie != ',')
    {
        new_movie[i++] = *movie++;
    }
    new_movie[i] = '\0';
    *movie2 = atoi(new_movie+2);
    movie ++;

    i = 0;
    while (*movie && *movie != ',')
    {
        new_movie[i++] = *movie++;
    }
    new_movie[i] = '\0';
    *movie3 = atoi(new_movie+2);
    movie ++;

    i = 0;
    while (*movie && *movie != ',')
    {
        new_movie[i++] = *movie++;
    }
    new_movie[i] = '\0';
    *movie4 = atoi(new_movie+2);
    movie ++;

}

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

void add_neighbor(array_movies * array,int movie_neighbor,int movie_index)
{
    node *newnode = construct_node(movie_index,array->movies[movie_index].id,array->movies[movie_index].title,NULL);

    printf("\n%s add no %s",array->movies[movie_neighbor].title,newnode->name);

    if(!(*array).movies[movie_neighbor].neighbors)
    {
        (*array).movies[movie_neighbor].neighbors = newnode;
        return;
    }
    
    node* current = (*array).movies[movie_neighbor].neighbors;
    while(current->next)
    {
        if(array->movies[movie_index].id == current->id)
        {
            free(newnode);
            return;
        }
        current = current->next;
    }
    current->next = newnode;
}

#endif // !1
