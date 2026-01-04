




#TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

#
# below one line project name need to be lowercaes
#### Module 1
PRJMODULE1  = TestFMode
DEFINES += "TESTFMODE_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Mac/UnrealEditor/Inc/$$PRJMODULE1/UHT
INCLUDEPATH += $$PRJMODULE1 $$PRJMODULE1/Public $$PRJMODULE1/Private
# #### Module 2
# PRJMODULE2  = ActionRPGLoadingScreen
# DEFINES += "ACTIONRPGLOADINGSCREEN_API=__declspec(dllexport)"
# #
# INCLUDEPATH += ../Intermediate/Build/Mac/UnrealEditor/Inc/$$PRJMODULE2/UHT
# INCLUDEPATH += $$PRJMODULE2 $$PRJMODULE2/Public $$PRJMODULE2/Private
# ####


#
# this is true during development with unreal-editor...

DEFINES += "WITH_EDITORONLY_DATA=1"

## this project only
DEFINES += PLATFORM_ANDROID
##

#INCLUDEPATH += ../Plugins/NNEPostProcessing/Source/NNEPostProcessing/Public
# we should follow UE project struct to include files, start from prj.Build.cs folder
#
#  The Thirdparty libs
#
#
#
include(defs.pri)
include(inc.pri)
#
## this project only
## INCLUDEPATH += $$UESRCROOT/Runtime/Renderer/Private
PLUGINSROOT = ../Plugins
#INCLUDEPATH += $$PLUGINSROOT/UIExtension/Source/Public


###
#### Start Plugins1 Module 1 Start
PLUGINNAME1  = $$PLUGINSROOT/FMODStudio
PLUGIN1MODULE1  = FMODAudioLink
DEFINES += "FMODAUDIOLINK_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME1/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGINMODULE1/UHT
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE1
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE1/Public
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE1/Private
########## End Plugins1 Module 1 End
PLUGIN1MODULE2  = FMODAudioLinkEditor
DEFINES += "FMODAUDIOLINKEDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME1/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGIN1MODULE2/UHT
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE2
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE2/Public
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE2/Private
########## End Plugins1 Module 2 End
PLUGIN1MODULE3  = FMODStudio
DEFINES += "FMODSTUDIO_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME1/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGIN1MODULE3/UHT
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3/Public
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3/Public/FMOD
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3/Private
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3/Private/Sequencer
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE3/Classes
########## End Plugins1 Module 3 End
PLUGIN1MODULE4  = FMODStudio
DEFINES += "FMODSTUDIO_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME1/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGIN1MODULE4/UHT
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE4
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE4/Public
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE4/Private
########## End Plugins1 Module 4 End
PLUGIN1MODULE5  = FMODStudioEditor
DEFINES += "FMODSTUDIOEDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME1/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGIN1MODULE5/UHT
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE5
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE5/Public
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE5/Private
INCLUDEPATH += $$PLUGINNAME1/Source/$$PLUGIN1MODULE5/Classes
########## End Plugins1 Module 5 End

#
#### Start Plugins Module 2 Start
PLUGINNAME2  = $$PLUGINSROOT/FMODStudioNiagara
PLUGIN2MODULE1  = FMODStudioNiagara
DEFINES += "FMODSTUDIONIAGARA_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINNAME2/Intermediate/Build/Mac/UnrealEditor/Inc/$$PLUGIN2MODULE1/UHT
INCLUDEPATH += $$PLUGINNAME2/Source/$$PLUGIN2MODULE1
INCLUDEPATH += $$PLUGINNAME2/Source/$$PLUGIN2MODULE1/Public
INCLUDEPATH += $$PLUGINNAME2/Source/$$PLUGIN2MODULE1/Private
########### End Plugins Module 2 End
#







##
#
#

