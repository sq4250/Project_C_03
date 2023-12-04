#include <stdio.h>
#define N 5
typedef struct stu{
    long long int Stu_id;
    float Score[5];
} STU;
void QS(STU **, STU **);
int main(){
    STU boy[N], *p[N];
    char Header[7][11] = {"Ranking",
                          "Stu_id",
                          "Math",
                          "English",
                          "Compute",
                          "Total",
                          "Average"};
    for (int i = 0; i < N; i++){
        p[i] = boy + i;
        p[i]->Score[3] = 0;
        printf("%s_%d:", Header[1], i + 1);
        scanf("%lld", &p[i]->Stu_id);
        for (int j = 0; j < 3; j++){
            printf("%s_%d:", Header[j + 2], i + 1);
            scanf("%f", p[i]->Score + j);
        }
    }
    for (int i = 0; i < N; i++){
        for (int j = 0; j < 3; j++)
            p[i]->Score[3] += p[i]->Score[j];
        p[i]->Score[4] = p[i]->Score[3] / 3;
    }
    QS(p, p + N - 1);
    for (int i = 0; i < 7; i++)
        printf("%s\t", Header[i]);
    printf("\n");
    for (int i = 0; i < N; i++){
        printf("No.%d\t%lld\t", i + 1, p[i]->Stu_id);
        for (int j = 0; j < 5; j++)
            printf("%.1f\t", p[i]->Score[j]);
        printf("\n");
    }
    return 0;
}
void swap(STU **a, STU **b){
    STU *c = *a;
    *a = *b;
    *b = c;
}
void QS(STU **start, STU **last){
    STU **low = start, **high = last;
    if (low < high){
        while (low < high){
            while (start < high && (*high)->Score[3] <= (*start)->Score[3])
                high--;
            while (low < last && (*low)->Score[3] >= (*start)->Score[3])
                low++;
            if (low < high)
                swap(low, high);
            else
                break;
        }
        swap(start, high);
        QS(start, high - 1);
        QS(high + 1, last);
    }
}
