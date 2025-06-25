




#TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

#
# below one line project name need to be lowercaes
#### Module 1
PRJMODULE1  = ActionRPG
DEFINES += "ACTIONRPG_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE1/UHT
INCLUDEPATH += $$PRJMODULE1 $$PRJMODULE1/Public $$PRJMODULE1/Private
#### Module 2
PRJMODULE2  = ActionRPGLoadingScreen
DEFINES += "ACTIONRPGLOADINGSCREEN_API=__declspec(dllexport)"
#
INCLUDEPATH += ../Intermediate/Build/Win64/UnrealEditor/Inc/$$PRJMODULE2/UHT
INCLUDEPATH += $$PRJMODULE2 $$PRJMODULE2/Public $$PRJMODULE2/Private
####


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


##
#
#

DISTFILES += \
    ActionRPG.Target.cs \
    ActionRPG/ActionRPG.Build.cs \
    ActionRPG/AddRoundIcon_UPL.xml \
    ActionRPGEditor.Target.cs \
    ActionRPGLoadingScreen/ActionRPGLoadingScreen.Build.cs

HEADERS += \
    ActionRPG/Public/Abilities/RPGAbilitySystemComponent.h \
    ActionRPG/Public/Abilities/RPGAbilityTask_PlayMontageAndWaitForEvent.h \
    ActionRPG/Public/Abilities/RPGAbilityTypes.h \
    ActionRPG/Public/Abilities/RPGAttributeSet.h \
    ActionRPG/Public/Abilities/RPGDamageExecution.h \
    ActionRPG/Public/Abilities/RPGGameplayAbility.h \
    ActionRPG/Public/Abilities/RPGTargetType.h \
    ActionRPG/Public/ActionRPG.h \
    ActionRPG/Public/Items/RPGItem.h \
    ActionRPG/Public/Items/RPGPotionItem.h \
    ActionRPG/Public/Items/RPGSkillItem.h \
    ActionRPG/Public/Items/RPGTokenItem.h \
    ActionRPG/Public/Items/RPGWeaponItem.h \
    ActionRPG/Public/RPGAssetManager.h \
    ActionRPG/Public/RPGBlueprintLibrary.h \
    ActionRPG/Public/RPGCharacterBase.h \
    ActionRPG/Public/RPGGameInstanceBase.h \
    ActionRPG/Public/RPGGameModeBase.h \
    ActionRPG/Public/RPGGameStateBase.h \
    ActionRPG/Public/RPGInventoryInterface.h \
    ActionRPG/Public/RPGPlayerControllerBase.h \
    ActionRPG/Public/RPGSaveGame.h \
    ActionRPG/Public/RPGTypes.h \
    ActionRPG/Resources/Windows/ActionRPG.rc \
    ActionRPGLoadingScreen/Public/ActionRPGLoadingScreen.h

SOURCES += \
    ActionRPG/Private/Abilities/RPGAbilitySystemComponent.cpp \
    ActionRPG/Private/Abilities/RPGAbilityTask_PlayMontageAndWaitForEvent.cpp \
    ActionRPG/Private/Abilities/RPGAbilityTypes.cpp \
    ActionRPG/Private/Abilities/RPGAttributeSet.cpp \
    ActionRPG/Private/Abilities/RPGDamageExecution.cpp \
    ActionRPG/Private/Abilities/RPGGameplayAbility.cpp \
    ActionRPG/Private/Abilities/RPGTargetType.cpp \
    ActionRPG/Private/ActionRPG.cpp \
    ActionRPG/Private/Items/RPGItem.cpp \
    ActionRPG/Private/RPGAssetManager.cpp \
    ActionRPG/Private/RPGBlueprintLibrary.cpp \
    ActionRPG/Private/RPGCharacterBase.cpp \
    ActionRPG/Private/RPGGameInstanceBase.cpp \
    ActionRPG/Private/RPGGameModeBase.cpp \
    ActionRPG/Private/RPGGameStateBase.cpp \
    ActionRPG/Private/RPGPlayerControllerBase.cpp \
    ActionRPG/Private/RPGSaveGame.cpp \
    ActionRPGLoadingScreen/Private/ActionRPGLoadingScreen.cpp
