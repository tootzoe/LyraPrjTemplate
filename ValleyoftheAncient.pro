




#TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


#
# below one line project name need to be lowercaes
#### Module 1
PRJMODULE1  = AncientGame
DEFINES += "ANCIENTGAME_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE1/UHT
INCLUDEPATH += $$PRJMODULE1 $$PRJMODULE1/Public $$PRJMODULE1/Private
# #### Module 2
# PRJMODULE2  = LyraEditor
# DEFINES += "LYRAEDITOR_API=__declspec(dllexport)"
# #
# INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE2/UHT
# INCLUDEPATH += $$PRJMODULE2 $$PRJMODULE2/Public $$PRJMODULE2/Private
# ####


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
PLUGINMODULE1  = InstanceLevelCollision
DEFINES += "INSTANCELEVELCOLLISION_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE1/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Source/$$PLUGINMODULE1/Private
########### End Plugins Module 1 End
# #
# #### Start Plugins Module 2 Start
# PLUGINMODULE2  = CommonLoadingScreen
# DEFINES += "COMMONLOADINGSCREEN_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE2/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Private
# ########### End Plugins Module 2 End
# #
# #### Start Plugins Module 3 Start
# PLUGINMODULE3  = CommonUser
# DEFINES += "COMMONUSER_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE3/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Private
# ########### End Plugins Module 3 End
# #
# #### Start Plugins Module 4 Start
# PLUGINNAME4  = GameplayMessageRouter
# PLUGINMODULE4  = GameplayMessageNodes
# DEFINES += "GAMEPLAYMESSAGENODES_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE4/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Private
# ########### End Plugins Module 4 End
# #
# #### Start Plugins Module 5 Start
# PLUGINMODULE5  = GameplayMessageRuntime
# DEFINES += "GAMEPLAYMESSAGERUNTIME_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE5/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Private
# ########### End Plugins Module 5 End
# #
# #### Start Plugins Module 6 Start
# PLUGINMODULE6  = GameSettings
# DEFINES += "GAMESETTINGS_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE6/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Private
# ########### End Plugins Module 6 End
# #
# #### Start Plugins Module 7 Start
# PLUGINMODULE7  = GameSubtitles
# DEFINES += "GAMESUBTITLES_API=__declspec(dllexport)"
# #
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE7/UHT
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Public
# INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Private
# ########### End Plugins Module 7 End
# #
# #### Start Plugins Module 8 Start
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
#### PLUGINSROOT 2
PLUGINSROOT2 = $$PLUGINSROOT/GameFeatures
###
###
#
#### Start Plugins Module 12 Start
PLUGINNAME12  = HoverDrone
PLUGINMODULE12  = HoverDrone
DEFINES += "HOVERDRONE_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE12/UHT
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Public
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Private
########### End Plugins Module 12 End
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
PLUGINSROOT3 = $$PLUGINSROOT/Systems
###
#
#### Start Plugins Module 15 Start
PLUGINNAME15  = Crossfader
PLUGINMODULE15  = Crossfader
DEFINES += "CROSSFADER_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE15/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME15/Source/$$PLUGINMODULE15/Private
########### End Plugins Module 15 End
##
#
#### Start Plugins Module 16 Start
PLUGINNAME16  = Crossfader
PLUGINMODULE16  = CrossfaderEditor
DEFINES += "CROSSFADEREDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE16/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME16/Source/$$PLUGINMODULE16/Private
########### End Plugins Module 16 End
##
#
#### Start Plugins Module 17 Start
PLUGINNAME17  = ModularGameplayActors
PLUGINMODULE17  = ModularGameplayActors
DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE17/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME17/Source/$$PLUGINMODULE17/Private
########### End Plugins Module 17 End
##
#
#### Start Plugins Module 18 Start
PLUGINNAME18  = Underscore
PLUGINMODULE18  = Underscore
DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE18/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME18/Source/$$PLUGINMODULE18/Private
########### End Plugins Module 18 End
##
#
#### Start Plugins Module 19 Start
PLUGINNAME19  = Underscore
PLUGINMODULE19  = UnderscoreEditor
DEFINES += "UNDERSCOREEDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE19/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME19/Source/$$PLUGINMODULE19/Private
########### End Plugins Module 19 End
##
#
#### Start Plugins Module 20 Start
PLUGINNAME20  = Uproar
PLUGINMODULE20  = Uproar
DEFINES += "UPROAR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE20/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME20/Source/$$PLUGINMODULE20/Private
########### End Plugins Module 20 End
##
#
#### Start Plugins Module 21 Start
PLUGINNAME21  = Uproar
PLUGINMODULE21  = UproarEditor
DEFINES += "UPROAREDITOR_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE21/UHT
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21/Public
INCLUDEPATH += $$PLUGINSROOT3/$$PLUGINNAME21/Source/$$PLUGINMODULE21/Private
########### End Plugins Module 21 End
##


