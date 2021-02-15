// Samwontech-TEMP2xxx.Console.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include "../dll/SamwontechTEMP2xxx.h"

bool AMI_Request_Test();
bool AMI_Responce_Test();

int main()
{
    AMI_Request_Test();
    AMI_Responce_Test();

    system("pause");
}

bool AMI_Request_Test()
{
    std::cout << "AMI request test...";

    bool result = true;

    // EXPECTED
    // STX01AMI38\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x41, 0x4d, 0x49, 0x33, 0x38, 0x0d, 0x0a };

    // GET DLL VALUE
    int address = 0x01;
    int length = 50;
    char* request = new char[length];

    GetAMIRequest(LVBooleanTrue, address, request, &length);

    // ASSERT
    if (sizeof(expected) == length)
    {
        for (int i = 0; i < length; i++)
        {
            if (expected[i] != request[i])
            {
                result = false;
                break;
            }
        }
    }
    else result = false;

    if (result)
        std::cout << "PASSED\n";
    else
        std::cout << "FAILED\n";

    return result;
}

bool AMI_Responce_Test()
{
    std::cout << "AMI responce test...";

    bool result = true;

    // RESPONCE
    // STX01AMI,OK,TEMP-2000  V00-R0024\r\n
    unsigned char responce[] = { 0x02, 0x30, 0x31, 0x41, 0x4D, 0x49, 0x2C, 0x4F, 0x4B, 0x2C, 0x54, 0x45, 0x4D, 0x50, 0x2D, 0x32, 0x30, 0x30, 0x30, 0x20, 0x20, 0x56, 0x30, 0x30, 0x2D, 0x52, 0x30, 0x30, 0x32, 0x34, 0x0D, 0x0A };

    // EXPECTED
    char expectedModelName[] = { 0x54, 0x45, 0x4D, 0x50, 0x2D, 0x32, 0x30, 0x30, 0x30 }; // TEMP-2000
    char expectedVersionRevision[] = { 0x56, 0x30, 0x30, 0x2D, 0x52, 0x30, 0x30 }; // V00-R00

    // GET DLL VALUE
    int modelNameLength = 50;
    unsigned char* modelName = new unsigned char[modelNameLength];

    int versionRevisionLength = 50;
    unsigned char* versionRevision = new unsigned char[versionRevisionLength];

    int8_t resultCode = ParseAMIResponce(responce, sizeof(responce), modelName, &modelNameLength, versionRevision, &versionRevisionLength);

    // ASSERT
    if ((sizeof(expectedModelName) == modelNameLength) && (sizeof(expectedVersionRevision) == versionRevisionLength))
    {
        for (int i = 0; i < modelNameLength; i++)
        {
            if (expectedModelName[i] != modelName[i])
            {
                result = false;
                break;
            }
        }

        if (result)
        {
            for (int i = 0; i < versionRevisionLength; i++)
            {
                if (expectedVersionRevision[i] != versionRevision[i])
                {
                    result = false;
                    break;
                }
            }
        }
    }
    else result = false;

    if (result)
        std::cout << "PASSED\n";
    else
        std::cout << "FAILED\n";

    return result;
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
