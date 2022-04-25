#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void affiche_vache(char option[]){
	printf("        \\   ^__^\n");
	printf("         \\  (%s)\\_______\n", option);
	printf("            (__)\\       )\\/\\\n");
	printf("                ||----w |\n");
	printf("                ||     ||\n");
}

void taille(int val){
	printf("        \\   ^__^\n");
	printf("         \\  (oo)\\_______\n");
	printf("            (__)\\       )\\/\\");
	for(int i = 0; i < val; i++){
		printf("\\/\\");
	}
	printf("\n");
	printf("                ||----w |\n");
	printf("                ||     ||\n");
}

void troupeau(int nom){
	for(int i = 0; i < nom; i++){
		affiche_vache("oo");
	}
}
int main(int argc, char** argv)
{
  if (argc == 1){
     affiche_vache("oo");
  }
  else if ((argc == 3) && (strcmp(argv[1], "-e") == 0 || strcmp(argv[1], "--eyes") == 0)){
     affiche_vache(argv[2]);
  }
  else if ((argc == 2) && (strcmp(argv[1], "-b") == 0 )){
     affiche_vache("==");
  }
  else if ((argc == 2) && (strcmp(argv[1], "-g") == 0 )){
     affiche_vache("$$");
  }
  else if ((argc == 2) && (strcmp(argv[1], "-p") == 0 )){
     affiche_vache("@@");
  }
  else if ((argc == 2) && (strcmp(argv[1], "-t") == 0 )){
     affiche_vache("--");
  }
  else if ((argc == 3) && (strcmp(argv[1], "--tail") == 0)){
    int x = atoi(argv[2]);
    taille(x);
  }
  else if ((argc == 3) && (strcmp(argv[1], "--herd") == 0)){
    int x = atoi(argv[2]);
    troupeau(x);
  }
}