HEADERS += \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Private/HoverDroneControlsComponent.h \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Public/HoverDroneMovementComponent.h \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Public/HoverDronePawn.h \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Private/InstanceLevelCollisionCommands.h \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Public/InstanceLevelCollision.h \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Public/InstanceLevelCollisionBPLibrary.h \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Public/Crossfader.h \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Public/CrossfaderSubsystem.h \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Public/MixStateBank.h \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Private/AssetTypeActions_MixStateBank.h \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Private/MixStateBankFactory.h \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Public/CrossfaderEditor.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularAIController.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularCharacter.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularGameMode.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularGameState.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPawn.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPlayerController.h \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPlayerState.h \
    ../Plugins/Systems/Underscore/Source/Underscore/Public/Underscore.h \
    ../Plugins/Systems/Underscore/Source/Underscore/Public/UnderscoreCue.h \
    ../Plugins/Systems/Underscore/Source/Underscore/Public/UnderscoreCueBehavior.h \
    ../Plugins/Systems/Underscore/Source/Underscore/Public/UnderscoreSection.h \
    ../Plugins/Systems/Underscore/Source/Underscore/Public/UnderscoreSubsystem.h \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/AssetTypeActions_UnderscoreCue.h \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/AssetTypeActions_UnderscoreSection.h \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/UnderscoreCueFactory.h \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/UnderscoreSectionFactory.h \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Public/UnderscoreEditor.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/Uproar.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarChaosBreakEventSettings.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarChaosCollisionEventSettings.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarChaosListenerComponent.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarDataTypes.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarSettings.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarStaticMeshHitEventSettings.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarStaticMeshListenerComponent.h \
    ../Plugins/Systems/Uproar/Source/Uproar/Public/UproarSubsystem.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarChaosBreakEventSettings.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarChaosCollisionEventSettings.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarStaticMeshHitEventSettings.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarChaosBreakEventSettingsFactory.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarChaosCollisionEventSettingsFactory.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarStaticMeshHitEventSettingsFactory.h \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Public/UproarEditor.h \
    AncientGame/AbilitySystem/AbilityInputBindingComponent.h \
    AncientGame/AbilitySystem/AncientGameAbilityAttributeSet.h \
    AncientGame/AbilitySystem/AncientGameAbilitySystemComponent.h \
    AncientGame/AbilitySystem/AncientGameAbilityTargetActor.h \
    AncientGame/AncientGame.h \
    AncientGame/Animation/AncientGameAnimInstance.h \
    AncientGame/Camera/AncientGameCameraComponent.h \
    AncientGame/Camera/AncientGameCameraMode.h \
    AncientGame/Camera/AncientGameCameraModeStack.h \
    AncientGame/Camera/AncientGameCameraModeView.h \
    AncientGame/Camera/Interpolators.h \
    AncientGame/Camera/SpringArm.h \
    AncientGame/Camera/SpringArmCameraMode.h \
    AncientGame/Character/AncientGameBoxComponentBase.h \
    AncientGame/Character/AncientGamePlayerController.h \
    AncientGame/Character/MovementAttributeSet.h \
    AncientGame/Framework/AncientGameInstance.h \
    AncientGame/Framework/AncientGameModeBase.h \
    AncientGame/Framework/CurveUtilLibrary.h \
    AncientGame/Framework/LoadingUtilLibrary.h \
    AncientGame/GameFeatures/GameFeatureAction_AddAbilities.h \
    AncientGame/GameFeatures/GameFeatureAction_AddInputContextMapping.h \
    AncientGame/GameFeatures/GameFeatureAction_AddLevelInstances.h \
    AncientGame/GameFeatures/GameFeatureAction_AddSpawnedActors.h \
    AncientGame/GameFeatures/GameFeatureAction_AddWorldSystem.h \
    AncientGame/GameFeatures/GameFeatureAction_WorldActionBase.h \
    AncientGame/Input/PlayerControlsComponent.h

