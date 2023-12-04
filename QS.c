#include <stdio.h>
void swap(int *a, int *b){
    int c = *a;
    *a = *b;
    *b = c;
}
void QS(int *start, int *last){
    int *low = start, *high = last;
    if (low < high){
        while (low < high){
            while (low < last && *low <= *start)
                low++;
            while (high > start && *high >= *start)
                high--;
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
int main(){
    int a[10];
    for (int i = 0; i <10; i++)
        scanf("%d", a + i);
    QS(a, a + 9);
    for (int i = 0; i < 10; i++)
        printf("%d  ", a[i]);
    return 0;
}
