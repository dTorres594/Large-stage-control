<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">20.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Config" Type="Folder">
			<Item Name="config.ini" Type="Document" URL="../config/config.ini"/>
		</Item>
		<Item Name="Custom controls" Type="Folder">
			<Item Name="Accept button.ctl" Type="VI" URL="../Support/Accept button.ctl"/>
			<Item Name="Cancel button.ctl" Type="VI" URL="../Support/Cancel button.ctl"/>
			<Item Name="Configure button.ctl" Type="VI" URL="../Support/Configure button.ctl"/>
			<Item Name="Exit button.ctl" Type="VI" URL="../Support/Exit button.ctl"/>
			<Item Name="Home button.ctl" Type="VI" URL="../Support/Home button.ctl"/>
			<Item Name="Motor move data.ctl" Type="VI" URL="../Libraries/GUI/Support/Motor move data.ctl"/>
			<Item Name="Move motor.ctl" Type="VI" URL="../Support/Move motor.ctl"/>
			<Item Name="Stop button.ctl" Type="VI" URL="../Support/Stop button.ctl"/>
		</Item>
		<Item Name="DQMH Modules" Type="Folder">
			<Item Name="Configuration.lvlib" Type="Library" URL="../Libraries/Configuration/Configuration.lvlib"/>
			<Item Name="GUI.lvlib" Type="Library" URL="../Libraries/GUI/GUI.lvlib"/>
			<Item Name="NI DAQ.lvlib" Type="Library" URL="../Libraries/NI DAQ/NI DAQ.lvlib"/>
			<Item Name="TDS1002 Oscilloscope.lvlib" Type="Library" URL="../Libraries/TDS1002 Oscilloscope/TDS1002 Oscilloscope.lvlib"/>
		</Item>
		<Item Name="Libraries" Type="Folder">
			<Item Name="Control de MaP.lvlib" Type="Library" URL="../Libraries/Control de MaP/Control de MaP.lvlib"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Configure DAQ channel.vi" Type="VI" URL="../Support/Configure DAQ channel.vi"/>
			<Item Name="Example States.ctl" Type="VI" URL="../Support/Example States.ctl"/>
			<Item Name="Program data--cluster.ctl" Type="VI" URL="../Support/Program data--cluster.ctl"/>
		</Item>
		<Item Name="Testers" Type="Folder">
			<Item Name="Test Configuration API.vi" Type="VI" URL="../Libraries/Configuration/Test Configuration API.vi"/>
			<Item Name="Test GUI API.vi" Type="VI" URL="../Libraries/GUI/Test GUI API.vi"/>
			<Item Name="Test NI DAQ API.vi" Type="VI" URL="../Libraries/NI DAQ/Test NI DAQ API.vi"/>
			<Item Name="Test TDS1002 Oscilloscope API.vi" Type="VI" URL="../Libraries/TDS1002 Oscilloscope/Test TDS1002 Oscilloscope API.vi"/>
		</Item>
		<Item Name="Main MSP.vi" Type="VI" URL="../Main MSP.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Large stage app" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{4B52CB40-1C8D-48AD-AB2B-A0E1349FA582}</Property>
				<Property Name="App_INI_GUID" Type="Str">{6B0EA98A-7E51-439B-83A5-7AB3378D1516}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{6DA37D10-1A68-4E1D-9331-4A192C5BBFDB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Large stage app</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Large stage/Large stage app</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F8750C02-F9A3-4D5E-B73C-1D99C1F64DFA}</Property>
				<Property Name="Bld_version.build" Type="Int">12</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Large stage controller.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Large stage/Large stage app/Large stage controller.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Large stage/Large stage app/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Config</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/Large stage/Large stage app/config</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{8B5F72C3-12A1-45DE-989F-BFFD36600233}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/DQMH Modules/GUI.lvlib/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Config</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Large stage app</Property>
				<Property Name="TgtF_internalName" Type="Str">Large stage app</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2023 Centro de Investigaciones en Optica</Property>
				<Property Name="TgtF_productName" Type="Str">Large stage app</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B838E094-38F0-4310-9E07-D69D32935483}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Large stage controller.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Large stage installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Large stage controller</Property>
				<Property Name="Destination[0].parent" Type="Str">{7C5E53B9-0CC8-49B4-8873-46C4C66A2706}</Property>
				<Property Name="Destination[0].tag" Type="Str">{548E2480-DAB3-4951-AE0C-B9D6036618D6}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{CB6C2533-4926-42B8-AC21-04BB9679F818}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 20.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{61DA2A53-6B57-448F-882D-E9E5046052E1}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime 21.0</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{F12C6F92-5B1C-4EAB-9364-96026CE1920D}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-Serial Runtime 20.0</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{01D82F43-B48D-46FF-8601-FC4FAAE20F41}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{944CC86F-BDFB-4850-878C-370B9A7FF12C}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI-VISA Runtime 20.0</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str"></Property>
				<Property Name="DistPart[4].productID" Type="Str"></Property>
				<Property Name="DistPart[4].productName" Type="Str">NI LabVIEW Run-Time Engine 2020</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{D84FC73F-D1E0-4C05-A30C-DB882CD1ABD8}</Property>
				<Property Name="DistPartCount" Type="Int">5</Property>
				<Property Name="INST_author" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Large stage/Large stage installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Large stage installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{7C5E53B9-0CC8-49B4-8873-46C4C66A2706}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">Large stage controller</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.8</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">20000000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{7BB66DDB-7D09-415F-9C7F-A80CC0650E38}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{DC926C0C-3CE9-45D1-B230-EC1D30826715}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{7C5E53B9-0CC8-49B4-8873-46C4C66A2706}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{7C5E53B9-0CC8-49B4-8873-46C4C66A2706}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Large stage controller.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Large stage controller</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">Large stage controller</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str">Large stage controller</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{B838E094-38F0-4310-9E07-D69D32935483}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Large stage app</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Large stage app</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
			<Item Name="Small stage app" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{129D8F25-C898-4745-AF6E-FEA1F92E664A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EF0A6A5A-9267-4666-8F13-DFF64E2BCDBB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E99027C8-49F5-4CA2-9CA7-D7B3D2852C89}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Small stage app</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/Small stage/Small stage app</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{98F1F336-A782-4A9F-ACF9-9B757BCECD72}</Property>
				<Property Name="Bld_version.build" Type="Int">7</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Small stage.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/Small stage/Small stage app/Small stage.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/Small stage/Small stage app/data</Property>
				<Property Name="Destination[2].destName" Type="Str">3rd party</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/Small stage/Small stage app/3rd party</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{56FAC346-B581-49A8-BD87-099F8070EF42}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main MSP.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Libraries/Control de MaP.lvlib/3rd-party</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Small stage app</Property>
				<Property Name="TgtF_internalName" Type="Str">Small stage app</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2023 Centro de Investigaciones en Optica</Property>
				<Property Name="TgtF_productName" Type="Str">Small stage app</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F23C0761-2234-484A-A396-C377239823BA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Small stage.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Small stage installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Small stage controller</Property>
				<Property Name="Destination[0].parent" Type="Str">{7C5E53B9-0CC8-49B4-8873-46C4C66A2706}</Property>
				<Property Name="Destination[0].tag" Type="Str">{DB31BB15-4458-419E-AD46-544C3511837F}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{CB6C2533-4926-42B8-AC21-04BB9679F818}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 20.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{61DA2A53-6B57-448F-882D-E9E5046052E1}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime 21.0</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{F12C6F92-5B1C-4EAB-9364-96026CE1920D}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-Serial Runtime 20.0</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{01D82F43-B48D-46FF-8601-FC4FAAE20F41}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{944CC86F-BDFB-4850-878C-370B9A7FF12C}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI-VISA Runtime 20.0</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str"></Property>
				<Property Name="DistPart[4].productID" Type="Str"></Property>
				<Property Name="DistPart[4].productName" Type="Str">NI LabVIEW Run-Time Engine 2020</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{D84FC73F-D1E0-4C05-A30C-DB882CD1ABD8}</Property>
				<Property Name="DistPartCount" Type="Int">5</Property>
				<Property Name="INST_author" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Small stage/Small stage installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Small stage installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{DB31BB15-4458-419E-AD46-544C3511837F}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">Small stage controller</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.6</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">20000000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Centro de Investigaciones en Optica</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{0FEBAC7F-6503-429E-82E0-BC49DCCA6F8C}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{6EE26FD0-2335-4820-9108-3797DD86DE8E}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{DB31BB15-4458-419E-AD46-544C3511837F}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{DB31BB15-4458-419E-AD46-544C3511837F}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">Small stage.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">2</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">Small stage</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">Small stage controller</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{F23C0761-2234-484A-A396-C377239823BA}</Property>
				<Property Name="Source[0].File[1].dest" Type="Str">{DB31BB15-4458-419E-AD46-544C3511837F}</Property>
				<Property Name="Source[0].File[1].name" Type="Str">DPInst64.exe</Property>
				<Property Name="Source[0].File[1].runEXE" Type="Bool">true</Property>
				<Property Name="Source[0].File[1].tag" Type="Ref">/My Computer/Libraries/Control de MaP.lvlib/3rd-party/MSP driver/DPInst64.exe</Property>
				<Property Name="Source[0].FileCount" Type="Int">2</Property>
				<Property Name="Source[0].name" Type="Str">Small stage app</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Small stage app</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
