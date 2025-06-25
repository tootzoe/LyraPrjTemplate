




#TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


#
# below one line project name need to be lowercaes
#### Module 1
PRJMODULE1  = Titan
DEFINES += "TITAN_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE1/UHT
INCLUDEPATH += $$PRJMODULE1 $$PRJMODULE1/Public $$PRJMODULE1/Private
#### Module 2
PRJMODULE2  = TitanEditor
DEFINES += "TITANEDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE2/UHT
INCLUDEPATH += $$PRJMODULE2 $$PRJMODULE2/Public $$PRJMODULE2/Private
####


#QMAKE_LFLAGS += -s
#QMAKE_CXXFLAGS += "-std=c++11"
#message($$system(date -I))
#TOOTBDATE = '\\"$$system(date -I\'minute\')\\"'
#DEFINES += TOOTBUILDDATE=\"$${TOOTBDATE}\"


#
# this is true during development with unreal-editor...

DEFINES += "WITH_EDITORONLY_DATA=1"

## this project only
#DEFINES += PLATFORM_ANDROID
##

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

##
#### PLUGINSROOT 1
PLUGINSROOT = ../Plugins
###
###
#### Start Plugins Module 1 Start
PLUGINNAME1  = PhotoAlbum
PLUGINMODULE1  = PhotoAlbum
DEFINES += "PHOTOALBUM_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE1/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1/Private
########## End Plugins Module 1 End
#
#### Start Plugins Module 2 Start
#PLUGINNAME2  = TitanAbilities
PLUGINMODULE2  = TitanAbilities
DEFINES += "TitanAbilities_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE2/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Private
########### End Plugins Module 2 End
#
#### Start Plugins Module 3 Start
#PLUGINNAME3  = TitanCamera
PLUGINMODULE3  = TitanCamera
DEFINES += "TITANCAMERA_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE3/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Private
########### End Plugins Module 3 End
#
#### Start Plugins Module 4 Start
PLUGINNAME4  = TitanFramework
PLUGINMODULE4  = TitanFramework
DEFINES += "TITANFRAMEWORK_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE4/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Private
########## End Plugins Module 4 End
#
#### Start Plugins Module 5 Start
PLUGINNAME5  = TitanMovement
PLUGINMODULE5  = TitanMovement
DEFINES += "TITANMOVEMENT_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE5/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Private
########### End Plugins Module 5 End
#
#### Start Plugins Module 6 Start
PLUGINNAME6  = TitanRaft
PLUGINMODULE6  = TitanRaft
DEFINES += "TITANRAFT_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE6/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Private
########## End Plugins Module 6 End
#
#### Start Plugins Module 7 Start
PLUGINNAME7  = TitanUI
PLUGINMODULE7  = TitanUI
DEFINES += "TITANUI_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE7/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Private
########### End Plugins Module 7 End
# #
# #### Start Plugins Module 8 Start
# PLUGINNAME8  = TitanFramework
# PLUGINMODULE8  = LyraExtTool
# DEFINES += "LYRAEXTTOOL_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE8/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8/Private
# ########### End Plugins Module 8 End
# #
# #### Start Plugins Module 9 Start
# PLUGINMODULE9  = ModularGameplayActors
# DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE9/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9/Private
# ########### End Plugins Module 9 End
# #
# #### Start Plugins Module 10 Start
# PLUGINMODULE10  = PocketWorlds
# DEFINES += "POCKETWORLDS_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE10/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10/Private
# ########### End Plugins Module 10 End
# #
# #### Start Plugins Module 11 Start
# PLUGINMODULE11  = UIExtension
# DEFINES += "UIEXTENSION_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE11/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source/Private
# ########### End Plugins Module 11 End
# ##
# #### PLUGINSROOT 2
# PLUGINSROOT2 = $$PLUGINSROOT/GameFeatures
# ###
# ###
# #
# #### Start Plugins Module 12 Start
# PLUGINNAME12  = HoverDrone
# PLUGINMODULE12  = HoverDrone
# DEFINES += "HOVERDRONE_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE12/UHT
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Public
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Private
# ########### End Plugins Module 12 End
##
# #
# #### Start Plugins Module 13 Start
# PLUGINNAME13  = ShooterTests
# PLUGINMODULE13  = ShooterTestsRuntime
# DEFINES += "SHOOTERTESTSRUNTIME_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE13/UHT
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13/Public
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13/Private
# ########### End Plugins Module 13 End
# ##
# #
# #### Start Plugins Module 14 Start
# PLUGINNAME14  = TopDownArena
# PLUGINMODULE14  = TopDownArenaRuntime
# DEFINES += "TOPDOWNARENARUNTIME_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE14/UHT
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14/Public
# INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14/Private
# ########### End Plugins Module 14 End
# ##
# ##
#### PLUGINSROOT 3
# PLUGINSROOT3 = $$PLUGINSROOT/Systems
# ###
# #
# #### Start Plugins Module 15 Start
# PLUGINNAME15  = Crossfader
# PLUGINMODULE15  = Crossfader
# DEFINES += "CROSSFADER_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE15/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15/Private
# ########### End Plugins Module 15 End
# ##
# #
# #### Start Plugins Module 16 Start
# PLUGINNAME16  = Crossfader
# PLUGINMODULE16  = CrossfaderEditor
# DEFINES += "CROSSFADEREDITOR_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE16/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16/Private
# ########### End Plugins Module 16 End
# ##
# #
# #### Start Plugins Module 17 Start
# PLUGINNAME17  = ModularGameplayActors
# PLUGINMODULE17  = ModularGameplayActors
# DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE17/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17/Private
# ########### End Plugins Module 17 End
# ##
# #
# #### Start Plugins Module 18 Start
# PLUGINNAME18  = Underscore
# PLUGINMODULE18  = Underscore
# DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE18/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18/Private
# ########### End Plugins Module 18 End
# ##
# #
# #### Start Plugins Module 19 Start
# PLUGINNAME19  = Underscore
# PLUGINMODULE19  = UnderscoreEditor
# DEFINES += "UNDERSCOREEDITOR_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE19/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19/Private
# ########### End Plugins Module 19 End
# ##
# #
# #### Start Plugins Module 20 Start
# PLUGINNAME20  = Uproar
# PLUGINMODULE20  = Uproar
# DEFINES += "UPROAR_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE20/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20/Private
# ########### End Plugins Module 20 End
# ##
# #
# #### Start Plugins Module 21 Start
# PLUGINNAME21  = Uproar
# PLUGINMODULE21  = UproarEditor
# DEFINES += "UPROAREDITOR_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE21/UHT
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21/Public
# INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21/Private
# ########### End Plugins Module 21 End
# ##

