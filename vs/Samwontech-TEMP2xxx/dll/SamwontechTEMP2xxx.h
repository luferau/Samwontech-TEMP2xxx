#include "extcode.h"
#pragma pack(push)
#pragma pack(1)

#ifdef __cplusplus
extern "C" {
#endif

/*!
 * GetAMIRequest
 */
void __cdecl GetAMIRequest(LVBoolean checksumUsed, uint8_t address, 
	char request[], int32_t *len);
/*!
 * ParseAMIResponce
 */
int8_t __cdecl ParseAMIResponce(uint8_t Responce[], int32_t responceLength, 
	uint8_t modelName[], int32_t *modelNameLength, uint8_t VersionRevision[], 
	int32_t *versionRevisionLength);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExcursionFreeExecutionSetting(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

#pragma pack(pop)

