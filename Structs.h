#ifndef  Structs
#define Structs 
    typedef struct Movie Movie;

    struct Movie
    {
        int id;
        char * title;
        Movie * next;

    };
    
    Movie construct_movie(int id,char *title,Movie * next)
    {
        Movie new_movie;
        new_movie.id = id;
        new_movie.title = title;
        new_movie.next = next;
        return new_movie;
    }
    

    typedef struct Actor
    {
        int id;
        char * name;
        Movie * movies;

    }Actor;

    
    Actor construct_actor(int id,char * name,Movie * movies)
    {
        Actor new_actor;
        new_actor.id = id;
        new_actor.name = name;
        new_actor.movies = movies;
        return new_actor;
    }
    

#endif // ! Structs