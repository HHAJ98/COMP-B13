int monotonicallyIncreasingWord(char *word){
	char *letter;
	for(letter = word +1; *letter; letter++){
		if(*(letter -1) > *letter){
			return 0;
		}
	}
	return 1;
}