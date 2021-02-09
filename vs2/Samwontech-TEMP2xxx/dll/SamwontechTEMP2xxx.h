#include "extcode.h"
#pragma pack(push)
#pragma pack(1)

#ifdef __cplusplus
extern "C" {
#endif

/*!
 * GetAMIRequest
 */
void __cdecl GetAMIRequest(LVBoolean ChecksumUsed, uint8_t Address, 
	char Request[], int32_t *len);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExcursionFreeExecutionSetting(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

#pragma pack(pop)

