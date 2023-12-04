#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(){
    char *p1 = (char *)malloc(1000000);
    char *p2 = (char *)malloc(1000000);
    gets(p1);
    gets(p2);
    int len1 = strlen(p1), len2 = strlen(p2);
    p1 = (char *)realloc(p1, len1);
    p2 = (char *)realloc(p2, len2);
    char(*p)[len2] = (char(*)[len2])malloc(len1 * len2);
    for (int i = 0; i < len1; i++)
        for (int j = 0; j < len2; j++){
            if (*(p1 + i) == *(p2 + j))
                *(*(p + i) + j) = *(p1 + i);
            else
                *(*(p + i) + j) = '\0';
        }

    int ii, jj, m = 0;
    for (int i = 0; i < len1; i++)
        for (int j = 0; j < len2; j++){                
            if(*(*(p + i) + j) != '\0'){
                int k;
                for (k = 0; i + k < len1 && j + k < len2 && *(*(p + i + k) + j + k) != '\0'; k++);
                if (k > m){
                    m = k;
                    ii = i;
                    jj = j;
                }
            }
        }
    for (int i = 0; i < m; i++)
        printf("%c", *(*(p + ii + i) + jj + i));
    printf("\n");
    return 0;
}
