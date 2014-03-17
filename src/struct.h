
struct s_option {
    char logdir[BUFSIZ];
    char defshell[BUFSIZ];
    char fdl;
    int priority;
    int facility;
    int clearenvironment;
    char argallow[BUFSIZ];
    int permissive;
};

typedef struct s_option option;
