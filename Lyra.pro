




#TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


#
# below one line project name need to be lowercaes
#### Module 1
PRJMODULE1  = LyraGame
DEFINES += "LYRAGAME_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE1/UHT
INCLUDEPATH += $$PRJMODULE1 $$PRJMODULE1/Public $$PRJMODULE1/Private
#### Module 2
PRJMODULE2  = LyraEditor
DEFINES += "LYRAEDITOR_API=__declspec(dllexport)"
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
DEFINES += PLATFORM_ANDROID
##


INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJNAMETOOT/UHT
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/LyraEditor/UHT
INCLUDEPATH += $$PRJNAMETOOT $$PRJNAMETOOT/Public $$PRJNAMETOOT/Private
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

##
#### PLUGINSROOT 1
PLUGINSROOT = ../Plugins
###
###
#### Start Plugins Module 1 Start
PLUGINMODULE1  = CommonGame
DEFINES += "COMMONGAME_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE1/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE1 $$PLUGINSROOT/$$PLUGINMODULE1/Public $$PLUGINSROOT/$$PLUGINMODULE1/Private
########### End Plugins Module 1 End
#
#### Start Plugins Module 2 Start
PLUGINMODULE2  = CommonLoadingScreen
DEFINES += "COMMONLOADINGSCREEN_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE2/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE2/Source/$$PLUGINMODULE2/Private
########### End Plugins Module 2 End
#
#### Start Plugins Module 3 Start
PLUGINMODULE3  = CommonUser
DEFINES += "COMMONUSER_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE3/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE3/Source/$$PLUGINMODULE3/Private
########### End Plugins Module 3 End
#
#### Start Plugins Module 4 Start
PLUGINNAME4  = GameplayMessageRouter
PLUGINMODULE4  = GameplayMessageNodes
DEFINES += "GAMEPLAYMESSAGENODES_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE4/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE4/Private
########### End Plugins Module 4 End
#
#### Start Plugins Module 5 Start
PLUGINMODULE5  = GameplayMessageRuntime
DEFINES += "GAMEPLAYMESSAGERUNTIME_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE5/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINNAME4/Source/$$PLUGINMODULE5/Private
########### End Plugins Module 5 End
#
#### Start Plugins Module 6 Start
PLUGINMODULE6  = GameSettings
DEFINES += "GAMESETTINGS_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE6/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE6/Source/Private
########### End Plugins Module 6 End
#
#### Start Plugins Module 7 Start
PLUGINMODULE7  = GameSubtitles
DEFINES += "GAMESUBTITLES_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE7/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE7/Source/Private
########### End Plugins Module 7 End
#
#### Start Plugins Module 8 Start
PLUGINMODULE8  = LyraExtTool
DEFINES += "LYRAEXTTOOL_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE8/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE8/Source/$$PLUGINMODULE8/Private
########### End Plugins Module 8 End
#
#### Start Plugins Module 9 Start
PLUGINMODULE9  = ModularGameplayActors
DEFINES += "MODULARGAMEPLAYACTORS_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE9/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE9/Source/$$PLUGINMODULE9/Private
########### End Plugins Module 9 End
#
#### Start Plugins Module 10 Start
PLUGINMODULE10  = PocketWorlds
DEFINES += "POCKETWORLDS_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE10/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE10/Source/$$PLUGINMODULE10/Private
########### End Plugins Module 10 End
#
#### Start Plugins Module 11 Start
PLUGINMODULE11  = UIExtension
DEFINES += "UIEXTENSION_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE11/UHT
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source/Public
INCLUDEPATH += $$PLUGINSROOT/$$PLUGINMODULE11/Source/Private
########### End Plugins Module 11 End
##
#### PLUGINSROOT 2
PLUGINSROOT2 = $$PLUGINSROOT/GameFeatures
###
###
#
#### Start Plugins Module 12 Start
PLUGINNAME12  = ShooterCore
PLUGINMODULE12  = ShooterCoreRuntime
DEFINES += "SHOOTERCORERUNTIME_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE12/UHT
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Public
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME12/Source/$$PLUGINMODULE12/Private
########### End Plugins Module 12 End
##
#
#### Start Plugins Module 13 Start
PLUGINNAME13  = ShooterTests
PLUGINMODULE13  = ShooterTestsRuntime
DEFINES += "SHOOTERTESTSRUNTIME_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE13/UHT
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13/Public
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME13/Source/$$PLUGINMODULE13/Private
########### End Plugins Module 13 End
##
#
#### Start Plugins Module 14 Start
PLUGINNAME14  = TopDownArena
PLUGINMODULE14  = TopDownArenaRuntime
DEFINES += "TOPDOWNARENARUNTIME_API=__declspec(dllexport)"
#
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Intermediate/Build/Win64/UnrealEditor/Inc/$$PLUGINMODULE14/UHT
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14/Public
INCLUDEPATH += $$PLUGINSROOT2/$$PLUGINNAME14/Source/$$PLUGINMODULE14/Private
########### End Plugins Module 14 End
##



##
#
#

DISTFILES += \
    ../Plugins/AsyncMixin/AsyncMixin.uplugin \
    ../Plugins/AsyncMixin/Source/AsyncMixin.Build.cs \
    ../Plugins/CommonGame/CommonGame.uplugin \
    ../Plugins/CommonGame/Source/CommonGame.Build.cs \
    ../Plugins/CommonLoadingScreen/CommonLoadingScreen.uplugin \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/CommonLoadingScreen.Build.cs \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/CommonStartupLoadingScreen.Build.cs \
    ../Plugins/CommonUser/CommonUser.uplugin \
    ../Plugins/CommonUser/Source/CommonUser/CommonUser.Build.cs \
    ../Plugins/GameFeatures/ShooterCore/ShooterCore.uplugin \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/ShooterCoreRuntime.Build.cs \
    ../Plugins/GameFeatures/ShooterExplorer/ShooterExplorer.uplugin \
    ../Plugins/GameFeatures/ShooterMaps/ShooterMaps.uplugin \
    ../Plugins/GameFeatures/ShooterTests/README.md \
    ../Plugins/GameFeatures/ShooterTests/ShooterTests.uplugin \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/ShooterTestsRuntime.Build.cs \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/TopDownArenaRuntime.Build.cs \
    ../Plugins/GameFeatures/TopDownArena/TopDownArena.uplugin \
    ../Plugins/GameSettings/GameSettings.uplugin \
    ../Plugins/GameSettings/Source/GameSettings.Build.cs \
    ../Plugins/GameSettings/Source/README.md \
    ../Plugins/GameSubtitles/GameSubtitles.uplugin \
    ../Plugins/GameSubtitles/Source/GameSubtitles.Build.cs \
    ../Plugins/GameplayMessageRouter/GameplayMessageRouter.uplugin \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageNodes/GameplayMessageNodes.Build.cs \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/GameplayMessageRuntime.Build.cs \
    ../Plugins/LyraExampleContent/LyraExampleContent.uplugin \
    ../Plugins/LyraExtTool/LyraExtTool.uplugin \
    ../Plugins/LyraExtTool/Source/LyraExtTool/LyraExtTool.Build.cs \
    ../Plugins/ModularGameplayActors/ModularGameplayActors.uplugin \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/ModularGameplayActors.Build.cs \
    ../Plugins/PocketWorlds/PocketWorlds.uplugin \
    ../Plugins/PocketWorlds/Source/PocketWorlds.Build.cs \
    ../Plugins/UIExtension/Source/UIExtension.Build.cs \
    ../Plugins/UIExtension/UIExtension.uplugin \
    LyraClient.Target.cs \
    LyraEditor.Target.cs \
    LyraEditor/LyraEditor.Build.cs \
    LyraGame.Target.cs \
    LyraGame/LyraGame.Build.cs \
    LyraGame/README.md \
    LyraGame/Settings/README.md \
    LyraGameEOS.Target.cs \
    LyraGameSteam.Target.cs \
    LyraGameSteamEOS.Target.cs \
    LyraServer.Target.cs \
    LyraServerEOS.Target.cs \
    LyraServerSteam.Target.cs \
    LyraServerSteamEOS.Target.cs

