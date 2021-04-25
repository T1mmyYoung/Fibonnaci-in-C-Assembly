#include<math.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>


long fibonacci(long n)
{
	if ( n == 0)
		return 0;
	else if ( n == 1)
		return 1;
	else
		return (fibonacci(n-1) + fibonacci(n-2));
}
//long fibonacci(long n);

int main()
{
	long n = 9;
	long val;

	val = fibonacci(n);
	printf("The value is: %ld", val);

return 0;
}
