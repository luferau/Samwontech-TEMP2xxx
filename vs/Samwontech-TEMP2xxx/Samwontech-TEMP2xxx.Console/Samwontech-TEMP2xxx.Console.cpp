#include "pch.h"
#include "../dll/SamwontechTEMP2xxx.h"

using namespace System;

int main(array<System::String ^> ^args)
{
    Console::WriteLine("AMI request with Address=0x01 with CheckSum");

    int address = 0x01;
    int length = 50;
    char* request = new char[length];
    
    GetAMIRequest(LVBooleanTrue, address, request, &length);

    for (int i = 0; i < length; i++)
    {
        Console::Write(String::Format("0x{0:X} ", request[i]));
    }

    Console::ReadLine();

    return 0;
}
