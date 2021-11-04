%%
[a-zA-Z][a-zA-Z0-9]* {printf("<%s>",yytext);}
\n {printf("\n");}
. {printf("");}
%%

int main(int argc, char **argv)
{
    if(argc>1)
    {
        FILE *fic;
        fic = fopen(argv[1],"r");
    
    if(!fic)
        {
            fprintf(stderr,"impossible d'ouvrir %s\n",argv[1]);
            exit(-1);
        }
        yyin = fic;
    }
    else
    {
        yyin = stdin; 
    }
    yylex();
    return 0;
}