HEADERS += \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Public/PhotoAlbum.h \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Public/PhotoAlbumSubsystem.h \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Public/PhotoPawn.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanAbilities.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanAbilitiesLogging.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanAbilitySet.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanAbilitySystemComponent.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanAttributeSet.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanGameplayAbility.h \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Public/TitanGameplayEffect.h \
    ../Plugins/TitanCamera/Source/TitanCamera/Public/TitanCamera.h \
    ../Plugins/TitanCamera/Source/TitanCamera/Public/TitanCameraComponent.h \
    ../Plugins/TitanCamera/Source/TitanCamera/Public/TitanCameraLogging.h \
    ../Plugins/TitanCamera/Source/TitanCamera/Public/TitanCameraMath.h \
    ../Plugins/TitanCamera/Source/TitanCamera/Public/TitanCameraState.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanFramework.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanFrameworkLogging.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanGameModeBase.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanGameState.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanPlayerController.h \
    ../Plugins/TitanFramework/Source/TitanFramework/Public/TitanPlayerState.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanBaseMovementMode.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanFallingMode.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanGrapplingMode.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanGroundModeBase.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanLayeredMove_Jump.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanLayeredMove_Teleport.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanModeTransition_Jump.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanMovement.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanMovementLogging.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanMoverComponent.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanMoverTypes.h \
    ../Plugins/TitanMovement/Source/TitanMovement/Public/TitanWalkingMode.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanRaft.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanRaftActor.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanRaftLogging.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanRaftTeleportEffect.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanSailingMode.h \
    ../Plugins/TitanRaft/Source/TitanRaft/Public/TitanWaterDetectionComponent.h \
    ../Plugins/TitanUI/Source/TitanUI/Public/TitanJoystickWidget.h \
    ../Plugins/TitanUI/Source/TitanUI/Public/TitanSimulatedInputWidget.h \
    ../Plugins/TitanUI/Source/TitanUI/Public/TitanTouchRegionWidget.h \
    ../Plugins/TitanUI/Source/TitanUI/Public/TitanTouchToggleWidget.h \
    ../Plugins/TitanUI/Source/TitanUI/Public/TitanUI.h \
    Titan/Character/TitanInputEventSet.h \
    Titan/Character/TitanPawn.h \
    Titan/Character/TitanSkinPreview.h \
    Titan/Character/TitanTeleportPreloader.h \
    Titan/Development/TitanCheatManager.h \
    Titan/Development/TitanDeveloperSettings.h \
    Titan/Logging/TitanLogChannels.h \
    Titan/Titan.h \
    Titan/UI/TitanActivatableWidget.h \
    TitanEditor/TitanEditor.h \
    TitanEditor/Validation/EditorValidator_Actors.h \
    TitanEditor/Validation/EditorValidator_Blueprints.h \
    TitanEditor/Validation/EditorValidator_Materials.h \
    TitanEditor/Validation/EditorValidator_NaniteMeshes.h \
    TitanEditor/Validation/EditorValidator_Textures.h \
    TitanEditor/Validation/TitanEditorValidator.h

