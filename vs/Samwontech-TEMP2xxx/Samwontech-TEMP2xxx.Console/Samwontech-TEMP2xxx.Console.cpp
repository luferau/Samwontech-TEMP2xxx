// Samwontech-TEMP2xxx.Console.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include "../dll/SamwontechTEMP2xxx.h"

bool AMI_Request_Test();
bool AMI_Responce_Test();
bool Check_Responce_Test_Should_be_error();
bool Check_Responce_Test_Should_be_success();
bool SetFixMode_Command_Test();
bool StartStop_Command_Test();
bool SetPoint_Command_Test();
bool CurrentPV_Request_Test();
bool CurrentPV_Responce_Test();

void Passed();
void Failed();

enum class TEMP2500_ERROR_CODE { 
    SUCCESS = -1, 
    OTHER_ERRORS = 0, 
    INVALID_COMMAND_SETTING = 1,
    INVALID_D_REGISTER_SETTING = 2,
    DATA_SETTING_ERROR = 4,
    INVALID_FORMAT_CONFIGURATION = 8,
    CHECKSUM_ERROR = 11,
    MONITORING_COMMAND_ERROR = 12
};

int main()
{
    AMI_Request_Test();
    AMI_Responce_Test();
    Check_Responce_Test_Should_be_error();
    Check_Responce_Test_Should_be_success();
    SetFixMode_Command_Test();
    StartStop_Command_Test();
    SetPoint_Command_Test();
    CurrentPV_Request_Test();
    CurrentPV_Responce_Test();
    
    system("pause");

    return 0;
}

bool AMI_Request_Test()
{
    std::cout << "AMI request test...";

    bool result = true;

    // EXPECTED
    // STX01AMI38\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x41, 0x4d, 0x49, 0x33, 0x38, 0x0d, 0x0a };

    // GET DLL VALUE
    int length = 50;
    unsigned char* request = new unsigned char[length];

    GetAMIRequest(request, &length);

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

    if (result) Passed();
    else Failed();

    return result;
}

bool AMI_Responce_Test()
{
    std::cout << "AMI responce test...";

    bool result = true;

    // MOCK RESPONCE
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

    signed char resultCode = ParseAMIResponce(responce, sizeof(responce), modelName, &modelNameLength, versionRevision, &versionRevisionLength);

    // ASSERT
    if ((resultCode == (signed char)TEMP2500_ERROR_CODE::SUCCESS) && (sizeof(expectedModelName) == modelNameLength) && (sizeof(expectedVersionRevision) == versionRevisionLength))
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

    if (result) Passed();
    else Failed();

    return result;
}

bool Check_Responce_Test_Should_be_error()
{
    std::cout << "Check responce test should be error...";

    bool result = true;

    // MOCK ERROR RESPONCE
    // STX01NG0157\r\n
    unsigned char responce[] = { 0x02, 0x30, 0x31, 0x4E, 0x47, 0x30, 0x31, 0x35, 0x37, 0x0D, 0x0A };

    // EXPECTED
    TEMP2500_ERROR_CODE expectedResultCode = TEMP2500_ERROR_CODE::INVALID_COMMAND_SETTING;

    // GET DLL VALUE
    signed char resultCode = CheckResponce(responce, sizeof(responce));

    // ASSERT
    if (resultCode != (signed char)expectedResultCode) result = false;

    if (result) Passed();
    else Failed();

    return result;
}

bool Check_Responce_Test_Should_be_success()
{
    std::cout << "Check responce test should be success...";

    bool result = true;

    // MOCK SUCCESS RESPONCE
    // STX01WSD,OK15\r\n
    unsigned char responce[] = { 0x02, 0x30, 0x31, 0x57, 0x53, 0x44, 0x2C, 0x4F, 0x4B, 0x31, 0x35, 0x0D, 0x0A };

    // EXPECTED
    TEMP2500_ERROR_CODE expectedResultCode = TEMP2500_ERROR_CODE::SUCCESS;

    // GET DLL VALUE
    signed char resultCode = CheckResponce(responce, sizeof(responce));

    // ASSERT
    if (resultCode != (signed char)expectedResultCode) result = false;

    if (result) Passed();
    else Failed();

    return result;
}