HEADERS += \
    ../Plugins/AsyncMixin/Source/Public/AsyncMixin.h \
    ../Plugins/CommonGame/Source/Private/LogCommonGame.h \
    ../Plugins/CommonGame/Source/Public/Actions/AsyncAction_CreateWidgetAsync.h \
    ../Plugins/CommonGame/Source/Public/Actions/AsyncAction_PushContentToLayerForPlayer.h \
    ../Plugins/CommonGame/Source/Public/Actions/AsyncAction_ShowConfirmation.h \
    ../Plugins/CommonGame/Source/Public/CommonGameInstance.h \
    ../Plugins/CommonGame/Source/Public/CommonLocalPlayer.h \
    ../Plugins/CommonGame/Source/Public/CommonPlayerController.h \
    ../Plugins/CommonGame/Source/Public/CommonPlayerInputKey.h \
    ../Plugins/CommonGame/Source/Public/CommonUIExtensions.h \
    ../Plugins/CommonGame/Source/Public/GameUIManagerSubsystem.h \
    ../Plugins/CommonGame/Source/Public/GameUIPolicy.h \
    ../Plugins/CommonGame/Source/Public/Messaging/CommonGameDialog.h \
    ../Plugins/CommonGame/Source/Public/Messaging/CommonMessagingSubsystem.h \
    ../Plugins/CommonGame/Source/Public/PrimaryGameLayout.h \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Private/CommonLoadingScreenSettings.h \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Public/LoadingProcessInterface.h \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Public/LoadingProcessTask.h \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Public/LoadingScreenManager.h \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/Private/CommonPreLoadScreen.h \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/Private/SCommonPreLoadingScreenWidget.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/AsyncAction_CommonUserInitialize.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/CommonSessionSubsystem.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/CommonUserBasicPresence.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/CommonUserModule.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/CommonUserSubsystem.h \
    ../Plugins/CommonUser/Source/CommonUser/Public/CommonUserTypes.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/TDM_PlayerSpawningManagmentComponent.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Accolades/LyraAccoladeDefinition.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Accolades/LyraAccoladeHostWidget.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Input/AimAssistInputModifier.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Input/AimAssistTargetComponent.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Input/AimAssistTargetManagerComponent.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Input/IAimAssistTargetInterface.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/LyraWorldCollectable.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/MessageProcessors/AssistProcessor.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/MessageProcessors/ElimChainProcessor.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/MessageProcessors/ElimStreakProcessor.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/Messages/ControlPointStatusMessage.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/ShooterCoreRuntimeModule.h \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Public/ShooterCoreRuntimeSettings.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestAsyncMessageTestActor.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsDevicePropertyTester.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsActorNetworkTest.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsActorTest.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsActorTestHelper.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsAnimationTestHelper.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsInputTestHelper.h \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsNetworkComponent.h \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaAttributeSet.h \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaMovementComponent.h \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaPickupUIData.h \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Public/LyraCameraMode_TopDownArenaCamera.h \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Public/TopDownArenaRuntimeModule.h \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/GameResponsivePanel.h \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/GameResponsivePanelSlot.h \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/SGameResponsivePanel.h \
    ../Plugins/GameSettings/Source/Public/DataSource/GameSettingDataSource.h \
    ../Plugins/GameSettings/Source/Public/DataSource/GameSettingDataSourceDynamic.h \
    ../Plugins/GameSettings/Source/Public/EditCondition/WhenCondition.h \
    ../Plugins/GameSettings/Source/Public/EditCondition/WhenPlatformHasTrait.h \
    ../Plugins/GameSettings/Source/Public/EditCondition/WhenPlayingAsPrimaryPlayer.h \
    ../Plugins/GameSettings/Source/Public/GameSetting.h \
    ../Plugins/GameSettings/Source/Public/GameSettingAction.h \
    ../Plugins/GameSettings/Source/Public/GameSettingCollection.h \
    ../Plugins/GameSettings/Source/Public/GameSettingFilterState.h \
    ../Plugins/GameSettings/Source/Public/GameSettingRegistry.h \
    ../Plugins/GameSettings/Source/Public/GameSettingRegistryChangeTracker.h \
    ../Plugins/GameSettings/Source/Public/GameSettingValue.h \
    ../Plugins/GameSettings/Source/Public/GameSettingValueDiscrete.h \
    ../Plugins/GameSettings/Source/Public/GameSettingValueDiscreteDynamic.h \
    ../Plugins/GameSettings/Source/Public/GameSettingValueScalar.h \
    ../Plugins/GameSettings/Source/Public/GameSettingValueScalarDynamic.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingDetailExtension.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingDetailView.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingListEntry.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingListView.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingPanel.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingScreen.h \
    ../Plugins/GameSettings/Source/Public/Widgets/GameSettingVisualData.h \
    ../Plugins/GameSettings/Source/Public/Widgets/IGameSettingActionInterface.h \
    ../Plugins/GameSettings/Source/Public/Widgets/Misc/GameSettingPressAnyKey.h \
    ../Plugins/GameSettings/Source/Public/Widgets/Misc/GameSettingRotator.h \
    ../Plugins/GameSettings/Source/Public/Widgets/Misc/KeyAlreadyBoundWarning.h \
    ../Plugins/GameSubtitles/Source/Public/Players/MediaSubtitlesPlayer.h \
    ../Plugins/GameSubtitles/Source/Public/SubtitleDisplayOptions.h \
    ../Plugins/GameSubtitles/Source/Public/SubtitleDisplaySubsystem.h \
    ../Plugins/GameSubtitles/Source/Public/Widgets/SSubtitleDisplay.h \
    ../Plugins/GameSubtitles/Source/Public/Widgets/SubtitleDisplay.h \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageNodes/Public/K2Node_AsyncAction_ListenForGameplayMessages.h \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Public/GameFramework/AsyncAction_ListenForGameplayMessage.h \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Public/GameFramework/GameplayMessageSubsystem.h \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Public/GameFramework/GameplayMessageTypes2.h \
    ../Plugins/LyraExtTool/Source/LyraExtTool/Public/BPFunctionLibrary.h \
    ../Plugins/LyraExtTool/Source/LyraExtTool/Public/LyraExtTool.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularAIController.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularCharacter.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularGameMode.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularGameState.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPawn.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPlayerController.h \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Public/ModularPlayerState.h \
    ../Plugins/PocketWorlds/Source/Public/PocketCapture.h \
    ../Plugins/PocketWorlds/Source/Public/PocketCaptureSubsystem.h \
    ../Plugins/PocketWorlds/Source/Public/PocketLevel.h \
    ../Plugins/PocketWorlds/Source/Public/PocketLevelInstance.h \
    ../Plugins/PocketWorlds/Source/Public/PocketLevelSystem.h \
    ../Plugins/UIExtension/Source/Private/LogUIExtension.h \
    ../Plugins/UIExtension/Source/Public/UIExtensionSystem.h \
    ../Plugins/UIExtension/Source/Public/Widgets/UIExtensionPointWidget.h \
    LyraEditor/Commandlets/ContentValidationCommandlet.h \
    LyraEditor/LyraEditor.h \
    LyraEditor/LyraEditorEngine.h \
    LyraEditor/Private/AssetTypeActions_LyraContextEffectsLibrary.h \
    LyraEditor/Private/GameEditorStyle.h \
    LyraEditor/Private/LyraContextEffectsLibraryFactory.h \
    LyraEditor/Validation/EditorValidator.h \
    LyraEditor/Validation/EditorValidator_Blueprints.h \
    LyraEditor/Validation/EditorValidator_Load.h \
    LyraEditor/Validation/EditorValidator_MaterialFunctions.h \
    LyraEditor/Validation/EditorValidator_SourceControl.h \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost.h \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_InventoryItem.h \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_ItemTagStack.h \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_PlayerTagStack.h \
    LyraGame/AbilitySystem/Abilities/LyraAbilitySimpleFailureMessage.h \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility.h \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Death.h \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Jump.h \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Reset.h \
    LyraGame/AbilitySystem/Attributes/LyraAttributeSet.h \
    LyraGame/AbilitySystem/Attributes/LyraCombatSet.h \
    LyraGame/AbilitySystem/Attributes/LyraHealthSet.h \
    LyraGame/AbilitySystem/Executions/LyraDamageExecution.h \
    LyraGame/AbilitySystem/Executions/LyraHealExecution.h \
    LyraGame/AbilitySystem/LyraAbilitySet.h \
    LyraGame/AbilitySystem/LyraAbilitySourceInterface.h \
    LyraGame/AbilitySystem/LyraAbilitySystemComponent.h \
    LyraGame/AbilitySystem/LyraAbilitySystemGlobals.h \
    LyraGame/AbilitySystem/LyraAbilityTagRelationshipMapping.h \
    LyraGame/AbilitySystem/LyraGameplayAbilityTargetData_SingleTargetHit.h \
    LyraGame/AbilitySystem/LyraGameplayCueManager.h \
    LyraGame/AbilitySystem/LyraGameplayEffectContext.h \
    LyraGame/AbilitySystem/LyraGlobalAbilitySystem.h \
    LyraGame/AbilitySystem/LyraTaggedActor.h \
    LyraGame/AbilitySystem/Phases/LyraGamePhaseAbility.h \
    LyraGame/AbilitySystem/Phases/LyraGamePhaseLog.h \
    LyraGame/AbilitySystem/Phases/LyraGamePhaseSubsystem.h \
    LyraGame/Animation/LyraAnimInstance.h \
    LyraGame/Audio/LyraAudioMixEffectsSubsystem.h \
    LyraGame/Audio/LyraAudioSettings.h \
    LyraGame/Camera/LyraCameraAssistInterface.h \
    LyraGame/Camera/LyraCameraComponent.h \
    LyraGame/Camera/LyraCameraMode.h \
    LyraGame/Camera/LyraCameraMode_ThirdPerson.h \
    LyraGame/Camera/LyraPenetrationAvoidanceFeeler.h \
    LyraGame/Camera/LyraPlayerCameraManager.h \
    LyraGame/Camera/LyraUICameraManagerComponent.h \
    LyraGame/Character/LyraCharacter.h \
    LyraGame/Character/LyraCharacterMovementComponent.h \
    LyraGame/Character/LyraCharacterWithAbilities.h \
    LyraGame/Character/LyraHealthComponent.h \
    LyraGame/Character/LyraHeroComponent.h \
    LyraGame/Character/LyraPawn.h \
    LyraGame/Character/LyraPawnData.h \
    LyraGame/Character/LyraPawnExtensionComponent.h \
    LyraGame/Cosmetics/LyraCharacterPartTypes.h \
    LyraGame/Cosmetics/LyraControllerComponent_CharacterParts.h \
    LyraGame/Cosmetics/LyraCosmeticAnimationTypes.h \
    LyraGame/Cosmetics/LyraCosmeticCheats.h \
    LyraGame/Cosmetics/LyraCosmeticDeveloperSettings.h \
    LyraGame/Cosmetics/LyraPawnComponent_CharacterParts.h \
    LyraGame/Development/LyraBotCheats.h \
    LyraGame/Development/LyraDeveloperSettings.h \
    LyraGame/Development/LyraPlatformEmulationSettings.h \
    LyraGame/Equipment/LyraEquipmentDefinition.h \
    LyraGame/Equipment/LyraEquipmentInstance.h \
    LyraGame/Equipment/LyraEquipmentManagerComponent.h \
    LyraGame/Equipment/LyraGameplayAbility_FromEquipment.h \
    LyraGame/Equipment/LyraPickupDefinition.h \
    LyraGame/Equipment/LyraQuickBarComponent.h \
    LyraGame/Feedback/ContextEffects/AnimNotify_LyraContextEffects.h \
    LyraGame/Feedback/ContextEffects/LyraContextEffectComponent.h \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsInterface.h \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsLibrary.h \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsSubsystem.h \
    LyraGame/Feedback/NumberPops/LyraDamagePopStyle.h \
    LyraGame/Feedback/NumberPops/LyraDamagePopStyleNiagara.h \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent.h \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent_MeshText.h \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent_NiagaraText.h \
    LyraGame/GameFeatures/GameFeatureAction_AddAbilities.h \
    LyraGame/GameFeatures/GameFeatureAction_AddGameplayCuePath.h \
    LyraGame/GameFeatures/GameFeatureAction_AddInputBinding.h \
    LyraGame/GameFeatures/GameFeatureAction_AddInputContextMapping.h \
    LyraGame/GameFeatures/GameFeatureAction_AddWidget.h \
    LyraGame/GameFeatures/GameFeatureAction_SplitscreenConfig.h \
    LyraGame/GameFeatures/GameFeatureAction_WorldActionBase.h \
    LyraGame/GameFeatures/LyraGameFeaturePolicy.h \
    LyraGame/GameModes/AsyncAction_ExperienceReady.h \
    LyraGame/GameModes/LyraBotCreationComponent.h \
    LyraGame/GameModes/LyraExperienceActionSet.h \
    LyraGame/GameModes/LyraExperienceDefinition.h \
    LyraGame/GameModes/LyraExperienceManager.h \
    LyraGame/GameModes/LyraExperienceManagerComponent.h \
    LyraGame/GameModes/LyraGameMode.h \
    LyraGame/GameModes/LyraGameState.h \
    LyraGame/GameModes/LyraUserFacingExperienceDefinition.h \
    LyraGame/GameModes/LyraWorldSettings.h \
    LyraGame/Hotfix/LyraHotfixManager.h \
    LyraGame/Hotfix/LyraRuntimeOptions.h \
    LyraGame/Hotfix/LyraTextHotfixConfig.h \
    LyraGame/Input/LyraAimSensitivityData.h \
    LyraGame/Input/LyraInputComponent.h \
    LyraGame/Input/LyraInputConfig.h \
    LyraGame/Input/LyraInputModifiers.h \
    LyraGame/Input/LyraInputUserSettings.h \
    LyraGame/Input/LyraPlayerInput.h \
    LyraGame/Input/LyraPlayerMappableKeyProfile.h \
    LyraGame/Interaction/Abilities/GameplayAbilityTargetActor_Interact.h \
    LyraGame/Interaction/Abilities/LyraGameplayAbility_Interact.h \
    LyraGame/Interaction/IInteractableTarget.h \
    LyraGame/Interaction/IInteractionInstigator.h \
    LyraGame/Interaction/InteractionOption.h \
    LyraGame/Interaction/InteractionQuery.h \
    LyraGame/Interaction/InteractionStatics.h \
    LyraGame/Interaction/LyraInteractionDurationMessage.h \
    LyraGame/Interaction/Tasks/AbilityTask_GrantNearbyInteraction.h \
    LyraGame/Interaction/Tasks/AbilityTask_WaitForInteractableTargets.h \
    LyraGame/Interaction/Tasks/AbilityTask_WaitForInteractableTargets_SingleLineTrace.h \
    LyraGame/Inventory/IPickupable.h \
    LyraGame/Inventory/InventoryFragment_EquippableItem.h \
    LyraGame/Inventory/InventoryFragment_PickupIcon.h \
    LyraGame/Inventory/InventoryFragment_QuickBarIcon.h \
    LyraGame/Inventory/InventoryFragment_SetStats.h \
    LyraGame/Inventory/LyraInventoryItemDefinition.h \
    LyraGame/Inventory/LyraInventoryItemInstance.h \
    LyraGame/Inventory/LyraInventoryManagerComponent.h \
    LyraGame/LyraGameplayTags.h \
    LyraGame/LyraLogChannels.h \
    LyraGame/Messages/GameplayMessageProcessor.h \
    LyraGame/Messages/LyraNotificationMessage.h \
    LyraGame/Messages/LyraVerbMessage.h \
    LyraGame/Messages/LyraVerbMessageHelpers.h \
    LyraGame/Messages/LyraVerbMessageReplication.h \
    LyraGame/Performance/LyraPerformanceSettings.h \
    LyraGame/Performance/LyraPerformanceStatSubsystem.h \
    LyraGame/Performance/LyraPerformanceStatTypes.h \
    LyraGame/Physics/LyraCollisionChannels.h \
    LyraGame/Physics/PhysicalMaterialWithTags.h \
    LyraGame/Player/LyraCheatManager.h \
    LyraGame/Player/LyraDebugCameraController.h \
    LyraGame/Player/LyraLocalPlayer.h \
    LyraGame/Player/LyraPlayerBotController.h \
    LyraGame/Player/LyraPlayerController.h \
    LyraGame/Player/LyraPlayerSpawningManagerComponent.h \
    LyraGame/Player/LyraPlayerStart.h \
    LyraGame/Player/LyraPlayerState.h \
    LyraGame/Replays/AsyncAction_QueryReplays.h \
    LyraGame/Replays/LyraReplaySubsystem.h \
    LyraGame/Settings/CustomSettings/LyraSettingAction_SafeZoneEditor.h \
    LyraGame/Settings/CustomSettings/LyraSettingKeyboardInput.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscreteDynamic_AudioOutputDevice.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_Language.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_MobileFPSType.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_OverallQuality.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_PerfStat.h \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_Resolution.h \
    LyraGame/Settings/LyraGameSettingRegistry.h \
    LyraGame/Settings/LyraSettingsLocal.h \
    LyraGame/Settings/LyraSettingsShared.h \
    LyraGame/Settings/Screens/LyraBrightnessEditor.h \
    LyraGame/Settings/Screens/LyraSafeZoneEditor.h \
    LyraGame/Settings/Widgets/LyraSettingsListEntrySetting_KeyboardInput.h \
    LyraGame/System/GameplayTagStack.h \
    LyraGame/System/LyraActorUtilities.h \
    LyraGame/System/LyraAssetManager.h \
    LyraGame/System/LyraAssetManagerStartupJob.h \
    LyraGame/System/LyraDevelopmentStatics.h \
    LyraGame/System/LyraGameData.h \
    LyraGame/System/LyraGameEngine.h \
    LyraGame/System/LyraGameInstance.h \
    LyraGame/System/LyraGameSession.h \
    LyraGame/System/LyraReplicationGraph.h \
    LyraGame/System/LyraReplicationGraphSettings.h \
    LyraGame/System/LyraReplicationGraphTypes.h \
    LyraGame/System/LyraSignificanceManager.h \
    LyraGame/System/LyraSystemStatics.h \
    LyraGame/Teams/AsyncAction_ObserveTeam.h \
    LyraGame/Teams/AsyncAction_ObserveTeamColors.h \
    LyraGame/Teams/LyraTeamAgentInterface.h \
    LyraGame/Teams/LyraTeamCheats.h \
    LyraGame/Teams/LyraTeamCreationComponent.h \
    LyraGame/Teams/LyraTeamDisplayAsset.h \
    LyraGame/Teams/LyraTeamInfoBase.h \
    LyraGame/Teams/LyraTeamPrivateInfo.h \
    LyraGame/Teams/LyraTeamPublicInfo.h \
    LyraGame/Teams/LyraTeamStatics.h \
    LyraGame/Teams/LyraTeamSubsystem.h \
    LyraGame/Tests/LyraGameplayRpcRegistrationComponent.h \
    LyraGame/Tests/LyraTestControllerBootTest.h \
    LyraGame/UI/Basic/MaterialProgressBar.h \
    LyraGame/UI/Common/LyraBoundActionButton.h \
    LyraGame/UI/Common/LyraListView.h \
    LyraGame/UI/Common/LyraTabButtonBase.h \
    LyraGame/UI/Common/LyraTabListWidgetBase.h \
    LyraGame/UI/Common/LyraWidgetFactory.h \
    LyraGame/UI/Common/LyraWidgetFactory_Class.h \
    LyraGame/UI/Foundation/LyraActionWidget.h \
    LyraGame/UI/Foundation/LyraButtonBase.h \
    LyraGame/UI/Foundation/LyraConfirmationScreen.h \
    LyraGame/UI/Foundation/LyraControllerDisconnectedScreen.h \
    LyraGame/UI/Foundation/LyraLoadingScreenSubsystem.h \
    LyraGame/UI/Frontend/ApplyFrontendPerfSettingsAction.h \
    LyraGame/UI/Frontend/LyraFrontendStateComponent.h \
    LyraGame/UI/Frontend/LyraLobbyBackground.h \
    LyraGame/UI/IndicatorSystem/IActorIndicatorWidget.h \
    LyraGame/UI/IndicatorSystem/IndicatorDescriptor.h \
    LyraGame/UI/IndicatorSystem/IndicatorLayer.h \
    LyraGame/UI/IndicatorSystem/IndicatorLibrary.h \
    LyraGame/UI/IndicatorSystem/LyraIndicatorManagerComponent.h \
    LyraGame/UI/IndicatorSystem/SActorCanvas.h \
    LyraGame/UI/LyraActivatableWidget.h \
    LyraGame/UI/LyraGameViewportClient.h \
    LyraGame/UI/LyraHUD.h \
    LyraGame/UI/LyraHUDLayout.h \
    LyraGame/UI/LyraJoystickWidget.h \
    LyraGame/UI/LyraSettingScreen.h \
    LyraGame/UI/LyraSimulatedInputWidget.h \
    LyraGame/UI/LyraTaggedWidget.h \
    LyraGame/UI/LyraTouchRegion.h \
    LyraGame/UI/PerformanceStats/LyraPerfStatContainerBase.h \
    LyraGame/UI/PerformanceStats/LyraPerfStatWidgetBase.h \
    LyraGame/UI/Subsystem/LyraUIManagerSubsystem.h \
    LyraGame/UI/Subsystem/LyraUIMessaging.h \
    LyraGame/UI/Weapons/CircumferenceMarkerWidget.h \
    LyraGame/UI/Weapons/HitMarkerConfirmationWidget.h \
    LyraGame/UI/Weapons/LyraReticleWidgetBase.h \
    LyraGame/UI/Weapons/LyraWeaponUserInterface.h \
    LyraGame/UI/Weapons/SCircumferenceMarkerWidget.h \
    LyraGame/UI/Weapons/SHitMarkerConfirmationWidget.h \
    LyraGame/Weapons/InventoryFragment_ReticleConfig.h \
    LyraGame/Weapons/LyraDamageLogDebuggerComponent.h \
    LyraGame/Weapons/LyraGameplayAbility_RangedWeapon.h \
    LyraGame/Weapons/LyraRangedWeaponInstance.h \
    LyraGame/Weapons/LyraWeaponDebugSettings.h \
    LyraGame/Weapons/LyraWeaponInstance.h \
    LyraGame/Weapons/LyraWeaponSpawner.h \
    LyraGame/Weapons/LyraWeaponStateComponent.h

