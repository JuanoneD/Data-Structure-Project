#ifndef  Structs
#define Structs 
    typedef struct movie movie;
    typedef struct node node;

    struct node
    {
        movie * movie;
        node * next;
    };
    

    struct movie
    {
        int id;
        char * title;
        node * neighbors;

    };

    
    movie construct_movie(int id,char *title,node * next)
    {
        movie new_movie;
        new_movie.id = id;
        new_movie.title = title;
        new_movie.neighbors = next;
        return new_movie;
    }
    

    typedef struct actor
    {
        int id;
        char * name;
        node * movies;

    }actor;

    
    actor construct_actor(int id,char * name,node * movies)
    {
        actor new_actor;
        new_actor.id = id;
        new_actor.name = name;
        new_actor.movies = movies;
        return new_actor;
    }
    

#endif // ! Structs