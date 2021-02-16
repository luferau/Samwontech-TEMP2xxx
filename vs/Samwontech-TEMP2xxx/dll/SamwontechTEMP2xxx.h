#include "extcode.h"
#pragma pack(push)
#pragma pack(1)

#ifdef __cplusplus
extern "C" {
#endif

/*!
 * GetAMIRequest
 */
void __cdecl GetAMIRequest(uint8_t request[], int32_t *length);
/*!
 * ParseAMIResponce
 */
int8_t __cdecl ParseAMIResponce(uint8_t Responce[], int32_t responceLength, 
	uint8_t modelName[], int32_t *modelNameLength, uint8_t VersionRevision[], 
	int32_t *versionRevisionLength);
/*!
 * GetSetFixModeCommand
 */
void __cdecl GetSetFixModeCommand(uint8_t command[], int32_t *length);
/*!
 * CheckResponce
 */
int8_t __cdecl CheckResponce(uint8_t Responce[], int32_t length);
/*!
 * GetStartStopCommand
 */
void __cdecl GetStartStopCommand(LVBoolean runChamber, uint8_t command[], 
	int32_t *length);
/*!
 * GetSetPointCommand
 */
void __cdecl GetSetPointCommand(double setPoint, uint8_t command[], 
	int32_t *length);
/*!
 * GetCurrentPVRequest
 */
void __cdecl GetCurrentPVRequest(uint8_t request[], int32_t *length);
/*!
 * ParseCurrentPVResponce
 */
int8_t __cdecl ParseCurrentPVResponce(uint8_t responce[], int32_t length, 
	double *currentPV);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExcursionFreeExecutionSetting(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

#pragma pack(pop)

