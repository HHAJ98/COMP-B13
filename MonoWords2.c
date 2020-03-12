#include <stdio.h>

int monoWords(char *word){
	char *letter
	for(letter = word +1; *letter; letter++){
		if(*(letter -1) < *letter){
			return 0;
		}
	}
	return 1;
}

int main(){
	char input[100];
	while(scanf("%s", input) != EOF){
		if(monoWords(input)){
			printf("%s" input);
		}
	}
	return 0;
}