SOURCES += \
    ../Plugins/AsyncMixin/Source/Private/AsyncMixin.cpp \
    ../Plugins/AsyncMixin/Source/Private/AsyncMixinModule.cpp \
    ../Plugins/CommonGame/Source/Private/Actions/AsyncAction_CreateWidgetAsync.cpp \
    ../Plugins/CommonGame/Source/Private/Actions/AsyncAction_PushContentToLayerForPlayer.cpp \
    ../Plugins/CommonGame/Source/Private/Actions/AsyncAction_ShowConfirmation.cpp \
    ../Plugins/CommonGame/Source/Private/CommonGameInstance.cpp \
    ../Plugins/CommonGame/Source/Private/CommonGameModule.cpp \
    ../Plugins/CommonGame/Source/Private/CommonLocalPlayer.cpp \
    ../Plugins/CommonGame/Source/Private/CommonPlayerController.cpp \
    ../Plugins/CommonGame/Source/Private/CommonPlayerInputKey.cpp \
    ../Plugins/CommonGame/Source/Private/CommonUIExtensions.cpp \
    ../Plugins/CommonGame/Source/Private/GameUIManagerSubsystem.cpp \
    ../Plugins/CommonGame/Source/Private/GameUIPolicy.cpp \
    ../Plugins/CommonGame/Source/Private/LogCommonGame.cpp \
    ../Plugins/CommonGame/Source/Private/Messaging/CommonGameDialog.cpp \
    ../Plugins/CommonGame/Source/Private/Messaging/CommonMessagingSubsystem.cpp \
    ../Plugins/CommonGame/Source/Private/PrimaryGameLayout.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Private/CommonLoadingScreenModule.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Private/CommonLoadingScreenSettings.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Private/LoadingScreenManager.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonLoadingScreen/Public/LoadingProcessTask.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/Private/CommonPreLoadScreen.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/Private/CommonStartupLoadingScreen.cpp \
    ../Plugins/CommonLoadingScreen/Source/CommonStartupLoadingScreen/Private/SCommonPreLoadingScreenWidget.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/AsyncAction_CommonUserInitialize.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/CommonSessionSubsystem.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/CommonUserBasicPresence.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/CommonUserModule.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/CommonUserSubsystem.cpp \
    ../Plugins/CommonUser/Source/CommonUser/Private/CommonUserTypes.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/Accolades/LyraAccoladeDefinition.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/Accolades/LyraAccoladeHostWidget.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/Input/AimAssistInputModifier.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/Input/AimAssistTargetComponent.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/Input/AimAssistTargetManagerComponent.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/LyraWorldCollectable.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/MessageProcessors/AssistProcessor.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/MessageProcessors/ElimChainProcessor.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/MessageProcessors/ElimStreakProcessor.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/ShooterCoreRuntimeModule.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/ShooterCoreRuntimeSettings.cpp \
    ../Plugins/GameFeatures/ShooterCore/Source/ShooterCoreRuntime/Private/TDM_PlayerSpawningManagmentComponent.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestAsyncMessageTestActor.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsActorAnimationTests.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsActorNetworkTests.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsDevicePropertyTester.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsMapTests.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/ShooterTestsRuntimeModule.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsActorTestHelper.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsAnimationTestHelper.cpp \
    ../Plugins/GameFeatures/ShooterTests/Source/ShooterTestsRuntime/Private/Utilities/ShooterTestsInputTestHelper.cpp \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/LyraCameraMode_TopDownArenaCamera.cpp \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaAttributeSet.cpp \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaMovementComponent.cpp \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaPickupUIData.cpp \
    ../Plugins/GameFeatures/TopDownArena/Source/TopDownArenaRuntime/Private/TopDownArenaRuntimeModule.cpp \
    ../Plugins/GameSettings/Source/Private/DataSource/GameSettingDataSourceDynamic.cpp \
    ../Plugins/GameSettings/Source/Private/EditCondition/WhenPlatformHasTrait.cpp \
    ../Plugins/GameSettings/Source/Private/EditCondition/WhenPlayingAsPrimaryPlayer.cpp \
    ../Plugins/GameSettings/Source/Private/GameSetting.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingAction.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingCollection.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingFilterState.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingValue.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingValueDiscrete.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingValueDiscreteDynamic.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingValueScalar.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingValueScalarDynamic.cpp \
    ../Plugins/GameSettings/Source/Private/GameSettingsModule.cpp \
    ../Plugins/GameSettings/Source/Private/Registry/GameSettingRegistry.cpp \
    ../Plugins/GameSettings/Source/Private/Registry/GameSettingRegistryChangeTracker.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingDetailExtension.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingDetailView.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingListEntry.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingListView.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingPanel.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingScreen.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/GameSettingVisualData.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/IGameSettingActionInterface.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Misc/GameSettingPressAnyKey.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Misc/GameSettingRotator.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Misc/KeyAlreadyBoundWarning.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/GameResponsivePanel.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/GameResponsivePanelSlot.cpp \
    ../Plugins/GameSettings/Source/Private/Widgets/Responsive/SGameResponsivePanel.cpp \
    ../Plugins/GameSubtitles/Source/Private/GameSubtitlesModule.cpp \
    ../Plugins/GameSubtitles/Source/Private/Players/MediaSubtitlesPlayer.cpp \
    ../Plugins/GameSubtitles/Source/Private/SubtitleDisplaySubsystem.cpp \
    ../Plugins/GameSubtitles/Source/Private/Widgets/SSubtitleDisplay.cpp \
    ../Plugins/GameSubtitles/Source/Private/Widgets/SubtitleDisplay.cpp \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageNodes/Private/GameplayMessageNodesModule.cpp \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageNodes/Private/K2Node_AsyncAction_ListenForGameplayMessages.cpp \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Private/GameFramework/AsyncAction_ListenForGameplayMessage.cpp \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Private/GameFramework/GameplayMessageRuntime.cpp \
    ../Plugins/GameplayMessageRouter/Source/GameplayMessageRuntime/Private/GameFramework/GameplayMessageSubsystem.cpp \
    ../Plugins/LyraExtTool/Source/LyraExtTool/Private/BPFunctionLibrary.cpp \
    ../Plugins/LyraExtTool/Source/LyraExtTool/Private/LyraExtTool.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularAIController.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularCharacter.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameMode.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameState.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularGameplayActorsModule.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPawn.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPlayerController.cpp \
    ../Plugins/ModularGameplayActors/Source/ModularGameplayActors/Private/ModularPlayerState.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketCapture.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketCaptureSubsystem.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketLevel.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketLevelInstance.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketLevelSystem.cpp \
    ../Plugins/PocketWorlds/Source/Private/PocketWorldsModule.cpp \
    ../Plugins/UIExtension/Source/Private/LogUIExtension.cpp \
    ../Plugins/UIExtension/Source/Private/UIExtensionModule.cpp \
    ../Plugins/UIExtension/Source/Private/UIExtensionSystem.cpp \
    ../Plugins/UIExtension/Source/Private/Widgets/UIExtensionPointWidget.cpp \
    LyraEditor/Commandlets/ContentValidationCommandlet.cpp \
    LyraEditor/LyraEditor.cpp \
    LyraEditor/LyraEditorEngine.cpp \
    LyraEditor/Private/AssetTypeActions_LyraContextEffectsLibrary.cpp \
    LyraEditor/Private/GameEditorStyle.cpp \
    LyraEditor/Private/LyraContextEffectsLibraryFactory.cpp \
    LyraEditor/Utilities/CheckChaosMeshCollision.cpp \
    LyraEditor/Utilities/CreateRedirectorPackage.cpp \
    LyraEditor/Utilities/DiffCollectionReferenceSupport.cpp \
    LyraEditor/Validation/EditorValidator.cpp \
    LyraEditor/Validation/EditorValidator_Blueprints.cpp \
    LyraEditor/Validation/EditorValidator_Load.cpp \
    LyraEditor/Validation/EditorValidator_MaterialFunctions.cpp \
    LyraEditor/Validation/EditorValidator_SourceControl.cpp \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_InventoryItem.cpp \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_ItemTagStack.cpp \
    LyraGame/AbilitySystem/Abilities/LyraAbilityCost_PlayerTagStack.cpp \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility.cpp \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Death.cpp \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Jump.cpp \
    LyraGame/AbilitySystem/Abilities/LyraGameplayAbility_Reset.cpp \
    LyraGame/AbilitySystem/Attributes/LyraAttributeSet.cpp \
    LyraGame/AbilitySystem/Attributes/LyraCombatSet.cpp \
    LyraGame/AbilitySystem/Attributes/LyraHealthSet.cpp \
    LyraGame/AbilitySystem/Executions/LyraDamageExecution.cpp \
    LyraGame/AbilitySystem/Executions/LyraHealExecution.cpp \
    LyraGame/AbilitySystem/LyraAbilitySet.cpp \
    LyraGame/AbilitySystem/LyraAbilitySourceInterface.cpp \
    LyraGame/AbilitySystem/LyraAbilitySystemComponent.cpp \
    LyraGame/AbilitySystem/LyraAbilitySystemGlobals.cpp \
    LyraGame/AbilitySystem/LyraAbilityTagRelationshipMapping.cpp \
    LyraGame/AbilitySystem/LyraGameplayAbilityTargetData_SingleTargetHit.cpp \
    LyraGame/AbilitySystem/LyraGameplayCueManager.cpp \
    LyraGame/AbilitySystem/LyraGameplayEffectContext.cpp \
    LyraGame/AbilitySystem/LyraGlobalAbilitySystem.cpp \
    LyraGame/AbilitySystem/LyraTaggedActor.cpp \
    LyraGame/AbilitySystem/Phases/LyraGamePhaseAbility.cpp \
    LyraGame/AbilitySystem/Phases/LyraGamePhaseSubsystem.cpp \
    LyraGame/Animation/LyraAnimInstance.cpp \
    LyraGame/Audio/LyraAudioMixEffectsSubsystem.cpp \
    LyraGame/Audio/LyraAudioSettings.cpp \
    LyraGame/Camera/LyraCameraComponent.cpp \
    LyraGame/Camera/LyraCameraMode.cpp \
    LyraGame/Camera/LyraCameraMode_ThirdPerson.cpp \
    LyraGame/Camera/LyraPlayerCameraManager.cpp \
    LyraGame/Camera/LyraUICameraManagerComponent.cpp \
    LyraGame/Character/LyraCharacter.cpp \
    LyraGame/Character/LyraCharacterMovementComponent.cpp \
    LyraGame/Character/LyraCharacterWithAbilities.cpp \
    LyraGame/Character/LyraHealthComponent.cpp \
    LyraGame/Character/LyraHeroComponent.cpp \
    LyraGame/Character/LyraPawn.cpp \
    LyraGame/Character/LyraPawnData.cpp \
    LyraGame/Character/LyraPawnExtensionComponent.cpp \
    LyraGame/Cosmetics/LyraControllerComponent_CharacterParts.cpp \
    LyraGame/Cosmetics/LyraCosmeticAnimationTypes.cpp \
    LyraGame/Cosmetics/LyraCosmeticCheats.cpp \
    LyraGame/Cosmetics/LyraCosmeticDeveloperSettings.cpp \
    LyraGame/Cosmetics/LyraPawnComponent_CharacterParts.cpp \
    LyraGame/Development/LyraBotCheats.cpp \
    LyraGame/Development/LyraDeveloperSettings.cpp \
    LyraGame/Development/LyraPlatformEmulationSettings.cpp \
    LyraGame/Equipment/LyraEquipmentDefinition.cpp \
    LyraGame/Equipment/LyraEquipmentInstance.cpp \
    LyraGame/Equipment/LyraEquipmentManagerComponent.cpp \
    LyraGame/Equipment/LyraGameplayAbility_FromEquipment.cpp \
    LyraGame/Equipment/LyraPickupDefinition.cpp \
    LyraGame/Equipment/LyraQuickBarComponent.cpp \
    LyraGame/Feedback/ContextEffects/AnimNotify_LyraContextEffects.cpp \
    LyraGame/Feedback/ContextEffects/LyraContextEffectComponent.cpp \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsInterface.cpp \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsLibrary.cpp \
    LyraGame/Feedback/ContextEffects/LyraContextEffectsSubsystem.cpp \
    LyraGame/Feedback/NumberPops/LyraDamagePopStyle.cpp \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent.cpp \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent_MeshText.cpp \
    LyraGame/Feedback/NumberPops/LyraNumberPopComponent_NiagaraText.cpp \
    LyraGame/GameFeatures/GameFeatureAction_AddAbilities.cpp \
    LyraGame/GameFeatures/GameFeatureAction_AddGameplayCuePath.cpp \
    LyraGame/GameFeatures/GameFeatureAction_AddInputBinding.cpp \
    LyraGame/GameFeatures/GameFeatureAction_AddInputContextMapping.cpp \
    LyraGame/GameFeatures/GameFeatureAction_AddWidget.cpp \
    LyraGame/GameFeatures/GameFeatureAction_SplitscreenConfig.cpp \
    LyraGame/GameFeatures/GameFeatureAction_WorldActionBase.cpp \
    LyraGame/GameFeatures/LyraGameFeaturePolicy.cpp \
    LyraGame/GameModes/AsyncAction_ExperienceReady.cpp \
    LyraGame/GameModes/LyraBotCreationComponent.cpp \
    LyraGame/GameModes/LyraExperienceActionSet.cpp \
    LyraGame/GameModes/LyraExperienceDefinition.cpp \
    LyraGame/GameModes/LyraExperienceManager.cpp \
    LyraGame/GameModes/LyraExperienceManagerComponent.cpp \
    LyraGame/GameModes/LyraGameMode.cpp \
    LyraGame/GameModes/LyraGameState.cpp \
    LyraGame/GameModes/LyraUserFacingExperienceDefinition.cpp \
    LyraGame/GameModes/LyraWorldSettings.cpp \
    LyraGame/Hotfix/LyraHotfixManager.cpp \
    LyraGame/Hotfix/LyraRuntimeOptions.cpp \
    LyraGame/Hotfix/LyraTextHotfixConfig.cpp \
    LyraGame/Input/LyraAimSensitivityData.cpp \
    LyraGame/Input/LyraInputComponent.cpp \
    LyraGame/Input/LyraInputConfig.cpp \
    LyraGame/Input/LyraInputModifiers.cpp \
    LyraGame/Input/LyraInputUserSettings.cpp \
    LyraGame/Input/LyraPlayerInput.cpp \
    LyraGame/Input/LyraPlayerMappableKeyProfile.cpp \
    LyraGame/Interaction/Abilities/GameplayAbilityTargetActor_Interact.cpp \
    LyraGame/Interaction/Abilities/LyraGameplayAbility_Interact.cpp \
    LyraGame/Interaction/InteractionStatics.cpp \
    LyraGame/Interaction/Tasks/AbilityTask_GrantNearbyInteraction.cpp \
    LyraGame/Interaction/Tasks/AbilityTask_WaitForInteractableTargets.cpp \
    LyraGame/Interaction/Tasks/AbilityTask_WaitForInteractableTargets_SingleLineTrace.cpp \
    LyraGame/Inventory/IPickupable.cpp \
    LyraGame/Inventory/InventoryFragment_EquippableItem.cpp \
    LyraGame/Inventory/InventoryFragment_PickupIcon.cpp \
    LyraGame/Inventory/InventoryFragment_QuickBarIcon.cpp \
    LyraGame/Inventory/InventoryFragment_SetStats.cpp \
    LyraGame/Inventory/LyraInventoryItemDefinition.cpp \
    LyraGame/Inventory/LyraInventoryItemInstance.cpp \
    LyraGame/Inventory/LyraInventoryManagerComponent.cpp \
    LyraGame/LyraGameModule.cpp \
    LyraGame/LyraGameplayTags.cpp \
    LyraGame/LyraLogChannels.cpp \
    LyraGame/Messages/GameplayMessageProcessor.cpp \
    LyraGame/Messages/LyraNotificationMessage.cpp \
    LyraGame/Messages/LyraVerbMessageHelpers.cpp \
    LyraGame/Messages/LyraVerbMessageReplication.cpp \
    LyraGame/Performance/LyraMemoryDebugCommands.cpp \
    LyraGame/Performance/LyraPerformanceSettings.cpp \
    LyraGame/Performance/LyraPerformanceStatSubsystem.cpp \
    LyraGame/Physics/PhysicalMaterialWithTags.cpp \
    LyraGame/Player/LyraCheatManager.cpp \
    LyraGame/Player/LyraDebugCameraController.cpp \
    LyraGame/Player/LyraLocalPlayer.cpp \
    LyraGame/Player/LyraPlayerBotController.cpp \
    LyraGame/Player/LyraPlayerController.cpp \
    LyraGame/Player/LyraPlayerSpawningManagerComponent.cpp \
    LyraGame/Player/LyraPlayerStart.cpp \
    LyraGame/Player/LyraPlayerState.cpp \
    LyraGame/Replays/AsyncAction_QueryReplays.cpp \
    LyraGame/Replays/LyraReplaySubsystem.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingAction_SafeZoneEditor.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingKeyboardInput.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscreteDynamic_AudioOutputDevice.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_Language.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_MobileFPSType.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_OverallQuality.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_PerfStat.cpp \
    LyraGame/Settings/CustomSettings/LyraSettingValueDiscrete_Resolution.cpp \
    LyraGame/Settings/LyraGameSettingRegistry.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_Audio.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_Gamepad.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_Gameplay.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_MouseAndKeyboard.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_PerfStats.cpp \
    LyraGame/Settings/LyraGameSettingRegistry_Video.cpp \
    LyraGame/Settings/LyraSettingsLocal.cpp \
    LyraGame/Settings/LyraSettingsShared.cpp \
    LyraGame/Settings/Screens/LyraBrightnessEditor.cpp \
    LyraGame/Settings/Screens/LyraSafeZoneEditor.cpp \
    LyraGame/Settings/Widgets/LyraSettingsListEntrySetting_KeyboardInput.cpp \
    LyraGame/System/GameplayTagStack.cpp \
    LyraGame/System/LyraActorUtilities.cpp \
    LyraGame/System/LyraAssetManager.cpp \
    LyraGame/System/LyraAssetManagerStartupJob.cpp \
    LyraGame/System/LyraDevelopmentStatics.cpp \
    LyraGame/System/LyraGameData.cpp \
    LyraGame/System/LyraGameEngine.cpp \
    LyraGame/System/LyraGameInstance.cpp \
    LyraGame/System/LyraGameSession.cpp \
    LyraGame/System/LyraReplicationGraph.cpp \
    LyraGame/System/LyraReplicationGraphSettings.cpp \
    LyraGame/System/LyraSignificanceManager.cpp \
    LyraGame/System/LyraSystemStatics.cpp \
    LyraGame/Teams/AsyncAction_ObserveTeam.cpp \
    LyraGame/Teams/AsyncAction_ObserveTeamColors.cpp \
    LyraGame/Teams/LyraTeamAgentInterface.cpp \
    LyraGame/Teams/LyraTeamCheats.cpp \
    LyraGame/Teams/LyraTeamCreationComponent.cpp \
    LyraGame/Teams/LyraTeamDisplayAsset.cpp \
    LyraGame/Teams/LyraTeamInfoBase.cpp \
    LyraGame/Teams/LyraTeamPrivateInfo.cpp \
    LyraGame/Teams/LyraTeamPublicInfo.cpp \
    LyraGame/Teams/LyraTeamStatics.cpp \
    LyraGame/Teams/LyraTeamSubsystem.cpp \
    LyraGame/Tests/LyraGameplayRpcRegistrationComponent.cpp \
    LyraGame/Tests/LyraTestControllerBootTest.cpp \
    LyraGame/UI/Basic/MaterialProgressBar.cpp \
    LyraGame/UI/Common/LyraBoundActionButton.cpp \
    LyraGame/UI/Common/LyraListView.cpp \
    LyraGame/UI/Common/LyraTabButtonBase.cpp \
    LyraGame/UI/Common/LyraTabListWidgetBase.cpp \
    LyraGame/UI/Common/LyraWidgetFactory.cpp \
    LyraGame/UI/Common/LyraWidgetFactory_Class.cpp \
    LyraGame/UI/Foundation/LyraActionWidget.cpp \
    LyraGame/UI/Foundation/LyraButtonBase.cpp \
    LyraGame/UI/Foundation/LyraConfirmationScreen.cpp \
    LyraGame/UI/Foundation/LyraControllerDisconnectedScreen.cpp \
    LyraGame/UI/Foundation/LyraLoadingScreenSubsystem.cpp \
    LyraGame/UI/Frontend/ApplyFrontendPerfSettingsAction.cpp \
    LyraGame/UI/Frontend/LyraFrontendStateComponent.cpp \
    LyraGame/UI/Frontend/LyraLobbyBackground.cpp \
    LyraGame/UI/IndicatorSystem/IndicatorDescriptor.cpp \
    LyraGame/UI/IndicatorSystem/IndicatorLayer.cpp \
    LyraGame/UI/IndicatorSystem/IndicatorLibrary.cpp \
    LyraGame/UI/IndicatorSystem/LyraIndicatorManagerComponent.cpp \
    LyraGame/UI/IndicatorSystem/SActorCanvas.cpp \
    LyraGame/UI/LyraActivatableWidget.cpp \
    LyraGame/UI/LyraGameViewportClient.cpp \
    LyraGame/UI/LyraHUD.cpp \
    LyraGame/UI/LyraHUDLayout.cpp \
    LyraGame/UI/LyraJoystickWidget.cpp \
    LyraGame/UI/LyraSettingScreen.cpp \
    LyraGame/UI/LyraSimulatedInputWidget.cpp \
    LyraGame/UI/LyraTaggedWidget.cpp \
    LyraGame/UI/LyraTouchRegion.cpp \
    LyraGame/UI/PerformanceStats/LyraPerfStatContainerBase.cpp \
    LyraGame/UI/PerformanceStats/LyraPerfStatWidgetBase.cpp \
    LyraGame/UI/Subsystem/LyraUIManagerSubsystem.cpp \
    LyraGame/UI/Subsystem/LyraUIMessaging.cpp \
    LyraGame/UI/Weapons/CircumferenceMarkerWidget.cpp \
    LyraGame/UI/Weapons/HitMarkerConfirmationWidget.cpp \
    LyraGame/UI/Weapons/LyraReticleWidgetBase.cpp \
    LyraGame/UI/Weapons/LyraWeaponUserInterface.cpp \
    LyraGame/UI/Weapons/SCircumferenceMarkerWidget.cpp \
    LyraGame/UI/Weapons/SHitMarkerConfirmationWidget.cpp \
    LyraGame/Weapons/InventoryFragment_ReticleConfig.cpp \
    LyraGame/Weapons/LyraDamageLogDebuggerComponent.cpp \
    LyraGame/Weapons/LyraGameplayAbility_RangedWeapon.cpp \
    LyraGame/Weapons/LyraRangedWeaponInstance.cpp \
    LyraGame/Weapons/LyraWeaponDebugSettings.cpp \
    LyraGame/Weapons/LyraWeaponInstance.cpp \
    LyraGame/Weapons/LyraWeaponSpawner.cpp \
    LyraGame/Weapons/LyraWeaponStateComponent.cpp
