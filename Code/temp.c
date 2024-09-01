#include "stdio.h"

int main(void)
{
    float b = 2.23f;
    int u = 0x0U;
    const int a = 23U;
    unsigned char i =0;
    i --;
    printf("%u\r\n",u);
    long c  = 20;

    char h[] = {"hello world \r\n"};
    int q[] = {1,3,4,5,6};
    printf("%s\n",h);
    printf("%s\n",q);
    long zi[12] = {1};
    for(int j=0;j<12;j++)
    {
  //      printf("%d\n",zi[j]);
    }
    enum list {in1,in2,in3,in4};
    printf("%d",in4);

    struct able 
    {
        char a,b;
        int c,d;
    };
    struct able here;
    here.a = 'a';
    printf("\n%c",here.a);
    int bi = (float) c>20;
    printf("%d*********************\n",bi);
    printf("hello""sd");
    
    return 0;
    
}    
    