bool SetFixMode_Command_Test()
{
    std::cout << "Set FIX mode command test...";

    bool result = true;

    // EXPECTED
    // STX01WSD,01,0106,0001BC\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x57, 0x53, 0x44, 0x2c, 0x30, 0x31, 0x2c, 0x30, 0x31, 0x30, 0x36, 0x2c, 0x30, 0x30, 0x30, 0x31, 0x42, 0x43, 0x0d, 0x0a };

    // GET DLL VALUE
    int length = 50;
    unsigned char* command = new unsigned char[length];

    GetSetFixModeCommand(command, &length);

    // ASSERT
    if (sizeof(expected) == length)
    {
        for (int i = 0; i < length; i++)
        {
            if (expected[i] != command[i])
            {
                result = false;
                break;
            }
        }
    }
    else result = false;

    if (result) Passed();
    else Failed();

    return result;
}

bool StartStop_Command_Test()
{
    std::cout << "Start/Stop command test...";

    bool result = true;

    // EXPECTED (RUN)
    // STX01WSD,01,0102,0001B8\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x57, 0x53, 0x44, 0x2c, 0x30, 0x31, 0x2c, 0x30, 0x31, 0x30, 0x32, 0x2c, 0x30, 0x30, 0x30, 0x31, 0x42, 0x38, 0x0d, 0x0a };

    // GET DLL VALUE
    int length = 50;
    unsigned char* command = new unsigned char[length];

    GetStartStopCommand(1, command, &length);

    // ASSERT
    if (sizeof(expected) == length)
    {
        for (int i = 0; i < length; i++)
        {
            if (expected[i] != command[i])
            {
                result = false;
                break;
            }
        }
    }
    else result = false;

    if (result) Passed();
    else Failed();

    return result;
}

bool SetPoint_Command_Test()
{
    std::cout << "Set point command test...";

    bool result = true;

    // EXPECTED (Set Point = 25)
    // STX01WSD,01,0104,00FAE0\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x57, 0x53, 0x44, 0x2c, 0x30, 0x31, 0x2c, 0x30, 0x31, 0x30, 0x34, 0x2c, 0x30, 0x30, 0x46, 0x41, 0x45, 0x30, 0x0d, 0x0a };

    // GET DLL VALUE
    int length = 50;
    unsigned char* command = new unsigned char[length];

    GetSetPointCommand(25, command, &length);

    // ASSERT
    if (sizeof(expected) == length)
    {
        for (int i = 0; i < length; i++)
        {
            if (expected[i] != command[i])
            {
                result = false;
                break;
            }
        }
    }
    else result = false;

    if (result) Passed();
    else Failed();

    return result;
}

bool CurrentPV_Request_Test()
{
    std::cout << "Current PV request test...";

    bool result = true;

    // EXPECTED
    // STX01RSD,01,0001C4\r\n
    char expected[] = { 0x02, 0x30, 0x31, 0x52, 0x53, 0x44, 0x2c, 0x30, 0x31, 0x2c, 0x30, 0x30, 0x30, 0x31, 0x43, 0x34, 0x0d, 0x0a };

    // GET DLL VALUE
    int length = 50;
    unsigned char* request = new unsigned char[length];

    GetCurrentPVRequest(request, &length);

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

    if (result) Passed();
    else Failed();

    return result;
}

bool CurrentPV_Responce_Test()
{
    std::cout << "Current PV responce test...";

    bool result = true;

    // MOCK RESPONCE
    // STX01RSD,OK,00FA23\r\n
    unsigned char responce[] = { 0x02, 0x30, 0x31, 0x52, 0x53, 0x44, 0x2c, 0x4f, 0x4b, 0x2c, 0x30, 0x30, 0x46, 0x41, 0x32, 0x33, 0x0D, 0x0A };

    // EXPECTED
    TEMP2500_ERROR_CODE expectedResultCode = TEMP2500_ERROR_CODE::SUCCESS;
    double expectedCurrentPV = 25.0;

    // GET DLL VALUE
    double* currentPV = new double(0.0);

    signed char resultCode = ParseCurrentPVResponce(responce, sizeof(responce), currentPV);

    // ASSERT
    if ((resultCode != (signed char)expectedResultCode) || *currentPV != expectedCurrentPV) result = false;

    if (result) Passed();
    else Failed();

    return result;
}

void Passed()
{
    std::cout << "\033[32mPASSED\033[0m\n";
}

void Failed()
{
    std::cout << "\033[31mFAILED\033[0m\n";
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
