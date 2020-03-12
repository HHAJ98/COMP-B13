#include <stdio.h>

int monotonicallyIncreasingWord(char*);

int main(){
	char input[100];
	while(scanf("%s", input) != EOF){
		if(monotonicallyIncreasingWord(input)){
			printf("%s\n", input);
		}
	}
	return 0;
}