SOURCES += \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Private/HoverDroneControlsComponent.cpp \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Private/HoverDroneModule.cpp \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Private/HoverDroneMovementComponent.cpp \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/Private/HoverDronePawn.cpp \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Private/InstanceLevelCollision.cpp \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Private/InstanceLevelCollisionBPLibrary.cpp \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/Private/InstanceLevelCollisionCommands.cpp \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Private/Crossfader.cpp \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Private/CrossfaderSubsystem.cpp \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Private/MixStateBank.cpp \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Private/AssetTypeActions_MixStateBank.cpp \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Private/CrossfaderEditor.cpp \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/Private/MixStateBankFactory.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularAIController.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularCharacter.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameMode.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameState.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameplayActorsModule.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPawn.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPlayerController.cpp \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPlayerState.cpp \
    ../Plugins/Systems/Underscore/Source/Underscore/Private/Underscore.cpp \
    ../Plugins/Systems/Underscore/Source/Underscore/Private/UnderscoreCueBehavior.cpp \
    ../Plugins/Systems/Underscore/Source/Underscore/Private/UnderscoreSection.cpp \
    ../Plugins/Systems/Underscore/Source/Underscore/Private/UnderscoreSubsystem.cpp \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/AssetTypeActions_UnderscoreCue.cpp \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/AssetTypeActions_UnderscoreSection.cpp \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/UnderscoreCueFactory.cpp \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/UnderscoreEditor.cpp \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/Private/UnderscoreSectionFactory.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/Uproar.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarChaosBreakEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarChaosCollisionEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarChaosListenerComponent.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarDataTypes.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarSettings.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarStaticMeshHitEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarStaticMeshListenerComponent.cpp \
    ../Plugins/Systems/Uproar/Source/Uproar/Private/UproarSubsystem.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarChaosBreakEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarChaosCollisionEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/AssetTypeActions_UproarStaticMeshHitEventSettings.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarChaosBreakEventSettingsFactory.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarChaosCollisionEventSettingsFactory.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarEditor.cpp \
    ../Plugins/Systems/Uproar/Source/UproarEditor/Private/UproarStaticMeshHitEventSettingsFactory.cpp \
    AncientGame/AbilitySystem/AbilityInputBindingComponent.cpp \
    AncientGame/AbilitySystem/AncientGameAbilitySystemComponent.cpp \
    AncientGame/AbilitySystem/AncientGameAbilityTargetActor.cpp \
    AncientGame/AncientGame.cpp \
    AncientGame/Animation/AncientGameAnimInstance.cpp \
    AncientGame/Camera/AncientGameCameraComponent.cpp \
    AncientGame/Camera/AncientGameCameraMode.cpp \
    AncientGame/Camera/AncientGameCameraModeStack.cpp \
    AncientGame/Camera/Interpolators.cpp \
    AncientGame/Camera/SpringArm.cpp \
    AncientGame/Camera/SpringArmCameraMode.cpp \
    AncientGame/Character/AncientGamePlayerController.cpp \
    AncientGame/Character/MovementAttributeSet.cpp \
    AncientGame/Framework/AncientGameInstance.cpp \
    AncientGame/Framework/AncientGameModeBase.cpp \
    AncientGame/Framework/CurveUtilLibrary.cpp \
    AncientGame/Framework/LoadingUtilLibrary.cpp \
    AncientGame/GameFeatures/GameFeatureAction_AddAbilities.cpp \
    AncientGame/GameFeatures/GameFeatureAction_AddInputContextMapping.cpp \
    AncientGame/GameFeatures/GameFeatureAction_AddLevelInstances.cpp \
    AncientGame/GameFeatures/GameFeatureAction_AddSpawnedActors.cpp \
    AncientGame/GameFeatures/GameFeatureAction_AddWorldSystem.cpp \
    AncientGame/GameFeatures/GameFeatureAction_WorldActionBase.cpp \
    AncientGame/Input/PlayerControlsComponent.cpp

DISTFILES += \
    ../Plugins/GameFeatures/HoverDrone/HoverDrone.uplugin \
    ../Plugins/GameFeatures/HoverDrone/Source/HoverDrone/HoverDrone.Build.cs \
    ../Plugins/InstanceLevelCollision/InstanceLevelCollision.uplugin \
    ../Plugins/InstanceLevelCollision/Source/InstanceLevelCollision/InstanceLevelCollision.Build.cs \
    ../Plugins/Systems/Crossfader/Crossfader.uplugin \
    ../Plugins/Systems/Crossfader/Source/Crossfader/Crossfader.Build.cs \
    ../Plugins/Systems/Crossfader/Source/CrossfaderEditor/CrossfaderEditor.Build.cs \
    ../Plugins/Systems/ModularGameplayActors/ModularGameplayActors.uplugin \
    ../Plugins/Systems/ModularGameplayActors/Source/ModularGameplayActors/ModularGameplayActors.Build.cs \
    ../Plugins/Systems/Underscore/Source/Underscore/Underscore.Build.cs \
    ../Plugins/Systems/Underscore/Source/UnderscoreEditor/UnderscoreEditor.Build.cs \
    ../Plugins/Systems/Underscore/Underscore.uplugin \
    ../Plugins/Systems/Uproar/Source/Uproar/Uproar.Build.cs \
    ../Plugins/Systems/Uproar/Source/UproarEditor/UproarEditor.Build.cs \
    ../Plugins/Systems/Uproar/Uproar.uplugin \
    AncientGame.Target.cs \
    AncientGame/AncientGame.Build.cs \
    AncientGameEditor.Target.cs


