void setup() {
    /* shorthands */
    int a = 3;
    int b = 0;

    /* short if statement */
    b = a > 2 ? 3 : 1;
    /* ... is the same as */
    if (a > 2) {
        b = 3;
    } else {
        b = 1;
    }
    
    /* short increment */
    b += 3;
    /* ... is the same as */
    b = b + 3;    

    /* short increment by one */
    b++;
    /* ... is the same as */
    b = b + 1;    
}
