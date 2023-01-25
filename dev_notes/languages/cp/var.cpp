// standard is camelCase

#include <iostream> //get user input
#include <string> //work with strings
using namespace std; //using standard namespace, no need to prefix all cpp

int main() / code inside will be executed
{
    string name = "tike"; // string of char. not primitive
    char testGrade = 'A'; // single 8-bit character // single quotes

    short age0 = 10;// atLeast 16-bits signed integer (maybe smaller)
    int age1 = 20; //atLeast 16-bits signed integer (not smaller than 16) 
    // unsigned int age1 = 20; //atLeast 16-bits signed integer (not smaller than 16) 
    long age2 = 30; //atLeast 32-bits signed int
    long long age3 = 40// atLeast -bits signed int

    float gpa0 = 2.5f; // single precision floating point
    double gpa1 = 3.5; // double precision floating point
    long double gpa2 = 3.5; // extended precision floating point

    bool isTall; // 1 bit -> true/false
    isTall = true;

    return 0;
}