SOURCES += \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Private/PhotoAlbum.cpp \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Private/PhotoAlbumSubsystem.cpp \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/Private/PhotoPawn.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanAbilities.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanAbilitiesLogging.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanAbilitySet.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanAbilitySystemComponent.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanAttributeSet.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanGameplayAbility.cpp \
    ../Plugins/TitanAbilities/Source/TitanAbilities/Private/TitanGameplayEffect.cpp \
    ../Plugins/TitanCamera/Source/TitanCamera/Private/TitanCamera.cpp \
    ../Plugins/TitanCamera/Source/TitanCamera/Private/TitanCameraComponent.cpp \
    ../Plugins/TitanCamera/Source/TitanCamera/Private/TitanCameraLogging.cpp \
    ../Plugins/TitanCamera/Source/TitanCamera/Private/TitanCameraMath.cpp \
    ../Plugins/TitanCamera/Source/TitanCamera/Private/TitanCameraState.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanFramework.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanFrameworkLogging.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanGameModeBase.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanGameState.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanPlayerController.cpp \
    ../Plugins/TitanFramework/Source/TitanFramework/Private/TitanPlayerState.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanBaseMovementMode.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanFallingMode.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanGrapplingMode.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanGroundModeBase.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanLayeredMove_Jump.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanLayeredMove_Teleport.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanModeTransition_Jump.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanMovement.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanMovementLogging.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanMoverComponent.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanMoverTypes.cpp \
    ../Plugins/TitanMovement/Source/TitanMovement/Private/TitanWalkingMode.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanRaft.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanRaftActor.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanRaftLogging.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanRaftTeleportEffect.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanSailingMode.cpp \
    ../Plugins/TitanRaft/Source/TitanRaft/Private/TitanWaterDetectionComponent.cpp \
    ../Plugins/TitanUI/Source/TitanUI/Private/TitanJoystickWidget.cpp \
    ../Plugins/TitanUI/Source/TitanUI/Private/TitanSimulatedInputWidget.cpp \
    ../Plugins/TitanUI/Source/TitanUI/Private/TitanTouchRegionWidget.cpp \
    ../Plugins/TitanUI/Source/TitanUI/Private/TitanTouchToggleWidget.cpp \
    ../Plugins/TitanUI/Source/TitanUI/Private/TitanUI.cpp \
    Titan/Character/TitanInputEventSet.cpp \
    Titan/Character/TitanPawn.cpp \
    Titan/Character/TitanSkinPreview.cpp \
    Titan/Character/TitanTeleportPreloader.cpp \
    Titan/Development/TitanCheatManager.cpp \
    Titan/Development/TitanDeveloperSettings.cpp \
    Titan/Logging/TitanLogChannels.cpp \
    Titan/Titan.cpp \
    Titan/UI/TitanActivatableWidget.cpp \
    TitanEditor/TitanEditor.cpp \
    TitanEditor/Validation/EditorValidator_Actors.cpp \
    TitanEditor/Validation/EditorValidator_Blueprints.cpp \
    TitanEditor/Validation/EditorValidator_Materials.cpp \
    TitanEditor/Validation/EditorValidator_NaniteMeshes.cpp \
    TitanEditor/Validation/EditorValidator_Textures.cpp \
    TitanEditor/Validation/TitanEditorValidator.cpp

DISTFILES += \
    ../Plugins/PhotoAlbum/PhotoAlbum.uplugin \
    ../Plugins/PhotoAlbum/Source/PhotoAlbum/PhotoAlbum.Build.cs \
    ../Plugins/TitanAbilities/Source/TitanAbilities/TitanAbilities.Build.cs \
    ../Plugins/TitanAbilities/TitanAbilities.uplugin \
    ../Plugins/TitanCamera/Source/TitanCamera/TitanCamera.Build.cs \
    ../Plugins/TitanCamera/TitanCamera.uplugin \
    ../Plugins/TitanFramework/Source/TitanFramework/TitanFramework.Build.cs \
    ../Plugins/TitanFramework/TitanFramework.uplugin \
    ../Plugins/TitanMovement/Source/TitanMovement/TitanMovement.Build.cs \
    ../Plugins/TitanMovement/TitanMovement.uplugin \
    ../Plugins/TitanRaft/Source/TitanRaft/TitanRaft.Build.cs \
    ../Plugins/TitanRaft/TitanRaft.uplugin \
    ../Plugins/TitanUI/Source/TitanUI/TitanUI.Build.cs \
    ../Plugins/TitanUI/TitanUI.uplugin \
    Titan.Target.cs \
    Titan/Titan.Build.cs \
    TitanEditor.Target.cs \
    TitanEditor/TitanEditor.Build.cs

