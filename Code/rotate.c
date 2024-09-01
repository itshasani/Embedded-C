#include "stdio.h"

void rotate(unsigned int data , unsigned int n);
int main (void)
{
    unsigned int n,data;
    
    printf("enter the number \r\n");
    
    
    scanf("%x", &data);
    printf("enter times : \r\n");
    scanf("%d", &n);
    rotate(data, n);
    return 0;
}
void rotate (unsigned int data,unsigned int n)
{
    int i;
    unsigned int LSB;
    for (i = 0;i<n;i++)
    {
        LSB = data & 0x80000000;
        data = (data << 1) | LSB;
    }
    printf("the data after n times rotate is : %x",data);
}