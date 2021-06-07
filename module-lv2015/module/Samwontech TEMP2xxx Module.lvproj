<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Test" Type="Folder">
			<Item Name="CRCTest.vi" Type="VI" URL="../Test/CRCTest.vi"/>
			<Item Name="GetNumeric.vi" Type="VI" URL="../Test/GetNumeric.vi"/>
			<Item Name="GetString.vi" Type="VI" URL="../Test/GetString.vi"/>
			<Item Name="ParseTest.vi" Type="VI" URL="../Test/ParseTest.vi"/>
			<Item Name="SetStringGetLength.vi" Type="VI" URL="../Test/SetStringGetLength.vi"/>
		</Item>
		<Item Name="GetAMIRequest.vi" Type="VI" URL="../GetAMIRequest.vi"/>
		<Item Name="ParseAMIResponce.vi" Type="VI" URL="../ParseAMIResponce.vi"/>
		<Item Name="CheckResponce.vi" Type="VI" URL="../CheckResponce.vi"/>
		<Item Name="GetSetFixModeCommand.vi" Type="VI" URL="../GetSetFixModeCommand.vi"/>
		<Item Name="GetStartStopCommand.vi" Type="VI" URL="../GetStartStopCommand.vi"/>
		<Item Name="GetSetPointCommand.vi" Type="VI" URL="../GetSetPointCommand.vi"/>
		<Item Name="GetCurrentPVRequest.vi" Type="VI" URL="../GetCurrentPVRequest.vi"/>
		<Item Name="ParseCurrentPVResponce.vi" Type="VI" URL="../ParseCurrentPVResponce.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Samwontech TEMP2xxx.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Samwontech TEMP2xxx/Samwontech TEMP2xxx.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Samwontech TEMP2xxx Module" Type="DLL">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CB03E712-8BAA-4F85-B3FB-3BA6E6807CFC}</Property>
				<Property Name="App_INI_GUID" Type="Str">{65134CAE-EB11-4DBB-BE0F-A240198D872D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{475CBB11-3B16-40FE-8597-093A1CD29288}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Samwontech TEMP2xxx Module</Property>
				<Property Name="Bld_compilerOptLevel" Type="Int">0</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{6222FFC1-9F56-4336-AACD-5867A4E90AAF}</Property>
				<Property Name="Bld_version.build" Type="Int">45</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SamwontechTEMP2xxx.dll</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/SamwontechTEMP2xxx.dll</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Dll_compatibilityWith2011" Type="Bool">false</Property>
				<Property Name="Dll_delayOSMsg" Type="Bool">true</Property>
				<Property Name="Dll_headerGUID" Type="Str">{CE11BFEC-E70B-4CE0-A2A7-429477FA0C51}</Property>
				<Property Name="Dll_includeHeaders" Type="Bool">true</Property>
				<Property Name="Dll_libGUID" Type="Str">{E54D1B40-26C6-44C6-A1B6-615E2C6F357E}</Property>
				<Property Name="Source[0].itemID" Type="Str">{CB52EEA6-AA5B-413B-B109-2F95CDEEE114}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">2</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">request</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]Name" Type="Str">GetAMIRequest</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!1!"!!!!!5!"1!!&amp;%"!!!(`````!!%(5G6R&gt;76T&gt;!"5!0!!$!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!)!!(A!!!!!!!!!!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
				<Property Name="Source[1].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/GetAMIRequest.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">2</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">request</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]Name" Type="Str">GetCurrentPVRequest</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!1!"!!!!!5!"1!!&amp;%"!!!(`````!!%(5G6R&gt;76T&gt;!"5!0!!$!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!)!!(A!!!!!!!!!!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
				<Property Name="Source[10].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/GetCurrentPVRequest.vi</Property>
				<Property Name="Source[10].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[10].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">responce</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]CallingConv" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]Name" Type="Str">ParseCurrentPVResponce</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">currentPV</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!9!"!!!!"&amp;!#A!+1X6S=G6O&gt;#"16A!!%5!"!!J&amp;=H*P=C"$&lt;W2F!!!&amp;!!5!!":!1!!"`````Q!$#&amp;*F=X"P&lt;G.F!!"5!0!!$!!!!!!!!1!#!!!!!!!!!!!!!!!!!!!!"!-!!(A!!!!!!!!!!!!!#1!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#!!!!!!"!!5</Property>
				<Property Name="Source[11].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">4</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/ParseCurrentPVResponce.vi</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[11].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Test/GetNumeric.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">responce</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">responceLength</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">4</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">4</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">modelName</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoName" Type="Str">modelNameLength</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoLenInput" Type="Int">6</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoLenOutput" Type="Int">6</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoName" Type="Str">versionRevision</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]CallingConv" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]Name" Type="Str">ParseAMIResponce</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoName" Type="Str">versionRevisionLength</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!=!"!!!!!5!"1!!(E"!!!(`````!!%16G6S=WFP&lt;CV3:8:J=WFP&lt;A!!'%"!!!(`````!!%+47^E:7QA4G&amp;N:1!!%5!"!!N3:8.V&lt;(1A1W^E:1!71%!!!@````]!!1B3:8.Q&lt;WZD:1!!6!$Q!!Q!!!!#!!-!"!!!!!!!!!!!!!!!!!!!!!5#!!"Y!!!!!!!!#1!!!!E!!!!*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!A!!!!!!1!'</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">7</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/ParseAMIResponce.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Test/SetStringGetLength.vi</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Test/CRCTest.vi</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">2</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">command</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]Name" Type="Str">GetSetFixModeCommand</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!1!"!!!!!5!"1!!&amp;%"!!!(`````!!%(1W^N&lt;7&amp;O:!"5!0!!$!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!!-!!(A!!!!!!!!!!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"!!-</Property>
				<Property Name="Source[6].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/GetSetFixModeCommand.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">responce</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]CallingConv" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]Name" Type="Str">CheckResponce</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!5!"!!!!"&amp;!!1!+28*S&lt;X)A1W^E:1!!"1!&amp;!!!71%!!!@````]!!AB3:8.Q&lt;WZD:1!!6!$Q!!Q!!!!!!!!!!1!!!!!!!!!!!!!!!!!!!!-#!!"Y!!!!!!!!!!!!!!!!!!!*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!A!!!!!!1!%</Property>
				<Property Name="Source[7].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">3</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/CheckResponce.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">runChamber</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">3</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">3</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">command</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]CallingConv" Type="Int">1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]Name" Type="Str">GetStartStopCommand</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!5!"!!!!!5!"1!!&amp;%"!!!(`````!!%(1W^N&lt;7&amp;O:!!11#%,5H6O)%.I97VC:8)!6!$Q!!Q!!!!!!!!!!A!!!!!!!!!!!!!!!!!!!!-$!!"Y!!!!!!!!!!!!!!!!!!!*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!A!!!!!!1!%</Property>
				<Property Name="Source[8].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">4</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/GetStartStopCommand.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">11</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">setPoint</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">3</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">3</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">command</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]CallingConv" Type="Int">1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]Name" Type="Str">GetSetPointCommand</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">length</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfoCPTM" Type="Bin">&amp;Q#!!!!!!!5!"!!!!!5!"1!!&amp;%"!!!(`````!!%(1W^N&lt;7&amp;O:!!01!I!#6.F&gt;#"1&lt;WFO&gt;!"5!0!!$!!!!!!!!!!#!!!!!!!!!!!!!!!!!!!!!Q-!!(A!!!!!!!!!!!!!!!!!!!E!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#A!!!!!"!!1</Property>
				<Property Name="Source[9].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">4</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/GetSetPointCommand.vi</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">ExportedVI</Property>
				<Property Name="SourceCount" Type="Int">12</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Samwontech TEMP2xxx Module</Property>
				<Property Name="TgtF_internalName" Type="Str">Samwontech TEMP2xxx Module</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 </Property>
				<Property Name="TgtF_productName" Type="Str">Samwontech TEMP2xxx Module</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{974768F0-EDF2-4B03-9E1A-15049F7CAFEC}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SamwontechTEMP2xxx.dll</Property>
			</Item>
		</Item>
	</Item>
</Project>
