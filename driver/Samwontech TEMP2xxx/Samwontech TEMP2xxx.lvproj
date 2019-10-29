﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Name="Template - Generic.lvproj" Type="Project" LVVersion="17008000" URL="/&lt;instrlib&gt;/_Template - Generic/Template - Generic.lvproj">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Project.Description" Type="Str">This project is used by developers to edit API and example files for LabVIEW Plug and Play instrument drivers.</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Samwontech TEMP2xxx.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Samwontech TEMP2xxx/Samwontech TEMP2xxx.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="RSD Command Send.vi" Type="VI" URL="/&lt;instrlib&gt;/Samwontech TEMP2xxx/Public/Data/RSD Command Send.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