HEADERS += \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLink.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkFactory.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkInputClient.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkSourcePushed.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkSynchronizer.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Public/FMODAudioLinkComponent.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Public/FMODAudioLinkLog.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Public/FMODAudioLinkModule.h \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Public/FMODAudioLinkSettings.h \
    ../Plugins/FMODStudio/Source/FMODAudioLinkEditor/Private/FMODAudioLinkSettingsFactory.h \
    ../Plugins/FMODStudio/Source/FMODAudioLinkEditor/Public/FMODAudioLinkEditorModule.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODAmbientSound.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODAnimNotifyPlay.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODAsset.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODAudioComponent.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODBank.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODBlueprintStatics.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODBus.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODEvent.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODPort.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODSettings.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODSnapshot.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODSnapshotReverb.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Classes/FMODVCA.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAssetLookup.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAssetTable.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODBankLookup.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODFileCallbacks.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODListener.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODPlatform.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODStudioPrivatePCH.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlSection.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlSectionTemplate.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlTrack.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventParameterSectionTemplate.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventParameterTrack.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/FMODCallbackHandler.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod.hpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_codec.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_common.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_dsp.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_dsp_effects.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_errors.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_output.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_studio.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_studio.hpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMOD/fmod_studio_common.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMODCallbackHandler.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMODStudioModule.h \
    ../Plugins/FMODStudio/Source/FMODStudio/Public/FMODUtils.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Classes/FMODAmbientSoundActorFactory.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Classes/FMODAssetBuilder.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Classes/FMODGenerateAssetsCommandlet.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/AssetTypeActions_FMODEvent.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAssetBroker.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAudioComponentDetails.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAudioComponentVisualizer.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODBankUpdateNotifier.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODEventEditor.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODSettingsCustomization.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODStudioEditorPrivatePCH.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODStudioStyle.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/SFMODEventEditorPanel.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODChannelEditors.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODEventControlTrackEditor.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODEventParameterTrackEditor.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODParameterSection.h \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Public/FMODStudioEditorModule.h \
    ../Plugins/FMODStudioNiagara/Source/FMODStudioNiagara/Public/FMODNiagaraEventPlayer.h \
    ../Plugins/FMODStudioNiagara/Source/FMODStudioNiagara/Public/FMODStudioNiagara.h \
    TestFMod/TestFMod.h

SOURCES += \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkComponent.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkFactory.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkInputClient.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkLog.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkSettings.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkSourcePushed.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLink/Private/FMODAudioLinkSynchronizer.cpp \
    ../Plugins/FMODStudio/Source/FMODAudioLinkEditor/Private/FMODAudioLinkSettingsFactory.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAmbientSound.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAnimNotifyPlay.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAsset.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAssetLookup.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAssetTable.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODAudioComponent.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODBank.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODBankLookup.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODBlueprintStatics.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODBus.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODEvent.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODFileCallbacks.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODListener.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODPort.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODSettings.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODSnapshot.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODSnapshotReverb.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODStudioModule.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/FMODVCA.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlSection.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlSectionTemplate.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventControlTrack.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventParameterSectionTemplate.cpp \
    ../Plugins/FMODStudio/Source/FMODStudio/Private/Sequencer/FMODEventParameterTrack.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/AssetTypeActions_FMODEvent.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAmbientSoundActorFactory.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAssetBuilder.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAudioComponentDetails.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODAudioComponentVisualizer.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODBankUpdateNotifier.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODEventEditor.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODGenerateAssetsCommandlet.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODSettingsCustomization.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODStudioEditorModule.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/FMODStudioStyle.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/SFMODEventEditorPanel.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODChannelEditors.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODEventControlTrackEditor.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODEventParameterTrackEditor.cpp \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/Private/Sequencer/FMODParameterSection.cpp \
    ../Plugins/FMODStudioNiagara/Source/FMODStudioNiagara/Private/FMODNiagaraEventPlayer.cpp \
    ../Plugins/FMODStudioNiagara/Source/FMODStudioNiagara/Private/FMODStudioNiagara.cpp \
    TestFMod/TestFMod.cpp

DISTFILES += \
    ../Plugins/FMODStudio/FMODStudio.uplugin \
    ../Plugins/FMODStudio/Source/FMODAudioLink/FMODAudioLink.Build.cs \
    ../Plugins/FMODStudio/Source/FMODAudioLinkEditor/FMODAudioLinkEditor.Build.cs \
    ../Plugins/FMODStudio/Source/FMODStudio/FMODStudio.Build.cs \
    ../Plugins/FMODStudio/Source/FMODStudio/FMODStudioL_APL.xml \
    ../Plugins/FMODStudio/Source/FMODStudio/FMODStudio_APL.xml \
    ../Plugins/FMODStudio/Source/FMODStudioEditor/FMODStudioEditor.Build.cs \
    ../Plugins/FMODStudioNiagara/FMODStudioNiagara.uplugin \
    ../Plugins/FMODStudioNiagara/Source/FMODStudioNiagara/FMODStudioNiagara.Build.cs \
    TestFMod.Target.cs \
    TestFMod/TestFMod.Build.cs \
    TestFModEditor.Target.cs
