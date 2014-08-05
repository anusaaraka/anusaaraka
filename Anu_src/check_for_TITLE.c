//Program written by Roja(05-08-14)
//To check whether <TITLE> present in the input file or not. If not present then adding it.
//RUN: ./check_for_TITLE.out <input-file> <output-file>

#include <stdio.h>

main(int argc, char * argv[])
{
	FILE *fp, *fp1;
	char *line = NULL;
	size_t	len=0;
	
	fp = fopen(argv[1], "r");
	fp1 = fopen(argv[2], "w");

	if(fp == NULL)
		printf("Couldn't open File");
	else
		getline(&line, &len, fp);
		if (line[0] == '<' && line[1] == 'T' && line[2] == 'I' && line[3] == 'T' && line[4] == 'L' && line[5] == 'E' &&  line[6] == '>')		{ //Check whether first line of the file starts with <TITLE>
			fprintf(fp1,"%s", line);  //print the fisrt line
			while(getline(&line, &len, fp)!=-1)
			{
				fprintf(fp1, "%s", line);  //print remaining lines.
			}
		}
		else
		{
			fprintf(fp1, "<TITLE> test. </TITLE>\n<p>\n"); //if not present then adding <TITLE> test. </TITLE>
			fprintf(fp1, "%s", line);
			while(getline(&line, &len, fp)!=-1)
			{
				fprintf(fp1, "%s", line); //print remaining lines.
			}
			fprintf(fp1, "</p>\n");
		}
}
