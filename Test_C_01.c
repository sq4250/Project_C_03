#include <stdio.h>
int i = 0;
void move(char A, char C, int n){
    i++;
    printf("Move the No.%d disk from %c--->%c   %dtimes\n", n, A, C, i);
}
void HanoiTower(char A, char B, char C, int n){
    if (n == 1){
        move(A, C, n);
    }
    else{
        HanoiTower(A, C, B, n - 1);
        move(A, C, n);
        HanoiTower(B, A, C, n - 1);
    }
}
int main(){
    int n = 0;
    printf("Input the number of disks in A:");
    scanf("%d", &n);
    HanoiTower('A', 'B', 'C', n);
    return 0;
}
