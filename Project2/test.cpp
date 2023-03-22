#include <iostream>
#include <math.h>
#include <limits>
using namespace std;


bool testBool(){
    return 1 < 2;
}

int main(){
    if(!testBool())
        cout << "True" << endl;
    return 0;
}