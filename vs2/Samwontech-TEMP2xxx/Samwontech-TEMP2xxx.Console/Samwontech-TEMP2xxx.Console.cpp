// Samwontech-TEMP2xxx.Console.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include "../dll/SamwontechTEMP2xxx.h"

int main()
{
    std::cout << "AMI request with Address=0x01 with CheckSum\n";

    int address = 0x01;
    int length = 50;
    char* request = new char[length];

    GetAMIRequest(LVBooleanTrue, address, request, &length);

    for (int i = 0; i < length; i++)
        std::cout << std::hex << (int)request[i] << " ";

    std::cout << "\n\n\n";

    system("pause");
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
