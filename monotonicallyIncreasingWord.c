int monotonicallyIncreasingWord (char *word){
    int i;
    for(i = 1; i < 100; i++){
        if(word[i-1] < word[i]) return 0;
    }

    return 1;
}