---@meta
---@diagnostic disable

---@class AIArgumentType
---@field Bool AIArgumentType 0
---@field Int AIArgumentType 1
---@field Uint64 AIArgumentType 2
---@field Enum AIArgumentType 3
---@field Float AIArgumentType 4
---@field CName AIArgumentType 5
---@field TreeRef AIArgumentType 8
---@field Vector AIArgumentType 6
---@field Object AIArgumentType 7
---@field NodeRef AIArgumentType 9
---@field GlobalNodeId AIArgumentType 10
---@field PuppetRef AIArgumentType 11
---@field Serializable AIArgumentType 12
---@field TweakDBID AIArgumentType 13
AIArgumentType = {}

---@class AICombatSectorType
---@field ToBackLeft AICombatSectorType 0
---@field ToBackMid AICombatSectorType 1
---@field ToBackRight AICombatSectorType 2
---@field ToLeft AICombatSectorType 3
---@field ToMid AICombatSectorType 4
---@field ToRight AICombatSectorType 5
---@field FromLeft AICombatSectorType 6
---@field FromMid AICombatSectorType 7
---@field FromRight AICombatSectorType 8
---@field FromBackLeft AICombatSectorType 9
---@field FromBackMid AICombatSectorType 10
---@field FromBackRight AICombatSectorType 11
---@field BeyondToLeft AICombatSectorType 12
---@field BeyondToRight AICombatSectorType 13
---@field BeyondFromLeft AICombatSectorType 14
---@field BeyondFromRight AICombatSectorType 15
---@field Unknown AICombatSectorType 16
AICombatSectorType = {}

---@class AICombatSpaceSize
---@field Undefined AICombatSpaceSize 0
---@field Narrow AICombatSpaceSize 1
---@field Medium AICombatSpaceSize 2
---@field Huge AICombatSpaceSize 3
AICombatSpaceSize = {}

---@class AICommandContextsType
---@field Default AICommandContextsType 0
---@field Immediate AICommandContextsType 1
---@field Movement AICommandContextsType 2
---@field Workspot AICommandContextsType 3
---@field Aiming AICommandContextsType 4
AICommandContextsType = {}

---@class AICommandState
---@field NotExecuting AICommandState 0
---@field Enqueued AICommandState 1
---@field Executing AICommandState 2
---@field Cancelled AICommandState 3
---@field Interrupted AICommandState 4
---@field Success AICommandState 5
---@field Failure AICommandState 6
AICommandState = {}

---@class AICoverExposureMethod
---@field Standing_Step_Left AICoverExposureMethod 0
---@field Standing_Step_Right AICoverExposureMethod 1
---@field Standing_Lean_Left AICoverExposureMethod 2
---@field Standing_Lean_Right AICoverExposureMethod 3
---@field Crouching_Step_Left AICoverExposureMethod 4
---@field Crouching_Step_Right AICoverExposureMethod 5
---@field Crouching_Lean_Left AICoverExposureMethod 6
---@field Crouching_Lean_Right AICoverExposureMethod 7
---@field Lean_Over AICoverExposureMethod 8
---@field Stand_Up AICoverExposureMethod 9
---@field Standing_Blind_Left AICoverExposureMethod 10
---@field Standing_Blind_Right AICoverExposureMethod 11
---@field Crouching_Blind_Left AICoverExposureMethod 12
---@field Crouching_Blind_Right AICoverExposureMethod 13
---@field Crouching_Blind_Top AICoverExposureMethod 14
---@field Count AICoverExposureMethod 15
AICoverExposureMethod = {}

---@class AIEExecutionOutcome
---@field OUTCOME_FAILURE AIEExecutionOutcome 0
---@field OUTCOME_SUCCESS AIEExecutionOutcome 1
---@field OUTCOME_IN_PROGRESS AIEExecutionOutcome 2
AIEExecutionOutcome = {}

---@class AIEExecutionStatus
---@field STATUS_INVALID AIEExecutionStatus 0
---@field STATUS_SUCCESS AIEExecutionStatus 1
---@field STATUS_FAILURE AIEExecutionStatus 2
---@field STATUS_RUNNING AIEExecutionStatus 3
---@field STATUS_ABORTED AIEExecutionStatus 4
AIEExecutionStatus = {}

---@class AIEInterruptionImportance
---@field Undefined AIEInterruptionImportance 0
---@field Casual AIEInterruptionImportance 1
---@field Rush AIEInterruptionImportance 2
---@field Immediate AIEInterruptionImportance 3
---@field ForcedImmediate AIEInterruptionImportance 4
AIEInterruptionImportance = {}

---@class AIEInterruptionOutcome
---@field INTERRUPTION_SUCCESS AIEInterruptionOutcome 0
---@field INTERRUPTION_DELAYED AIEInterruptionOutcome 1
---@field INTERRUPTION_FAILED AIEInterruptionOutcome 2
AIEInterruptionOutcome = {}

---@class AIESharedVarDefinitionType
---@field SVInt AIESharedVarDefinitionType 0
---@field SVFloat AIESharedVarDefinitionType 1
---@field SVBool AIESharedVarDefinitionType 2
---@field SVName AIESharedVarDefinitionType 3
---@field SVTarget AIESharedVarDefinitionType 4
---@field SVPosition AIESharedVarDefinitionType 5
---@field SVNodeInstance AIESharedVarDefinitionType 6
---@field SVGlobalNodeRef AIESharedVarDefinitionType 7
AIESharedVarDefinitionType = {}

---@class AIForcedBehaviourPriority
---@field AboveIdle AIForcedBehaviourPriority 0
---@field AboveCombat AIForcedBehaviourPriority 1
---@field AboveCriticalState AIForcedBehaviourPriority 2
---@field AboveDeath AIForcedBehaviourPriority 3
AIForcedBehaviourPriority = {}

---@class AIIWorkspotManagerSpotUsageState
---@field Reserved AIIWorkspotManagerSpotUsageState 0
---@field Occupied AIIWorkspotManagerSpotUsageState 1
---@field None AIIWorkspotManagerSpotUsageState 2
AIIWorkspotManagerSpotUsageState = {}

---@class AIParameterizationType
---@field BehaviorArgument AIParameterizationType 0
---@field CustomValue AIParameterizationType 1
---@field CharacterRecord AIParameterizationType 2
---@field TweakDB AIParameterizationType 3
---@field ActionRecord AIParameterizationType 4
---@field Blackboard AIParameterizationType 5
---@field Delegate AIParameterizationType 6
AIParameterizationType = {}

---@class AIReactionCountOutcome
---@field Failed AIReactionCountOutcome 0
---@field Succeded AIReactionCountOutcome 1
---@field NotFound AIReactionCountOutcome 2
AIReactionCountOutcome = {}

---@class AISignalFlags
---@field Undefined AISignalFlags 0
---@field OverridesSelf AISignalFlags 1
---@field InterruptsSamePriorityTask AISignalFlags 2
---@field InterruptsForcedBehavior AISignalFlags 4
---@field AcceptsAdditives AISignalFlags 8
AISignalFlags = {}

---@class AISocketsForRig
---@field Undefined AISocketsForRig 0
---@field ManAverage AISocketsForRig 1
---@field ManBig AISocketsForRig 2
---@field ManFat AISocketsForRig 3
---@field WomanAverage AISocketsForRig 4
---@field WomanBig AISocketsForRig 5
---@field ChildMale AISocketsForRig 6
AISocketsForRig = {}

---@class AISquadType
---@field Community AISquadType 0
---@field Combat AISquadType 4
---@field Follower AISquadType 6
---@field Unknown AISquadType 7
AISquadType = {}

---@class AIThreatPersistenceStatus
---@field ThreatNotFound AIThreatPersistenceStatus 0
---@field Persistent AIThreatPersistenceStatus 1
---@field NotPersistent AIThreatPersistenceStatus 2
AIThreatPersistenceStatus = {}

---@class AITrackedStatusType
---@field Unknown AITrackedStatusType 0
---@field Friendly AITrackedStatusType 1
---@field Neutral AITrackedStatusType 2
---@field Hostile AITrackedStatusType 3
AITrackedStatusType = {}

---@class AIUninterruptibleActionType
---@field None AIUninterruptibleActionType 0
---@field Default AIUninterruptibleActionType 1
---@field EnteringCover AIUninterruptibleActionType 2
---@field LeavingCover AIUninterruptibleActionType 3
---@field Count AIUninterruptibleActionType 4
AIUninterruptibleActionType = {}

---@class AIactionParamsPackageTypes
---@field Default AIactionParamsPackageTypes 0
---@field Reaction AIactionParamsPackageTypes 1
---@field StatusEffect AIactionParamsPackageTypes 2
---@field Undefined AIactionParamsPackageTypes 3
AIactionParamsPackageTypes = {}

---@class AIbehaviorActivationStatus
---@field NOT_ACTIVATED AIbehaviorActivationStatus 0
---@field ACTIVATING AIbehaviorActivationStatus 1
---@field ACTIVATED AIbehaviorActivationStatus 2
---@field DEACTIVATING AIbehaviorActivationStatus 3
AIbehaviorActivationStatus = {}

---@class AIbehaviorCombatModes
---@field Default AIbehaviorCombatModes 0
---@field LowFPS AIbehaviorCombatModes 1
---@field Background AIbehaviorCombatModes 2
AIbehaviorCombatModes = {}

---@class AIbehaviorCompletionStatus
---@field FAILURE AIbehaviorCompletionStatus 0
---@field SUCCESS AIbehaviorCompletionStatus 1
AIbehaviorCompletionStatus = {}

---@class AIbehaviorConditionOutcomes
---@field True AIbehaviorConditionOutcomes 0
---@field False AIbehaviorConditionOutcomes 1
---@field Failure AIbehaviorConditionOutcomes 2
AIbehaviorConditionOutcomes = {}

---@class AIbehaviorDebugNodeStatus
---@field Undefined AIbehaviorDebugNodeStatus 0
---@field NotRunning AIbehaviorDebugNodeStatus 1
---@field ForceStopped AIbehaviorDebugNodeStatus 2
---@field Running AIbehaviorDebugNodeStatus 3
---@field Success AIbehaviorDebugNodeStatus 4
---@field Failure AIbehaviorDebugNodeStatus 5
AIbehaviorDebugNodeStatus = {}

---@class AIbehaviorEdgeConditionAction
---@field None AIbehaviorEdgeConditionAction 0
---@field Toggle AIbehaviorEdgeConditionAction 1
---@field TurnOn AIbehaviorEdgeConditionAction 2
---@field TurnOff AIbehaviorEdgeConditionAction 3
AIbehaviorEdgeConditionAction = {}

---@class AIbehaviorEntityLODConditions
---@field Crowd AIbehaviorEntityLODConditions 0
---@field Cinematic AIbehaviorEntityLODConditions 1
---@field WorkspotStatic AIbehaviorEntityLODConditions 2
AIbehaviorEntityLODConditions = {}

---@class AIbehaviorMaybeNodeAction
---@field Succeed AIbehaviorMaybeNodeAction 0
---@field Fail AIbehaviorMaybeNodeAction 1
---@field RepeatChild AIbehaviorMaybeNodeAction 2
AIbehaviorMaybeNodeAction = {}

---@class AIbehaviorMovementPolicyTaskFunctions
---@field SetMovementType AIbehaviorMovementPolicyTaskFunctions 0
---@field SetTargetObject AIbehaviorMovementPolicyTaskFunctions 1
---@field UseFollowSlots AIbehaviorMovementPolicyTaskFunctions 2
---@field SetLocalTargetOffset AIbehaviorMovementPolicyTaskFunctions 3
---@field SetIgnoreNavigation AIbehaviorMovementPolicyTaskFunctions 4
---@field SetStrafingTarget AIbehaviorMovementPolicyTaskFunctions 5
AIbehaviorMovementPolicyTaskFunctions = {}

---@class AIbehaviorNaryExpressionOperators
---@field LogicalAnd AIbehaviorNaryExpressionOperators 0
---@field LogicalOr AIbehaviorNaryExpressionOperators 1
AIbehaviorNaryExpressionOperators = {}

---@class AIbehaviorParallelNodeChildState
---@field Inactive AIbehaviorParallelNodeChildState 0
---@field Active AIbehaviorParallelNodeChildState 1
---@field Completed AIbehaviorParallelNodeChildState 2
AIbehaviorParallelNodeChildState = {}

---@class AIbehaviorParallelNodeWaitFor
---@field LeftChild AIbehaviorParallelNodeWaitFor 0
---@field RightChild AIbehaviorParallelNodeWaitFor 1
---@field AllChildren AIbehaviorParallelNodeWaitFor 2
---@field BothChildren AIbehaviorParallelNodeWaitFor 2
---@field AnyChild AIbehaviorParallelNodeWaitFor 3
AIbehaviorParallelNodeWaitFor = {}

---@class AIbehaviorSignalConditionModes
---@field CurrentValue AIbehaviorSignalConditionModes 0
---@field StartOfFrameValue AIbehaviorSignalConditionModes 1
---@field RisingEdge AIbehaviorSignalConditionModes 2
---@field FallingEdge AIbehaviorSignalConditionModes 3
---@field AnyEdge AIbehaviorSignalConditionModes 4
AIbehaviorSignalConditionModes = {}

---@class AIbehaviorStateCompletionStatus
---@field ForwardBehaviorStatus AIbehaviorStateCompletionStatus 0
---@field Failure AIbehaviorStateCompletionStatus 1
---@field Success AIbehaviorStateCompletionStatus 2
AIbehaviorStateCompletionStatus = {}

---@class AIbehaviorStoryActionType
---@field Setup AIbehaviorStoryActionType 0
---@field Stop AIbehaviorStoryActionType 1
AIbehaviorStoryActionType = {}

---@class AIbehaviorSystemVariableExpressionTypes
---@field IsFPSLow AIbehaviorSystemVariableExpressionTypes 0
AIbehaviorSystemVariableExpressionTypes = {}

---@class AIbehaviorUpdateOutcome
---@field IN_PROGRESS AIbehaviorUpdateOutcome 0
---@field SUCCESS AIbehaviorUpdateOutcome 1
---@field FAILURE AIbehaviorUpdateOutcome 2
AIbehaviorUpdateOutcome = {}

---@class AIinfluenceEBumpPolicy
---@field Static AIinfluenceEBumpPolicy 0
---@field Lean AIinfluenceEBumpPolicy 1
---@field Move AIinfluenceEBumpPolicy 2
AIinfluenceEBumpPolicy = {}

---@class ATUIComputerTestStepMode
---@field SINGLE_ACTION ATUIComputerTestStepMode 0
---@field ROLLING ATUIComputerTestStepMode 1
ATUIComputerTestStepMode = {}

---@class ActiveMode
---@field UNINITIALIZED ActiveMode 0
---@field CLEAR ActiveMode 1
---@field SEMI ActiveMode 2
---@field COMBAT ActiveMode 3
---@field FOCUS ActiveMode 4
ActiveMode = {}

---@class ActorVisibilityStatus
---@field OUTSIDE_CAMERA ActorVisibilityStatus 0
---@field IN_CAMERA ActorVisibilityStatus 1
---@field VISIBLE ActorVisibilityStatus 2
---@field LOOKEDAT ActorVisibilityStatus 3
ActorVisibilityStatus = {}

---@class AdvertisementFormat
---@field Format_0_7x1 AdvertisementFormat 0
---@field Format_1x1 AdvertisementFormat 1
---@field Format_1x0_7 AdvertisementFormat 2
---@field Format_1x1_5 AdvertisementFormat 3
---@field Format_1x2 AdvertisementFormat 4
---@field Format_1x3_3 AdvertisementFormat 5
---@field Format_1_5x1 AdvertisementFormat 6
---@field Format_2x1 AdvertisementFormat 7
---@field Format_3_3x1 AdvertisementFormat 8
---@field Format_3x4 AdvertisementFormat 9
---@field Format_4x3 AdvertisementFormat 10
---@field Format_9x16 AdvertisementFormat 11
---@field Format_9x21 AdvertisementFormat 12
---@field Format_16x9 AdvertisementFormat 13
---@field Format_21x9 AdvertisementFormat 14
---@field Format_a AdvertisementFormat 15
---@field Format_b AdvertisementFormat 16
---@field Format_c AdvertisementFormat 17
---@field Format_d AdvertisementFormat 18
---@field Format_e AdvertisementFormat 19
---@field Format_f AdvertisementFormat 20
---@field Format_i AdvertisementFormat 21
---@field Format_o AdvertisementFormat 22
---@field Format_k AdvertisementFormat 23
AdvertisementFormat = {}

---@class AdvertisementLoadMode
---@field TweakDB AdvertisementLoadMode 0
---@field Override AdvertisementLoadMode 1
AdvertisementLoadMode = {}

---@class AimAssistSettingConfig
---@field Default AimAssistSettingConfig 0
---@field Scanning AimAssistSettingConfig 1
---@field LeftHandCyberwareCharge AimAssistSettingConfig 2
---@field LeftHandCyberware AimAssistSettingConfig 3
---@field MeleeCombat AimAssistSettingConfig 4
---@field MeleeCombatIdle AimAssistSettingConfig 5
---@field AimingLimbCyber AimAssistSettingConfig 6
---@field Aiming AimAssistSettingConfig 7
---@field QuickMelee AimAssistSettingConfig 8
---@field VehicleCombat AimAssistSettingConfig 9
---@field Sprinting AimAssistSettingConfig 10
---@field LimbCyber AimAssistSettingConfig 11
---@field Count AimAssistSettingConfig 12
AimAssistSettingConfig = {}

---@class ArcadeMinigame
---@field INVALID ArcadeMinigame 0
---@field RoachRace ArcadeMinigame 1
---@field Panzer ArcadeMinigame 2
---@field Retros ArcadeMinigame 3
---@field Quadracer ArcadeMinigame 4
ArcadeMinigame = {}

---@class AttitudeChange
---@field DONT_CHANGE AttitudeChange 0
---@field FRIENDLY AttitudeChange 1
---@field NEUTRAL AttitudeChange 2
---@field HOSTILE AttitudeChange 3
AttitudeChange = {}

---@class AttributeButtonState
---@field Default AttributeButtonState 0
---@field Hover AttributeButtonState 1
AttributeButtonState = {}

---@class BlacklistReason
---@field UNINITIALIZED BlacklistReason 0
---@field TRESPASSING BlacklistReason 1
---@field REPRIMAND BlacklistReason 2
---@field COMBAT BlacklistReason 3
BlacklistReason = {}

---@class ButtonStatus
---@field DEFAULT ButtonStatus 0
---@field PROCESSING ButtonStatus 1
---@field DISABLED ButtonStatus 2
ButtonStatus = {}

---@class CharacterScreenType
---@field Attributes CharacterScreenType 0
---@field Perks CharacterScreenType 1
CharacterScreenType = {}

---@class ClueState
---@field active ClueState 0
---@field complete ClueState 1
ClueState = {}

---@class CodexCategoryType
---@field All CodexCategoryType 0
---@field Database CodexCategoryType 1
---@field Characters CodexCategoryType 2
---@field Locations CodexCategoryType 3
---@field Tutorials CodexCategoryType 4
---@field Count CodexCategoryType 5
---@field Invalid CodexCategoryType -1
CodexCategoryType = {}

---@class CodexDataSource
---@field Undefined CodexDataSource 0
---@field Codex CodexDataSource 1
---@field Onscreen CodexDataSource 2
CodexDataSource = {}

---@class CodexImageType
---@field Default CodexImageType 0
---@field Character CodexImageType 1
CodexImageType = {}

---@class ConfigGraphicsQualityLevel
---@field Low ConfigGraphicsQualityLevel 0
---@field Medium ConfigGraphicsQualityLevel 1
---@field High ConfigGraphicsQualityLevel 2
---@field Ultra ConfigGraphicsQualityLevel 3
---@field RaytracingLow ConfigGraphicsQualityLevel 5
---@field RaytracingMedium ConfigGraphicsQualityLevel 6
---@field RaytracingUltra ConfigGraphicsQualityLevel 7
---@field Cinematic ConfigGraphicsQualityLevel 8
---@field Cinematic_Raytracing ConfigGraphicsQualityLevel 9
---@field CinematicEXR ConfigGraphicsQualityLevel 10
---@field CinematicEXR_Raytracing ConfigGraphicsQualityLevel 11
---@field PlayStation4 ConfigGraphicsQualityLevel 12
---@field XboxOne ConfigGraphicsQualityLevel 13
---@field PlayStation4Pro ConfigGraphicsQualityLevel 14
---@field XboxOneX ConfigGraphicsQualityLevel 15
---@field PlayStation5_Performance ConfigGraphicsQualityLevel 16
---@field PlayStation5_Quality ConfigGraphicsQualityLevel 17
---@field PlayStation5_Backcompat_Performance ConfigGraphicsQualityLevel 18
---@field PlayStation5_Backcompat_Quality ConfigGraphicsQualityLevel 19
---@field XboxSeriesS_Performance ConfigGraphicsQualityLevel 20
---@field XboxSeriesS_Quality ConfigGraphicsQualityLevel 21
---@field XboxSeriesS_Backcompat ConfigGraphicsQualityLevel 22
---@field XboxSeriesX_Performance ConfigGraphicsQualityLevel 23
---@field XboxSeriesX_Quality ConfigGraphicsQualityLevel 24
---@field XboxSeriesX_Backcompat_Performance ConfigGraphicsQualityLevel 25
---@field XboxSeriesX_Backcompat_Quality ConfigGraphicsQualityLevel 26
---@field SteamDeck ConfigGraphicsQualityLevel 4
---@field SafeMode ConfigGraphicsQualityLevel 29
---@field GeForceNow ConfigGraphicsQualityLevel 27
---@field IconsGeneration ConfigGraphicsQualityLevel 28
---@field Auto ConfigGraphicsQualityLevel 30
---@field GGP_Performance ConfigGraphicsQualityLevel 33
---@field GGP_Quality ConfigGraphicsQualityLevel 34
ConfigGraphicsQualityLevel = {}

---@class ConfigMeshQualityLevel
---@field Default ConfigMeshQualityLevel 0
---@field Console ConfigMeshQualityLevel 1
ConfigMeshQualityLevel = {}

---@class ConfigTextureQualityLevel
---@field Console ConfigTextureQualityLevel 0
---@field ConsoleSafe ConfigTextureQualityLevel 1
---@field Low ConfigTextureQualityLevel 2
---@field Medium ConfigTextureQualityLevel 3
---@field High ConfigTextureQualityLevel 4
---@field SafeMode ConfigTextureQualityLevel 5
---@field Auto ConfigTextureQualityLevel 6
ConfigTextureQualityLevel = {}

---@class CrafringMaterialItemHighlight
---@field None CrafringMaterialItemHighlight 0
---@field Hover CrafringMaterialItemHighlight 1
---@field Add CrafringMaterialItemHighlight 2
---@field Remove CrafringMaterialItemHighlight 3
CrafringMaterialItemHighlight = {}

---@class CraftingCommands
---@field CraftingFinished CraftingCommands 0
---@field DisassemblingFinished CraftingCommands 1
---@field UpgradingFinished CraftingCommands 2
---@field Failed CraftingCommands 3
CraftingCommands = {}

---@class CraftingMode
---@field craft CraftingMode 0
---@field upgrade CraftingMode 1
CraftingMode = {}

---@class CraftingNotificationType
---@field NoPerks CraftingNotificationType 0
---@field NotEnoughMaterial CraftingNotificationType 1
CraftingNotificationType = {}

---@class CurrencyNotificationAnimState
---@field Inactive CurrencyNotificationAnimState 0
---@field Intro CurrencyNotificationAnimState 1
---@field Active CurrencyNotificationAnimState 2
---@field Outro CurrencyNotificationAnimState 3
CurrencyNotificationAnimState = {}

---@class CustomButtonType
---@field UnlockAllVehicles CustomButtonType 0
---@field ShowAllPoiMappins CustomButtonType 1
---@field DiscoverAllPoiMappins CustomButtonType 2
CustomButtonType = {}

---@class CustomWeaponWheelSlot
---@field FreeHands CustomWeaponWheelSlot 0
---@field Fists CustomWeaponWheelSlot 1
CustomWeaponWheelSlot = {}

---@class CyberwareInfoType
---@field Default CyberwareInfoType 0
---@field Cyberdeck CyberwareInfoType 1
CyberwareInfoType = {}

---@class CyberwareScreenType
---@field Ripperdoc CyberwareScreenType 0
---@field Inventory CyberwareScreenType 1
CyberwareScreenType = {}

---@class DamageEffectDisplayType
---@field Flat DamageEffectDisplayType 0
---@field TargetHealth DamageEffectDisplayType 1
---@field Invalid DamageEffectDisplayType -1
DamageEffectDisplayType = {}

---@class DerivedFilterResult
---@field False DerivedFilterResult 0
---@field True DerivedFilterResult 1
---@field Pass DerivedFilterResult 2
DerivedFilterResult = {}

---@class DeviceStimType
---@field Distract DeviceStimType 0
---@field VisualDistract DeviceStimType 1
---@field Explosion DeviceStimType 2
---@field VentilationAreaEffect DeviceStimType 3
---@field None DeviceStimType 4
DeviceStimType = {}

---@class DronePose
---@field Relaxed DronePose 0
---@field Combat DronePose 1
DronePose = {}

---@class DropPointPackageStatus
---@field NOT_ACTIVE DropPointPackageStatus 0
---@field ACTIVE DropPointPackageStatus 1
---@field COLLECTED DropPointPackageStatus 2
DropPointPackageStatus = {}

---@class DropdownDisplayContext
---@field NotSet DropdownDisplayContext 0
---@field Default DropdownDisplayContext 1
---@field ItemChooserWeapon DropdownDisplayContext 2
DropdownDisplayContext = {}

---@class DropdownItemDirection
---@field None DropdownItemDirection 0
---@field Down DropdownItemDirection 1
---@field Up DropdownItemDirection 2
DropdownItemDirection = {}

---@class DynamicTextureDataFormat
---@field R_Uint8 DynamicTextureDataFormat 0
---@field R_Float16 DynamicTextureDataFormat 1
---@field R_Float32 DynamicTextureDataFormat 2
---@field RG_Float16 DynamicTextureDataFormat 3
---@field RG_Float32 DynamicTextureDataFormat 4
---@field RGBA_Uint8 DynamicTextureDataFormat 5
---@field RGBA_Uint8_SRGB DynamicTextureDataFormat 6
---@field RGBA_Float16 DynamicTextureDataFormat 7
---@field RGBA_Float32 DynamicTextureDataFormat 8
DynamicTextureDataFormat = {}

---@class EAIActionPhase
---@field Inactive EAIActionPhase 0
---@field Startup EAIActionPhase 1
---@field Loop EAIActionPhase 2
---@field Recovery EAIActionPhase 3
EAIActionPhase = {}

---@class EAIActionState
---@field Inactive EAIActionState 0
---@field Startup EAIActionState 1
---@field Loop EAIActionState 2
---@field Recover EAIActionState 3
EAIActionState = {}

---@class EAIActionTarget
---@field None EAIActionTarget 0
---@field CombatTarget EAIActionTarget 1
---@field FriendlyTarget EAIActionTarget 2
---@field CurrentCover EAIActionTarget 3
---@field StimTarget EAIActionTarget 4
---@field StimSource EAIActionTarget 5
---@field CustomWorldPosition EAIActionTarget 6
EAIActionTarget = {}

---@class EAIAttitude
---@field AIA_Friendly EAIAttitude 0
---@field AIA_Neutral EAIAttitude 1
---@field AIA_Hostile EAIAttitude 2
EAIAttitude = {}

---@class EAIBackgroundCombatStep
---@field ChangeCover EAIBackgroundCombatStep 0
---@field ChangeTarget EAIBackgroundCombatStep 1
EAIBackgroundCombatStep = {}

---@class EAIBlockDirection
---@field Undefined EAIBlockDirection 0
---@field Center EAIBlockDirection 1
---@field Left EAIBlockDirection 2
---@field Right EAIBlockDirection 3
EAIBlockDirection = {}

---@class EAICombatPreset
---@field None EAICombatPreset 0
---@field IsReckless EAICombatPreset 1
---@field IsAggressive EAICombatPreset 2
---@field IsBalanced EAICombatPreset 3
---@field IsDefensive EAICombatPreset 4
---@field IsCautious EAICombatPreset 5
EAICombatPreset = {}

---@class EAICoverAction
---@field StepOut EAICoverAction 0
---@field LeanOut EAICoverAction 1
---@field StepUp EAICoverAction 2
---@field LeanOver EAICoverAction 3
---@field Undefined EAICoverAction 4
EAICoverAction = {}

---@class EAICoverActionDirection
---@field Front EAICoverActionDirection 0
---@field FrontRight EAICoverActionDirection 1
---@field Right EAICoverActionDirection 2
---@field BackRight EAICoverActionDirection 3
---@field Back EAICoverActionDirection 4
---@field BackLeft EAICoverActionDirection 5
---@field Left EAICoverActionDirection 6
---@field FrontLeft EAICoverActionDirection 7
EAICoverActionDirection = {}

---@class EAIDismembermentBodyPart
---@field NONE EAIDismembermentBodyPart -1
---@field LEFT_ARM EAIDismembermentBodyPart 0
---@field RIGHT_ARM EAIDismembermentBodyPart 1
---@field LEFT_LEG EAIDismembermentBodyPart 2
---@field RIGHT_LEG EAIDismembermentBodyPart 3
---@field HEAD EAIDismembermentBodyPart 4
---@field BODY EAIDismembermentBodyPart 5
EAIDismembermentBodyPart = {}

---@class EAIGateEventFlags
---@field AIGEF_Undefined EAIGateEventFlags 0
---@field AIGEF_OverridesSelf EAIGateEventFlags 1
---@field AIGEF_InterruptsSamePriorityTask EAIGateEventFlags 2
---@field AIGEF_InterruptsForcedBehavior EAIGateEventFlags 3
---@field AIGEF_AcceptsAdditives EAIGateEventFlags 4
EAIGateEventFlags = {}

---@class EAIGateSignalFlags
---@field AIGSF_Undefined EAIGateSignalFlags 0
---@field AIGSF_OverridesSelf EAIGateSignalFlags 1
---@field AIGSF_InterruptsSamePriorityTask EAIGateSignalFlags 2
---@field AIGSF_InterruptsForcedBehavior EAIGateSignalFlags 3
---@field AIGSF_AcceptsAdditives EAIGateSignalFlags 4
EAIGateSignalFlags = {}

---@class EAIHitBodyPart
---@field None EAIHitBodyPart -1
---@field Head EAIHitBodyPart 1
---@field LeftTorso EAIHitBodyPart 2
---@field RightTorso EAIHitBodyPart 3
---@field Belly EAIHitBodyPart 4
---@field LeftLeg EAIHitBodyPart 5
---@field RightLeg EAIHitBodyPart 6
EAIHitBodyPart = {}

---@class EAIHitDirection
---@field None EAIHitDirection -1
---@field Left EAIHitDirection 0
---@field Back EAIHitDirection 1
---@field Right EAIHitDirection 2
---@field Front EAIHitDirection 3
EAIHitDirection = {}

---@class EAIHitIntensity
---@field None EAIHitIntensity -1
---@field Light EAIHitIntensity 0
---@field Medium EAIHitIntensity 1
---@field Heavy EAIHitIntensity 2
---@field Explosion EAIHitIntensity 3
EAIHitIntensity = {}

---@class EAIHitSource
---@field None EAIHitSource -1
---@field Ranged EAIHitSource 0
---@field MeleeSharp EAIHitSource 1
---@field MeleeBlunt EAIHitSource 2
---@field QuickMelee EAIHitSource 3
EAIHitSource = {}

---@class EAILastHitReactionPlayed
---@field None EAILastHitReactionPlayed -1
---@field Twitch EAILastHitReactionPlayed 0
---@field Impact EAILastHitReactionPlayed 1
---@field Stagger EAILastHitReactionPlayed 2
---@field Knockdown EAILastHitReactionPlayed 3
EAILastHitReactionPlayed = {}

---@class EAIPlayerSquadOrder
---@field Takedown EAIPlayerSquadOrder 0
---@field Invalid EAIPlayerSquadOrder 1
EAIPlayerSquadOrder = {}

---@class EAIRole
---@field None EAIRole 0
---@field Patrol EAIRole 1
---@field Follower EAIRole 2
EAIRole = {}

---@class EAIShootingPatternRange
---@field Close EAIShootingPatternRange 0
---@field Medium EAIShootingPatternRange 1
---@field Long EAIShootingPatternRange 2
---@field Undefined EAIShootingPatternRange 3
EAIShootingPatternRange = {}

---@class EAISquadAction
---@field Invalid EAISquadAction 0
---@field Shoot EAISquadAction 1
---@field Charge EAISquadAction 2
---@field TakeCover EAISquadAction 3
---@field Search EAISquadAction 4
---@field Reprimand EAISquadAction 5
---@field Investigate EAISquadAction 6
---@field Melee EAISquadAction 7
---@field Taunt EAISquadAction 8
---@field Defend EAISquadAction 9
---@field Takedown EAISquadAction 10
---@field Peek EAISquadAction 11
---@field GrenadeThrow EAISquadAction 12
---@field Dash EAISquadAction 13
---@field Sync EAISquadAction 14
---@field BattleCry EAISquadAction 15
---@field CallOff EAISquadAction 16
---@field BackUp EAISquadAction 17
---@field RangedStrafe EAISquadAction 18
---@field Quickhack EAISquadAction 19
---@field GroupReaction EAISquadAction 20
---@field Crouch EAISquadAction 21
EAISquadAction = {}

---@class EAISquadChoiceAlgorithm
---@field Invalid EAISquadChoiceAlgorithm 0
---@field TargetDistance EAISquadChoiceAlgorithm 1
---@field SectorDistance EAISquadChoiceAlgorithm 2
---@field SquadmateDistance EAISquadChoiceAlgorithm 3
---@field CoopDistance EAISquadChoiceAlgorithm 4
---@field LineOfSight EAISquadChoiceAlgorithm 5
---@field StimDistance EAISquadChoiceAlgorithm 6
---@field StimDistancePerSource EAISquadChoiceAlgorithm 7
---@field AvoidLastPuppetIfPossible EAISquadChoiceAlgorithm 8
---@field Officer EAISquadChoiceAlgorithm 9
---@field Group EAISquadChoiceAlgorithm 10
---@field CallForBackUp EAISquadChoiceAlgorithm 11
---@field CallOffAction EAISquadChoiceAlgorithm 12
---@field ShareNewThreat EAISquadChoiceAlgorithm 13
EAISquadChoiceAlgorithm = {}

---@class EAISquadRing
---@field Invalid EAISquadRing 0
---@field Melee EAISquadRing 1
---@field Close EAISquadRing 2
---@field Medium EAISquadRing 3
---@field Far EAISquadRing 4
---@field Extreme EAISquadRing 5
EAISquadRing = {}

---@class EAISquadTactic
---@field Invalid EAISquadTactic 0
---@field Flanking EAISquadTactic 1
---@field Assault EAISquadTactic 2
---@field Snipe EAISquadTactic 3
---@field Regroup EAISquadTactic 4
---@field Retreat EAISquadTactic 5
---@field Defend EAISquadTactic 6
---@field Suppress EAISquadTactic 7
---@field Medivac EAISquadTactic 8
---@field Panic EAISquadTactic 9
EAISquadTactic = {}

---@class EAISquadVerb
---@field Invalid EAISquadVerb 0
---@field JoinSquad EAISquadVerb 1
---@field LeaveSquad EAISquadVerb 2
---@field OpenSquadAction EAISquadVerb 3
---@field RevokeSquadAction EAISquadVerb 4
---@field RevokeOrder EAISquadVerb 5
---@field CommitToSquadAction EAISquadVerb 6
---@field ReportDoneOnSquadAction EAISquadVerb 7
---@field ReportFailureOnSquadAction EAISquadVerb 8
---@field EvaluateTicketActivation EAISquadVerb 9
---@field EvaluateTicketDeactivation EAISquadVerb 10
---@field AcknowledgeOrder EAISquadVerb 11
EAISquadVerb = {}

---@class EAITargetType
---@field AITT_Undefined EAITargetType 0
---@field AITT_Argument EAITargetType 1
---@field AITT_Owner EAITargetType 2
---@field AITT_CombatTarget EAITargetType 3
---@field AITT_FacingTarget EAITargetType 4
---@field AITT_Attacker EAITargetType 5
---@field AITT_Companion EAITargetType 6
---@field AITT_Cover EAITargetType 7
EAITargetType = {}

---@class EAIThreatCalculationType
---@field Regular EAIThreatCalculationType 0
---@field Boss EAIThreatCalculationType 1
---@field Madness EAIThreatCalculationType 2
EAIThreatCalculationType = {}

---@class EAITicketStatus
---@field Invalid EAITicketStatus 0
---@field Evaluate EAITicketStatus 1
---@field OrderFail EAITicketStatus 2
---@field OrderDone EAITicketStatus 3
---@field OrderRevoked EAITicketStatus 4
EAITicketStatus = {}

---@class EActionContext
---@field None EActionContext -1
---@field Direct EActionContext 0
---@field QHack EActionContext 1
---@field Master EActionContext 2
---@field Spiderbot EActionContext 3
EActionContext = {}

---@class EActionInactivityReson
---@field Ready EActionInactivityReson 0
---@field Locked EActionInactivityReson 1
---@field Recompilation EActionInactivityReson 2
---@field OutOfMemory EActionInactivityReson 3
---@field Invalid EActionInactivityReson 4
EActionInactivityReson = {}

---@class EActionType
---@field QuickAction EActionType 0
---@field ChargeAction EActionType 1
---@field None EActionType 2
EActionType = {}

---@class EActionsSequencerMode
---@field REGULAR_INTERVALS EActionsSequencerMode 0
---@field ACCELERATING_INTERVALS_TODO EActionsSequencerMode 1
---@field DECELERATING_INTEVALS_TODO EActionsSequencerMode 2
---@field RANDOM_INTERVALS_TODO EActionsSequencerMode 3
---@field AT_THE_SAME_TIME_TODO EActionsSequencerMode 4
EActionsSequencerMode = {}

---@class EActivationState
---@field NONE EActivationState 0
---@field ACTIVATED EActivationState 1
---@field DEACTIVATED EActivationState 2
EActivationState = {}

---@class EAimAssistLevel
---@field Off EAimAssistLevel 0
---@field Light EAimAssistLevel 1
---@field Standard EAimAssistLevel 2
EAimAssistLevel = {}

---@class EAllowedTo
---@field UNDEFINED EAllowedTo 0
---@field TRESSPASSING EAllowedTo 1
---@field ILLEGAL_ACTIONS EAllowedTo 2
---@field COMBAT EAllowedTo 3
EAllowedTo = {}

---@class EAnimationBufferDataAvailable
---@field ABDA_None EAnimationBufferDataAvailable 0
---@field ABDA_Partial EAnimationBufferDataAvailable 1
---@field ABDA_All EAnimationBufferDataAvailable 2
EAnimationBufferDataAvailable = {}

---@class EAnimationType
---@field REGULAR EAnimationType 0
---@field TRANSFORM EAnimationType 1
---@field TRANSFORM_TWO_SIDES EAnimationType 2
---@field NONE EAnimationType 3
EAnimationType = {}

---@class EApertureValue
---@field f_1_0 EApertureValue 0
---@field f_1_4 EApertureValue 1
---@field f_2_0 EApertureValue 2
---@field f_2_8 EApertureValue 3
---@field f_4_0 EApertureValue 4
---@field f_5_6 EApertureValue 5
---@field f_8_0 EApertureValue 6
---@field f_11_0 EApertureValue 7
---@field f_16_0 EApertureValue 8
---@field f_22_0 EApertureValue 9
---@field f_32_0 EApertureValue 10
EApertureValue = {}

---@class EAreaLightShape
---@field ALS_Sphere EAreaLightShape 0
---@field ALS_Capsule EAreaLightShape 1
EAreaLightShape = {}

---@class EArgumentType
---@field Object EArgumentType 0
---@field CoverID EArgumentType 1
---@field Vector4 EArgumentType 2
EArgumentType = {}

---@class EAttackType
---@field Invalid EAttackType 0
---@field Ranged EAttackType 1
---@field Melee EAttackType 2
EAttackType = {}

---@class EAxisType
---@field X EAxisType 0
---@field Y EAxisType 1
---@field Z EAxisType 2
EAxisType = {}

---@class EBOOL
---@field UNINITIALZED EBOOL 0
---@field FALSE EBOOL 1
---@field TRUE EBOOL 2
EBOOL = {}

---@class EBarkList
---@field vo_enemy_reaction_surprised_combat_start EBarkList 0
---@field vo_enemy_reaction_generic_cursing EBarkList 1
---@field vo_enemy_reaction_jammed_weapon EBarkList 2
---@field vo_enemy_reaction_impact_hit EBarkList 3
---@field vo_enemy_reaction_stagger_hit EBarkList 4
---@field vo_enemy_reaction_crippled_arm EBarkList 5
---@field vo_enemy_reaction_crippled_leg EBarkList 6
---@field vo_enemy_reaction_death EBarkList 7
---@field vo_enemy_group_call_to_combat EBarkList 8
---@field vo_enemy_group_call_for_help EBarkList 9
---@field vo_enemy_group_order_go_to_cover EBarkList 10
---@field vo_enemy_group_order_flank_target EBarkList 11
---@field vo_enemy_group_order_suppressing_fire EBarkList 12
---@field vo_enemy_answer_to_order_suppressing_fire EBarkList 13
---@field vo_enemy_group_notification_reloading EBarkList 14
---@field vo_enemy_group_notification_squad_member_died EBarkList 15
---@field vo_enemy_group_notification_grenade_nearby EBarkList 16
---@field vo_enemy_group_notification_target_using_sandevistan EBarkList 17
---@field vo_enemy_group_notification_target_using_kerenzikov EBarkList 18
---@field vo_enemy_answer_to_notification_target_using_sandevistan EBarkList 19
---@field vo_enemy_answer_to_notification_target_using_kerenzikov EBarkList 20
---@field vo_enemy_group_generic_combat_question EBarkList 21
---@field vo_enemy_answer_to_generic_combat_question EBarkList 22
---@field vo_enemy_group_boost_combat_morale EBarkList 23
EBarkList = {}

---@class EBeamStyle
---@field None EBeamStyle 0
---@field Sweeping EBeamStyle 1
---@field HeadSlicer EBeamStyle 2
EBeamStyle = {}

---@class EBinkOperationType
---@field PLAY EBinkOperationType 0
---@field STOP EBinkOperationType 1
---@field PAUSE EBinkOperationType 2
---@field RESUME EBinkOperationType 3
EBinkOperationType = {}

---@class EBreachOrigin
---@field LOCAL EBreachOrigin 0
---@field EXTERNAL EBreachOrigin 1
---@field GLOBAL EBreachOrigin 2
EBreachOrigin = {}

---@class EBroadcasteingType
---@field Active EBroadcasteingType 0
---@field SingleActive EBroadcasteingType 1
---@field Direct EBroadcasteingType 2
---@field Remove EBroadcasteingType 3
---@field Single EBroadcasteingType 4
EBroadcasteingType = {}

---@class ECLSForcedState
---@field DEFAULT ECLSForcedState 0
---@field ForcedON ECLSForcedState 1
---@field ForcedOFF ECLSForcedState 2
ECLSForcedState = {}

---@class ECallbackExpressionActions
---@field SetTrue ECallbackExpressionActions 0
---@field SetFalse ECallbackExpressionActions 1
---@field Toggle ECallbackExpressionActions 2
ECallbackExpressionActions = {}

---@class ECameraDirectionFunctionalTestsUtil
---@field Up ECameraDirectionFunctionalTestsUtil 0
---@field Down ECameraDirectionFunctionalTestsUtil 1
---@field Left ECameraDirectionFunctionalTestsUtil 2
---@field Right ECameraDirectionFunctionalTestsUtil 3
ECameraDirectionFunctionalTestsUtil = {}

---@class ECarryState
---@field None ECarryState 0
---@field Pickup ECarryState 1
---@field Carry ECarryState 2
---@field Drop ECarryState 3
---@field Release ECarryState 4
---@field Dispose ECarryState 5
---@field Jump ECarryState 6
ECarryState = {}

---@class ECartOperationResult
---@field Success ECartOperationResult 0
---@field NoItems ECartOperationResult 1
---@field AllItems ECartOperationResult 2
---@field WontSell ECartOperationResult 3
---@field WontBuy ECartOperationResult 4
---@field QuestItem ECartOperationResult 5
---@field NotInCart ECartOperationResult 6
ECartOperationResult = {}

---@class ECentaurShieldState
---@field Inactive ECentaurShieldState 0
---@field Activating ECentaurShieldState 1
---@field Active ECentaurShieldState 2
---@field Destroyed ECentaurShieldState 3
---@field Hacked ECentaurShieldState 4
ECentaurShieldState = {}

---@class EColorChannel
---@field COLCHANNEL_Red EColorChannel 0
---@field COLCHANNEL_Green EColorChannel 1
---@field COLCHANNEL_Blue EColorChannel 2
---@field COLCHANNEL_Alpha EColorChannel 3
EColorChannel = {}

---@class EColorMappingFunction
---@field CMF_Linear EColorMappingFunction 0
---@field CMF_sRGB EColorMappingFunction 1
---@field CMF_ArriLogC EColorMappingFunction 2
EColorMappingFunction = {}

---@class EColorPrimary
---@field PRIM_REC709 EColorPrimary 0
---@field PRIM_DCIP3 EColorPrimary 1
---@field PRIM_BT2020 EColorPrimary 2
EColorPrimary = {}

---@class ECompanionDistancePreset
---@field Medium ECompanionDistancePreset 0
---@field Close ECompanionDistancePreset 1
---@field Far ECompanionDistancePreset 2
---@field VeryFar ECompanionDistancePreset 3
ECompanionDistancePreset = {}

---@class ECompanionPositionPreset
---@field Behind ECompanionPositionPreset 0
---@field InFront ECompanionPositionPreset 1
ECompanionPositionPreset = {}

---@class ECompareOp
---@field CO_Lesser ECompareOp 0
---@field CO_LesserEq ECompareOp 1
---@field CO_Greater ECompareOp 2
---@field CO_GreaterEq ECompareOp 3
---@field CO_Equal ECompareOp 4
---@field CO_NotEqual ECompareOp 5
ECompareOp = {}

---@class EComparisonOperator
---@field Equal EComparisonOperator 0
---@field NotEqual EComparisonOperator 1
---@field More EComparisonOperator 2
---@field MoreOrEqual EComparisonOperator 3
---@field Less EComparisonOperator 4
---@field LessOrEqual EComparisonOperator 5
EComparisonOperator = {}

---@class EComparisonType
---@field Greater EComparisonType 0
---@field GreaterOrEqual EComparisonType 1
---@field Equal EComparisonType 2
---@field NotEqual EComparisonType 3
---@field Less EComparisonType 4
---@field LessOrEqual EComparisonType 5
EComparisonType = {}

---@class EComponentOperation
---@field Enable EComponentOperation 0
---@field Disable EComponentOperation 1
EComponentOperation = {}

---@class EComputerAnimationState
---@field None EComputerAnimationState 0
---@field Opened EComputerAnimationState 1
---@field Closed EComputerAnimationState 2
EComputerAnimationState = {}

---@class EComputerMenuType
---@field MAIN EComputerMenuType 0
---@field SYSTEM EComputerMenuType 1
---@field FILES EComputerMenuType 2
---@field MAILS EComputerMenuType 3
---@field NEWSFEED EComputerMenuType 4
---@field INTERNET EComputerMenuType 5
---@field INVALID EComputerMenuType 6
EComputerMenuType = {}

---@class EConclusionQuestState
---@field Undefined EConclusionQuestState 0
---@field Active EConclusionQuestState 1
---@field Inactive EConclusionQuestState 2
---@field Shown EConclusionQuestState 3
EConclusionQuestState = {}

---@class ECookingPlatform
---@field PLATFORM_None ECookingPlatform 0
---@field PLATFORM_PC ECookingPlatform 1
---@field PLATFORM_XboxOne ECookingPlatform 2
---@field PLATFORM_PS4 ECookingPlatform 3
---@field PLATFORM_PS5 ECookingPlatform 4
---@field PLATFORM_XSX ECookingPlatform 5
---@field PLATFORM_WindowsServer ECookingPlatform 6
---@field PLATFORM_LinuxServer ECookingPlatform 7
---@field PLATFORM_GGP ECookingPlatform 8
ECookingPlatform = {}

---@class ECooldownGameControllerMode
---@field COOLDOWNS ECooldownGameControllerMode 0
---@field BUFFS_AND_DEBUFFS ECooldownGameControllerMode 1
ECooldownGameControllerMode = {}

---@class ECooldownIndicatorState
---@field Pooled ECooldownIndicatorState 0
---@field Intro ECooldownIndicatorState 1
---@field Filling ECooldownIndicatorState 2
---@field Outro ECooldownIndicatorState 3
ECooldownIndicatorState = {}

---@class ECoverSpecialAction
---@field None ECoverSpecialAction 0
---@field Left ECoverSpecialAction 1
---@field Right ECoverSpecialAction 2
ECoverSpecialAction = {}

---@class ECraftingIconPositioning
---@field generic ECraftingIconPositioning 0
---@field weaponBig ECraftingIconPositioning 1
---@field weaponSmall ECraftingIconPositioning 2
ECraftingIconPositioning = {}

---@class ECubeSourceTextureType
---@field CST_CrossHorizontal ECubeSourceTextureType 0
---@field CST_CrossVertical ECubeSourceTextureType 1
---@field CST_Panorama ECubeSourceTextureType 2
ECubeSourceTextureType = {}

---@class ECustomCameraTarget
---@field ECCTV_All ECustomCameraTarget 0
---@field ECCTV_OnlyOffscreen ECustomCameraTarget 1
---@field ECCTV_OnlyOnscreen ECustomCameraTarget 2
ECustomCameraTarget = {}

---@class ECustomFilterDPadNavigationOption
---@field SelectNext ECustomFilterDPadNavigationOption 0
---@field SelectPrev ECustomFilterDPadNavigationOption 1
---@field Toggle ECustomFilterDPadNavigationOption 2
ECustomFilterDPadNavigationOption = {}

---@class ECustomMaterialParam
---@field ECMP_CustomParam0 ECustomMaterialParam 1
---@field ECMP_CustomParam1 ECustomMaterialParam 2
---@field ECMP_CustomParam2 ECustomMaterialParam 4
---@field ECMP_CustomParam3 ECustomMaterialParam 8
---@field ECMP_CustomParam4 ECustomMaterialParam 16
---@field ECMP_CustomParam5 ECustomMaterialParam 32
---@field ECMP_CustomParam6 ECustomMaterialParam 64
ECustomMaterialParam = {}

---@class EDPadSlot
---@field Left EDPadSlot 0
---@field Up EDPadSlot 1
---@field Right EDPadSlot 2
---@field Down EDPadSlot 3
---@field LeftDouble EDPadSlot 4
---@field UpDouble EDPadSlot 5
---@field RightDouble EDPadSlot 6
---@field DownDouble EDPadSlot 7
---@field WeaponsWheel EDPadSlot 8
---@field VehicleWheel EDPadSlot 9
---@field GadgetWheel EDPadSlot 10
---@field InteractionWheel EDPadSlot 11
---@field Phone EDPadSlot 12
---@field CallVehicle EDPadSlot 13
---@field CycleObjective EDPadSlot 14
---@field VehicleInsideWheel EDPadSlot 15
---@field ConsumableWheel EDPadSlot 16
EDPadSlot = {}

---@class EDeathType
---@field Ground EDeathType 0
---@field Air EDeathType 1
---@field Swimming EDeathType 2
EDeathType = {}

---@class EDebuggerColor
---@field RED EDebuggerColor 0
---@field YELLOW EDebuggerColor 1
EDebuggerColor = {}

---@class EDecalRenderMode
---@field DRM_AllStatic EDecalRenderMode 0
---@field DRM_ObjectType EDecalRenderMode 1
---@field DRM_AllDynamic EDecalRenderMode 2
EDecalRenderMode = {}

---@class EDepthCollisionEffect
---@field DCE_Bounce EDepthCollisionEffect 1
---@field DCE_Glide EDepthCollisionEffect 2
---@field DCE_Kill EDepthCollisionEffect 4
EDepthCollisionEffect = {}

---@class EDeviceChallengeAttribute
---@field Invalid EDeviceChallengeAttribute 0
---@field Strength EDeviceChallengeAttribute 1
---@field Reflexes EDeviceChallengeAttribute 2
---@field Intelligence EDeviceChallengeAttribute 3
---@field TechnicalAbility EDeviceChallengeAttribute 4
---@field Cool EDeviceChallengeAttribute 5
EDeviceChallengeAttribute = {}

---@class EDeviceChallengeSkill
---@field Invalid EDeviceChallengeSkill 0
---@field Hacking EDeviceChallengeSkill 1
---@field Engineering EDeviceChallengeSkill 2
---@field Athletics EDeviceChallengeSkill 3
EDeviceChallengeSkill = {}

---@class EDeviceDurabilityState
---@field NOMINAL EDeviceDurabilityState 0
---@field MALFUNCTIONING EDeviceDurabilityState 1
---@field BROKEN EDeviceDurabilityState 2
---@field DESTROYED EDeviceDurabilityState 3
EDeviceDurabilityState = {}

---@class EDeviceDurabilityType
---@field INVULNERABLE EDeviceDurabilityType 0
---@field INDESTRUCTIBLE EDeviceDurabilityType 1
---@field DESTRUCTIBLE EDeviceDurabilityType 2
EDeviceDurabilityType = {}

---@class EDeviceStatus
---@field DISABLED EDeviceStatus -2
---@field UNPOWERED EDeviceStatus -1
---@field OFF EDeviceStatus 0
---@field ON EDeviceStatus 1
---@field INVALID EDeviceStatus 2
EDeviceStatus = {}

---@class EDocumentType
---@field FILE EDocumentType 0
---@field MAIL EDocumentType 1
---@field Invalid EDocumentType 2
EDocumentType = {}

---@class EDodgeMovementInput
---@field Invalid EDodgeMovementInput 0
---@field Forward EDodgeMovementInput 1
---@field Right EDodgeMovementInput 2
---@field Left EDodgeMovementInput 3
---@field Back EDodgeMovementInput 4
EDodgeMovementInput = {}

---@class EDoorOpeningType
---@field SLIDING_HORIZONTALLY EDoorOpeningType 0
---@field SLIDING_VERTICALLY EDoorOpeningType 1
---@field HINGED EDoorOpeningType 2
---@field GATE EDoorOpeningType 3
---@field HINGED_SIDE_ONE EDoorOpeningType 4
---@field HINGED_SIDE_TWO EDoorOpeningType 5
EDoorOpeningType = {}

---@class EDoorSkillcheckSide
---@field BOTH EDoorSkillcheckSide 0
---@field ONE EDoorSkillcheckSide 1
---@field TWO EDoorSkillcheckSide 2
EDoorSkillcheckSide = {}

---@class EDoorStatus
---@field SEALED EDoorStatus -2
---@field LOCKED EDoorStatus -1
---@field CLOSED EDoorStatus 0
---@field OPENED EDoorStatus 1
EDoorStatus = {}

---@class EDoorTriggerSide
---@field OUTSIDE EDoorTriggerSide 0
---@field ONE EDoorTriggerSide 1
---@field TWO EDoorTriggerSide 2
EDoorTriggerSide = {}

---@class EDoorType
---@field NONE EDoorType 0
---@field INTERACTIVE EDoorType 1
---@field AUTOMATIC EDoorType 2
---@field PHYSICAL EDoorType 3
---@field REMOTELY_CONTROLLED EDoorType 4
EDoorType = {}

---@class EDownedType
---@field Killed EDownedType 0
---@field Finished EDownedType 1
---@field Defeated EDownedType 2
---@field Unconscious EDownedType 3
EDownedType = {}

---@class EDrillMachineRewireState
---@field InsideInteractionRange EDrillMachineRewireState 0
---@field OutsideInteractionRange EDrillMachineRewireState 1
---@field InteractionStarted EDrillMachineRewireState 2
---@field InteractionFinished EDrillMachineRewireState 3
---@field RewireStarted EDrillMachineRewireState 4
---@field RewireFinished EDrillMachineRewireState 5
EDrillMachineRewireState = {}

---@class EDynamicDecalSpawnPriority
---@field RDDS_Normal EDynamicDecalSpawnPriority 0
---@field RDDS_Highest EDynamicDecalSpawnPriority 1
EDynamicDecalSpawnPriority = {}

---@class EEasingType
---@field EET_In EEasingType 0
---@field EET_Out EEasingType 1
---@field EET_InOut EEasingType 2
EEasingType = {}

---@class EEffectOperationType
---@field START EEffectOperationType 0
---@field STOP EEffectOperationType 1
---@field BRAKE_LOOP EEffectOperationType 2
EEffectOperationType = {}

---@class EEmitterGroup
---@field EG_Default EEmitterGroup 0
---@field EG_Group0 EEmitterGroup 1
---@field EG_Group1 EEmitterGroup 2
---@field EG_Group2 EEmitterGroup 3
---@field EG_Group3 EEmitterGroup 4
---@field EG_Group4 EEmitterGroup 5
---@field EG_Group5 EEmitterGroup 6
---@field EG_Group6 EEmitterGroup 7
---@field EG_Group7 EEmitterGroup 8
---@field EG_Group8 EEmitterGroup 9
---@field EG_Group9 EEmitterGroup 10
---@field EG_Group10 EEmitterGroup 11
---@field EG_Group11 EEmitterGroup 12
---@field EG_Group12 EEmitterGroup 13
---@field EG_Group13 EEmitterGroup 14
---@field EG_Group14 EEmitterGroup 15
---@field EG_Group15 EEmitterGroup 16
EEmitterGroup = {}

---@class EEntityHighlightType
---@field EHE_None EEntityHighlightType 0
---@field EHE_FillAndOutline EEntityHighlightType 1
---@field EHE_FillOnly EEntityHighlightType 2
---@field EHE_OutlineOnly EEntityHighlightType 3
EEntityHighlightType = {}

---@class EEnvColorGroup
---@field ECG_Default EEnvColorGroup 0
---@field ECG_Sky EEnvColorGroup 1
---@field ECG_Group0 EEnvColorGroup 2
---@field ECG_Group1 EEnvColorGroup 3
---@field ECG_Group2 EEnvColorGroup 4
---@field ECG_Group3 EEnvColorGroup 5
---@field ECG_Group4 EEnvColorGroup 6
---@field ECG_Group5 EEnvColorGroup 7
---@field ECG_Group6 EEnvColorGroup 8
---@field ECG_Group7 EEnvColorGroup 9
---@field ECG_Group8 EEnvColorGroup 10
---@field ECG_Group9 EEnvColorGroup 11
---@field ECG_Group10 EEnvColorGroup 12
---@field ECG_Group11 EEnvColorGroup 13
---@field ECG_Group12 EEnvColorGroup 14
---@field ECG_Group13 EEnvColorGroup 15
---@field ECG_Group14 EEnvColorGroup 16
---@field ECG_Group15 EEnvColorGroup 17
EEnvColorGroup = {}

---@class EEnvManagerModifier
---@field EMM_None EEnvManagerModifier 0
---@field EMM_WireframeSolid EEnvManagerModifier 1
---@field EMM_WireframeSeethrough EEnvManagerModifier 2
---@field EMM_Overdraw EEnvManagerModifier 3
---@field EMM_OverdrawSeethrough EEnvManagerModifier 4
---@field EMM_ParticleOverdraw EEnvManagerModifier 5
---@field EMM_ParticleNumLights EEnvManagerModifier 6
---@field EMM_DecalOverdraw EEnvManagerModifier 7
---@field EMM_LightOverdraw EEnvManagerModifier 8
---@field EMM_SceneReferredColor EEnvManagerModifier 9
---@field EMM_DisplayReferredColor EEnvManagerModifier 10
---@field EMM_GlobalIllumination EEnvManagerModifier 11
---@field EMM_SurfaceMaterialID EEnvManagerModifier 12
---@field EMM_SurfaceObjectID EEnvManagerModifier 13
---@field EMM_SurfaceBaseColor EEnvManagerModifier 14
---@field EMM_SurfaceAlbedo EEnvManagerModifier 15
---@field EMM_SurfaceSpecularity EEnvManagerModifier 16
---@field EMM_SurfaceMetalness EEnvManagerModifier 17
---@field EMM_SurfaceRoughness EEnvManagerModifier 18
---@field EMM_SurfaceEmissive EEnvManagerModifier 19
---@field EMM_SurfaceTranslucency EEnvManagerModifier 20
---@field EMM_SurfaceNormalsWorldSpace EEnvManagerModifier 21
---@field EMM_SurfaceNormalsViewSpace EEnvManagerModifier 22
---@field EMM_SurfaceHairDirection EEnvManagerModifier 23
---@field EMM_SurfaceHairID EEnvManagerModifier 24
---@field EMM_SurfaceLightBlockerIntensity EEnvManagerModifier 25
---@field EMM_GBuffer1RGB EEnvManagerModifier 26
---@field EMM_GBuffer1A EEnvManagerModifier 27
---@field EMM_ConeAODir EEnvManagerModifier 28
---@field EMM_ConeAOAngle EEnvManagerModifier 29
---@field EMM_VelocityBuffer EEnvManagerModifier 30
---@field EMM_Depth EEnvManagerModifier 31
---@field EMM_UvDensity EEnvManagerModifier 32
---@field EMM_ToneMappingLuminance EEnvManagerModifier 33
---@field EMM_ToneMappingThresholds EEnvManagerModifier 34
---@field EMM_LuminanceSpotMeter EEnvManagerModifier 35
---@field EMM_IlluminanceMeter EEnvManagerModifier 36
---@field EMM_DiffuseLight EEnvManagerModifier 37
---@field EMM_SpecularLight EEnvManagerModifier 38
---@field EMM_ClayView EEnvManagerModifier 39
---@field EMM_PureGreyscaleView EEnvManagerModifier 40
---@field EMM_PureWhiteView EEnvManagerModifier 41
---@field EMM_PureReflectionView EEnvManagerModifier 42
---@field EMM_PureGreyReflectionView EEnvManagerModifier 43
---@field EMM_Cascades EEnvManagerModifier 44
---@field EMM_MaskShadow EEnvManagerModifier 45
---@field EMM_MaskSSAO EEnvManagerModifier 46
---@field EMM_MaskTXAA EEnvManagerModifier 47
---@field EMM_MaskDistortion EEnvManagerModifier 48
---@field EMM_SurfaceCacheID EEnvManagerModifier 49
---@field EMM_SurfaceCacheResolution EEnvManagerModifier 50
---@field EMM_LightChannels EEnvManagerModifier 51
---@field EMM_DebugHitProxies EEnvManagerModifier 52
---@field EMM_DebugShadowsMode EEnvManagerModifier 53
---@field EMM_RayTracingDebug EEnvManagerModifier 54
---@field EMM_SSRResults EEnvManagerModifier 55
---@field EMM_SSRFade EEnvManagerModifier 56
---@field EMM_DepthOfFieldCoC EEnvManagerModifier 57
---@field EMM_MultilayeredMode EEnvManagerModifier 58
---@field EMM_MultilayeredProxy EEnvManagerModifier 59
---@field EMM_MultilayeredUniqueMasks EEnvManagerModifier 60
---@field EMM_MultilayeredMaskWeight EEnvManagerModifier 61
---@field EMM_LocalShadowsVariance EEnvManagerModifier 62
---@field EMM_LocalShadowsRangesOverlapDynamicsOnly EEnvManagerModifier 63
---@field EMM_LocalShadowsRangesOverlapStaticsOnly EEnvManagerModifier 64
---@field EMM_LODColoring EEnvManagerModifier 65
---@field EMM_TodvisRuntimePreview EEnvManagerModifier 66
---@field EMM_TodvisBakePreview EEnvManagerModifier 67
---@field EMM_RainMask EEnvManagerModifier 68
---@field EMM_VolFogDensity EEnvManagerModifier 69
---@field EMM_PBRValidationBaseColor EEnvManagerModifier 70
---@field EMM_PBRValidationMetalness EEnvManagerModifier 71
---@field EMM_GreyPlayMode EEnvManagerModifier 72
EEnvManagerModifier = {}

---@class EEquipmentSide
---@field Left EEquipmentSide 0
---@field Right EEquipmentSide 1
EEquipmentSide = {}

---@class EEquipmentState
---@field Unequipped EEquipmentState 0
---@field Equipped EEquipmentState 1
---@field Equipping EEquipmentState 2
---@field Unequipping EEquipmentState 3
---@field FirstEquip EEquipmentState 4
EEquipmentState = {}

---@class EExplosiveAdditionalGameEffectType
---@field none EExplosiveAdditionalGameEffectType 0
---@field EMP EExplosiveAdditionalGameEffectType 1
EExplosiveAdditionalGameEffectType = {}

---@class EFastTravelDeviceType
---@field DataTerm EFastTravelDeviceType 0
---@field SubwayGate EFastTravelDeviceType 1
EFastTravelDeviceType = {}

---@class EFastTravelSystemInstruction
---@field Forward EFastTravelSystemInstruction 0
---@field Previous EFastTravelSystemInstruction 1
EFastTravelSystemInstruction = {}

---@class EFastTravelTriggerType
---@field Manual EFastTravelTriggerType 0
---@field Auto EFastTravelTriggerType 1
EFastTravelTriggerType = {}

---@class EFeatureFlag
---@field FEATFLAG_Default EFeatureFlag 0
---@field FEATFLAG_Shadows EFeatureFlag 1
---@field FEATFLAG_HitProxies EFeatureFlag 2
---@field FEATFLAG_Selection EFeatureFlag 3
---@field FEATFLAG_Wireframe EFeatureFlag 4
---@field FEATFLAG_Overdraw EFeatureFlag 10
---@field FEATFLAG_VelocityBuffer EFeatureFlag 5
---@field FEATFLAG_DebugDraw_BlendOff EFeatureFlag 6
---@field FEATFLAG_DebugDraw_BlendOn EFeatureFlag 7
---@field FEATFLAG_DynamicDecals EFeatureFlag 8
---@field FEATFLAG_Highlights EFeatureFlag 9
---@field FEATFLAG_IndirectInstancedGrass EFeatureFlag 11
---@field FEATFLAG_DecalsOnStaticObjects EFeatureFlag 12
---@field FEATFLAG_DecalsOnDynamicObjects EFeatureFlag 13
---@field FEATFLAG_MaskParticlesInsideCar EFeatureFlag 14
---@field FEATFLAG_MaskParticlesInsideInterior EFeatureFlag 15
---@field FEATFLAG_MaskTXAA EFeatureFlag 16
---@field FEATFLAG_DistantShadows EFeatureFlag 17
---@field FEATFLAG_FloatTracks EFeatureFlag 18
---@field FEATFLAG_Rain EFeatureFlag 19
---@field FEATFLAG_NumLights EFeatureFlag 20
---@field FEATFLAG_DepthPrepass EFeatureFlag 21
EFeatureFlag = {}

---@class EFilterType
---@field ALLOW_NONE EFilterType 0
---@field ALLOW_COMBAT_ONLY EFilterType 1
---@field ALLOW_ALL EFilterType 2
EFilterType = {}

---@class EFocusClueInvestigationState
---@field NONE EFocusClueInvestigationState 0
---@field INSPECTED EFocusClueInvestigationState 1
---@field NOT_INSPECTED EFocusClueInvestigationState 2
EFocusClueInvestigationState = {}

---@class EFocusForcedHighlightType
---@field INTERACTION EFocusForcedHighlightType 0
---@field IMPORTANT_INTERACTION EFocusForcedHighlightType 1
---@field QUEST EFocusForcedHighlightType 2
---@field DISTRACTION EFocusForcedHighlightType 3
---@field CLUE EFocusForcedHighlightType 4
---@field NPC EFocusForcedHighlightType 5
---@field WEAKSPOT EFocusForcedHighlightType 6
---@field AOE EFocusForcedHighlightType 7
---@field ITEM EFocusForcedHighlightType 8
---@field HOSTILE EFocusForcedHighlightType 9
---@field FRIENDLY EFocusForcedHighlightType 10
---@field NEUTRAL EFocusForcedHighlightType 11
---@field HACKABLE EFocusForcedHighlightType 12
---@field ENEMY_NETRUNNER EFocusForcedHighlightType 13
---@field BACKDOOR EFocusForcedHighlightType 14
---@field INVALID EFocusForcedHighlightType 15
EFocusForcedHighlightType = {}

---@class EFocusOutlineType
---@field HOSTILE EFocusOutlineType 0
---@field FRIENDLY EFocusOutlineType 1
---@field NEUTRAL EFocusOutlineType 2
---@field ITEM EFocusOutlineType 3
---@field INTERACTION EFocusOutlineType 4
---@field IMPORTANT_INTERACTION EFocusOutlineType 5
---@field QUEST EFocusOutlineType 6
---@field CLUE EFocusOutlineType 7
---@field DISTRACTION EFocusOutlineType 8
---@field AOE EFocusOutlineType 9
---@field HACKABLE EFocusOutlineType 10
---@field WEAKSPOT EFocusOutlineType 11
---@field ENEMY_NETRUNNER EFocusOutlineType 12
---@field BACKDOOR EFocusOutlineType 13
---@field INVALID EFocusOutlineType 14
EFocusOutlineType = {}

---@class EForcedElevatorArrowsState
---@field Disabled EForcedElevatorArrowsState 0
---@field ArrowsUp EForcedElevatorArrowsState 1
---@field ArrowsDown EForcedElevatorArrowsState 2
EForcedElevatorArrowsState = {}

---@class EFreeVectorAxes
---@field FVA_One EFreeVectorAxes 1
---@field FVA_Two EFreeVectorAxes 2
---@field FVA_Three EFreeVectorAxes 3
---@field FVA_Four EFreeVectorAxes 4
EFreeVectorAxes = {}

---@class EGOGMenuState
---@field None EGOGMenuState 0
---@field LoadGame EGOGMenuState 1
---@field MainMenu EGOGMenuState 2
EGOGMenuState = {}

---@class EGameSessionDataType
---@field NONE EGameSessionDataType 0
---@field CameraDeadBody EGameSessionDataType 1
---@field CameraTagLimit EGameSessionDataType 2
EGameSessionDataType = {}

---@class EGameplayChallengeLevel
---@field NONE EGameplayChallengeLevel 0
---@field TRIVIAL EGameplayChallengeLevel 1
---@field EASY EGameplayChallengeLevel 2
---@field MEDIUM EGameplayChallengeLevel 3
---@field HARD EGameplayChallengeLevel 4
---@field IMPOSSIBLE EGameplayChallengeLevel 5
EGameplayChallengeLevel = {}

---@class EGameplayRole
---@field UnAssigned EGameplayRole 0
---@field None EGameplayRole 1
---@field Alarm EGameplayRole 2
---@field ControlNetwork EGameplayRole 3
---@field ControlOtherDevice EGameplayRole 4
---@field ControlSelf EGameplayRole 5
---@field CutPower EGameplayRole 6
---@field Distract EGameplayRole 7
---@field DropPoint EGameplayRole 8
---@field ExplodeLethal EGameplayRole 9
---@field ExplodeNoneLethal EGameplayRole 10
---@field Fall EGameplayRole 11
---@field FastTravel EGameplayRole 12
---@field GrantInformation EGameplayRole 13
---@field HazardWarning EGameplayRole 14
---@field HideBody EGameplayRole 15
---@field Loot EGameplayRole 16
---@field OpenPath EGameplayRole 17
---@field ClearPath EGameplayRole 18
---@field Push EGameplayRole 19
---@field ServicePoint EGameplayRole 20
---@field Shoot EGameplayRole 21
---@field SpreadGas EGameplayRole 22
---@field StoreItems EGameplayRole 23
---@field GenericRole EGameplayRole 24
---@field ClearPathAd EGameplayRole 25
---@field DistractVendingMachine EGameplayRole 26
---@field NPC EGameplayRole 27
---@field Clue EGameplayRole 28
---@field PlayerStash EGameplayRole 29
---@field Wardrobe EGameplayRole 30
EGameplayRole = {}

---@class EGenericNotificationPriority
---@field Default EGenericNotificationPriority 0
---@field Low EGenericNotificationPriority 1
---@field Medium EGenericNotificationPriority 2
---@field Height EGenericNotificationPriority 3
EGenericNotificationPriority = {}

---@class EGlitchState
---@field NONE EGlitchState 0
---@field DEFAULT EGlitchState 1
---@field SUBLIMINAL_MESSAGE EGlitchState 2
EGlitchState = {}

---@class EGravityType
---@field LowGravity EGravityType 0
---@field Regular EGravityType 1
EGravityType = {}

---@class EGrenadeType
---@field Frag EGrenadeType 0
---@field Flash EGrenadeType 1
---@field Piercing EGrenadeType 2
---@field EMP EGrenadeType 3
---@field Biohazard EGrenadeType 4
---@field Incendiary EGrenadeType 5
---@field Recon EGrenadeType 6
---@field Cutting EGrenadeType 7
---@field Sonic EGrenadeType 8
EGrenadeType = {}

---@class EHandEquipSlot
---@field None EHandEquipSlot 0
---@field Left EHandEquipSlot 1
---@field Right EHandEquipSlot 2
EHandEquipSlot = {}

---@class EHitReactionMode
---@field Regular EHitReactionMode 0
---@field ForceImpact EHitReactionMode 1
---@field ForceStagger EHitReactionMode 2
---@field ForceKnockdown EHitReactionMode 3
---@field Fragile EHitReactionMode 4
---@field Weak EHitReactionMode 5
---@field Tough EHitReactionMode 6
---@field Bulky EHitReactionMode 7
---@field Unstoppable EHitReactionMode 8
---@field UnstoppableTwitchMin EHitReactionMode 9
---@field UnstoppableTwitchNone EHitReactionMode 10
---@field StaggerMin EHitReactionMode 11
---@field BulkyStaggerMin EHitReactionMode 12
---@field Invalid EHitReactionMode 13
EHitReactionMode = {}

---@class EHitReactionZone
---@field Head EHitReactionZone 0
---@field ChestLeft EHitReactionZone 1
---@field ArmLeft EHitReactionZone 2
---@field HandLeft EHitReactionZone 3
---@field ChestRight EHitReactionZone 4
---@field ArmRight EHitReactionZone 5
---@field HandRight EHitReactionZone 6
---@field Abdomen EHitReactionZone 7
---@field LegLeft EHitReactionZone 8
---@field LegRight EHitReactionZone 9
---@field Special EHitReactionZone 10
EHitReactionZone = {}

---@class EHitShapeType
---@field None EHitShapeType -1
---@field Flesh EHitShapeType 0
---@field Metal EHitShapeType 1
---@field Cyberware EHitShapeType 2
---@field Armor EHitShapeType 3
EHitShapeType = {}

---@class EHotkeyRequestType
---@field Assign EHotkeyRequestType 0
---@field Cycle EHotkeyRequestType 1
---@field Restore EHotkeyRequestType 2
EHotkeyRequestType = {}

---@class EHudAvatarMode
---@field Connecting EHudAvatarMode 0
---@field Disconnecting EHudAvatarMode 1
---@field Holocall EHudAvatarMode 2
---@field Audiocall EHudAvatarMode 3
EHudAvatarMode = {}

---@class EHudPhoneFunction
---@field Inactive EHudPhoneFunction 0
---@field DisplayingMessage EHudPhoneFunction 1
---@field IncomingCall EHudPhoneFunction 2
---@field Holocall EHudPhoneFunction 3
---@field Audiocall EHudPhoneFunction 4
EHudPhoneFunction = {}

---@class EHudPhoneVisibility
---@field Invisible EHudPhoneVisibility 0
---@field Showing EHudPhoneVisibility 1
---@field Visible EHudPhoneVisibility 2
---@field Hiding EHudPhoneVisibility 3
EHudPhoneVisibility = {}

---@class EIndustrialArmAnimations
---@field Idle EIndustrialArmAnimations 0
---@field RepairLoop EIndustrialArmAnimations 1
---@field RepairLoop2 EIndustrialArmAnimations 2
---@field RepairLoopBroken EIndustrialArmAnimations 3
---@field RepairLoopBelow EIndustrialArmAnimations 4
---@field RepairLoopBelowBroken EIndustrialArmAnimations 5
---@field CarDestroy EIndustrialArmAnimations 6
---@field Repair_below_loop_high EIndustrialArmAnimations 7
---@field Repair_below_loop_low EIndustrialArmAnimations 8
---@field Repair_below_loop_medium EIndustrialArmAnimations 9
---@field Repair_loop_high EIndustrialArmAnimations 10
EIndustrialArmAnimations = {}

---@class EInitReactionAnim
---@field Shock EInitReactionAnim 0
---@field Fear EInitReactionAnim 1
---@field Curious EInitReactionAnim 2
---@field Call EInitReactionAnim 3
EInitReactionAnim = {}

---@class EInkAnimationPlaybackOption
---@field PLAY EInkAnimationPlaybackOption 0
---@field STOP EInkAnimationPlaybackOption 1
---@field PAUSE EInkAnimationPlaybackOption 2
---@field RESUME EInkAnimationPlaybackOption 3
---@field CONTINUE EInkAnimationPlaybackOption 4
---@field GO_TO_START EInkAnimationPlaybackOption 5
---@field GO_TO_END EInkAnimationPlaybackOption 6
EInkAnimationPlaybackOption = {}

---@class EInputAction
---@field IACT_None EInputAction 0
---@field IACT_Press EInputAction 1
---@field IACT_Release EInputAction 2
---@field IACT_Axis EInputAction 3
EInputAction = {}

---@class EInputCustomKey
---@field ICK_Pad_DigitLeftRight EInputCustomKey 268
---@field ICK_Pad_DigitUpDown EInputCustomKey 269
---@field ICK_Count EInputCustomKey 270
EInputCustomKey = {}

---@class EInputKey
---@field IK_None EInputKey 0
---@field IK_LeftMouse EInputKey 1
---@field IK_RightMouse EInputKey 2
---@field IK_MiddleMouse EInputKey 3
---@field IK_Unknown04 EInputKey 4
---@field IK_Unknown05 EInputKey 5
---@field IK_Unknown06 EInputKey 6
---@field IK_Unknown07 EInputKey 7
---@field IK_Backspace EInputKey 8
---@field IK_Tab EInputKey 9
---@field IK_Unknown0A EInputKey 10
---@field IK_Unknown0B EInputKey 11
---@field IK_Unknown0C EInputKey 12
---@field IK_Enter EInputKey 13
---@field IK_Unknown0E EInputKey 14
---@field IK_Unknown0F EInputKey 15
---@field IK_Shift EInputKey 16
---@field IK_Ctrl EInputKey 17
---@field IK_Alt EInputKey 18
---@field IK_Pause EInputKey 19
---@field IK_CapsLock EInputKey 20
---@field IK_Unknown15 EInputKey 21
---@field IK_Unknown16 EInputKey 22
---@field IK_Unknown17 EInputKey 23
---@field IK_Unknown18 EInputKey 24
---@field IK_Unknown19 EInputKey 25
---@field IK_Unknown1A EInputKey 26
---@field IK_Escape EInputKey 27
---@field IK_Unknown1C EInputKey 28
---@field IK_Unknown1D EInputKey 29
---@field IK_Unknown1E EInputKey 30
---@field IK_Unknown1F EInputKey 31
---@field IK_Space EInputKey 32
---@field IK_PageUp EInputKey 33
---@field IK_PageDown EInputKey 34
---@field IK_End EInputKey 35
---@field IK_Home EInputKey 36
---@field IK_Left EInputKey 37
---@field IK_Up EInputKey 38
---@field IK_Right EInputKey 39
---@field IK_Down EInputKey 40
---@field IK_Select EInputKey 41
---@field IK_Print EInputKey 42
---@field IK_Execute EInputKey 43
---@field IK_PrintScrn EInputKey 44
---@field IK_Insert EInputKey 45
---@field IK_Delete EInputKey 46
---@field IK_Help EInputKey 47
---@field IK_0 EInputKey 48
---@field IK_1 EInputKey 49
---@field IK_2 EInputKey 50
---@field IK_3 EInputKey 51
---@field IK_4 EInputKey 52
---@field IK_5 EInputKey 53
---@field IK_6 EInputKey 54
---@field IK_7 EInputKey 55
---@field IK_8 EInputKey 56
---@field IK_9 EInputKey 57
---@field IK_Unknown3A EInputKey 58
---@field IK_Unknown3B EInputKey 59
---@field IK_Unknown3C EInputKey 60
---@field IK_Unknown3D EInputKey 61
---@field IK_Unknown3E EInputKey 62
---@field IK_Unknown3F EInputKey 63
---@field IK_Unknown40 EInputKey 64
---@field IK_A EInputKey 65
---@field IK_B EInputKey 66
---@field IK_C EInputKey 67
---@field IK_D EInputKey 68
---@field IK_E EInputKey 69
---@field IK_F EInputKey 70
---@field IK_G EInputKey 71
---@field IK_H EInputKey 72
---@field IK_I EInputKey 73
---@field IK_J EInputKey 74
---@field IK_K EInputKey 75
---@field IK_L EInputKey 76
---@field IK_M EInputKey 77
---@field IK_N EInputKey 78
---@field IK_O EInputKey 79
---@field IK_P EInputKey 80
---@field IK_Q EInputKey 81
---@field IK_R EInputKey 82
---@field IK_S EInputKey 83
---@field IK_T EInputKey 84
---@field IK_U EInputKey 85
---@field IK_V EInputKey 86
---@field IK_W EInputKey 87
---@field IK_X EInputKey 88
---@field IK_Y EInputKey 89
---@field IK_Z EInputKey 90
---@field IK_Unknown5B EInputKey 91
---@field IK_Unknown5C EInputKey 92
---@field IK_Unknown5D EInputKey 93
---@field IK_Unknown5E EInputKey 94
---@field IK_Unknown5F EInputKey 95
---@field IK_NumPad0 EInputKey 96
---@field IK_NumPad1 EInputKey 97
---@field IK_NumPad2 EInputKey 98
---@field IK_NumPad3 EInputKey 99
---@field IK_NumPad4 EInputKey 100
---@field IK_NumPad5 EInputKey 101
---@field IK_NumPad6 EInputKey 102
---@field IK_NumPad7 EInputKey 103
---@field IK_NumPad8 EInputKey 104
---@field IK_NumPad9 EInputKey 105
---@field IK_NumStar EInputKey 106
---@field IK_NumPlus EInputKey 107
---@field IK_Separator EInputKey 108
---@field IK_NumMinus EInputKey 109
---@field IK_NumPeriod EInputKey 110
---@field IK_NumSlash EInputKey 111
---@field IK_F1 EInputKey 112
---@field IK_F2 EInputKey 113
---@field IK_F3 EInputKey 114
---@field IK_F4 EInputKey 115
---@field IK_F5 EInputKey 116
---@field IK_F6 EInputKey 117
---@field IK_F7 EInputKey 118
---@field IK_F8 EInputKey 119
---@field IK_F9 EInputKey 120
---@field IK_F10 EInputKey 121
---@field IK_F11 EInputKey 122
---@field IK_F12 EInputKey 123
---@field IK_F13 EInputKey 124
---@field IK_F14 EInputKey 125
---@field IK_F15 EInputKey 126
---@field IK_F16 EInputKey 127
---@field IK_F17 EInputKey 128
---@field IK_F18 EInputKey 129
---@field IK_F19 EInputKey 130
---@field IK_F20 EInputKey 131
---@field IK_F21 EInputKey 132
---@field IK_F22 EInputKey 133
---@field IK_F23 EInputKey 134
---@field IK_F24 EInputKey 135
---@field IK_Pad_A_CROSS EInputKey 136
---@field IK_Pad_B_CIRCLE EInputKey 137
---@field IK_Pad_X_SQUARE EInputKey 138
---@field IK_Pad_Y_TRIANGLE EInputKey 139
---@field IK_Pad_Start EInputKey 140
---@field IK_Pad_Back_Select EInputKey 141
---@field IK_Pad_DigitUp EInputKey 142
---@field IK_Pad_DigitDown EInputKey 143
---@field IK_Pad_DigitLeft EInputKey 144
---@field IK_Pad_DigitRight EInputKey 145
---@field IK_Pad_LeftThumb EInputKey 146
---@field IK_Pad_RightThumb EInputKey 147
---@field IK_Pad_LeftShoulder EInputKey 148
---@field IK_Pad_RightShoulder EInputKey 149
---@field IK_Pad_LeftTrigger EInputKey 150
---@field IK_Pad_RightTrigger EInputKey 151
---@field IK_Pad_LeftAxisX EInputKey 152
---@field IK_Pad_LeftAxisY EInputKey 153
---@field IK_Pad_RightAxisX EInputKey 154
---@field IK_Pad_RightAxisY EInputKey 155
---@field IK_NumLock EInputKey 156
---@field IK_ScrollLock EInputKey 157
---@field IK_Unknown9E EInputKey 158
---@field IK_Unknown9F EInputKey 159
---@field IK_LShift EInputKey 160
---@field IK_RShift EInputKey 161
---@field IK_LControl EInputKey 162
---@field IK_RControl EInputKey 163
---@field IK_UnknownA4 EInputKey 164
---@field IK_UnknownA5 EInputKey 165
---@field IK_UnknownA6 EInputKey 166
---@field IK_UnknownA7 EInputKey 167
---@field IK_UnknownA8 EInputKey 168
---@field IK_UnknownA9 EInputKey 169
---@field IK_UnknownAA EInputKey 170
---@field IK_UnknownAB EInputKey 171
---@field IK_UnknownAC EInputKey 172
---@field IK_UnknownAD EInputKey 173
---@field IK_UnknownAE EInputKey 174
---@field IK_UnknownAF EInputKey 175
---@field IK_UnknownB0 EInputKey 176
---@field IK_UnknownB1 EInputKey 177
---@field IK_UnknownB2 EInputKey 178
---@field IK_UnknownB3 EInputKey 179
---@field IK_UnknownB4 EInputKey 180
---@field IK_UnknownB5 EInputKey 181
---@field IK_UnknownB6 EInputKey 182
---@field IK_UnknownB7 EInputKey 183
---@field IK_UnknownB8 EInputKey 184
---@field IK_Unicode EInputKey 185
---@field IK_Semicolon EInputKey 186
---@field IK_Equals EInputKey 187
---@field IK_Comma EInputKey 188
---@field IK_Minus EInputKey 189
---@field IK_Period EInputKey 190
---@field IK_Slash EInputKey 191
---@field IK_Tilde EInputKey 192
---@field IK_Mouse4 EInputKey 193
---@field IK_Mouse5 EInputKey 194
---@field IK_Mouse6 EInputKey 195
---@field IK_Mouse7 EInputKey 196
---@field IK_Mouse8 EInputKey 197
---@field IK_UnknownC6 EInputKey 198
---@field IK_UnknownC7 EInputKey 199
---@field IK_Joy1 EInputKey 200
---@field IK_Joy2 EInputKey 201
---@field IK_Joy3 EInputKey 202
---@field IK_Joy4 EInputKey 203
---@field IK_Joy5 EInputKey 204
---@field IK_Joy6 EInputKey 205
---@field IK_Joy7 EInputKey 206
---@field IK_Joy8 EInputKey 207
---@field IK_Joy9 EInputKey 208
---@field IK_Joy10 EInputKey 209
---@field IK_Joy11 EInputKey 210
---@field IK_Joy12 EInputKey 211
---@field IK_Joy13 EInputKey 212
---@field IK_Joy14 EInputKey 213
---@field IK_Joy15 EInputKey 214
---@field IK_Joy16 EInputKey 215
---@field IK_UnknownD8 EInputKey 216
---@field IK_UnknownD9 EInputKey 217
---@field IK_UnknownDA EInputKey 218
---@field IK_LeftBracket EInputKey 219
---@field IK_Backslash EInputKey 220
---@field IK_RightBracket EInputKey 221
---@field IK_SingleQuote EInputKey 222
---@field IK_UnknownDF EInputKey 223
---@field IK_UnknownE0 EInputKey 224
---@field IK_UnknownE1 EInputKey 225
---@field IK_IntlBackslash EInputKey 226
---@field IK_MouseHover EInputKey 227
---@field IK_MouseX EInputKey 228
---@field IK_MouseY EInputKey 229
---@field IK_MouseZ EInputKey 230
---@field IK_MouseW EInputKey 231
---@field IK_JoyU EInputKey 232
---@field IK_JoyV EInputKey 233
---@field IK_JoySlider1 EInputKey 234
---@field IK_JoySlider2 EInputKey 235
---@field IK_MouseWheelUp EInputKey 236
---@field IK_MouseWheelDown EInputKey 237
---@field IK_UnknownEE EInputKey 238
---@field IK_UnknownEF EInputKey 239
---@field IK_JoyX EInputKey 240
---@field IK_JoyY EInputKey 241
---@field IK_JoyZ EInputKey 242
---@field IK_JoyR EInputKey 243
---@field IK_UnknownF4 EInputKey 244
---@field IK_UnknownF5 EInputKey 245
---@field IK_Attn EInputKey 246
---@field IK_ClearSel EInputKey 247
---@field IK_ExSel EInputKey 248
---@field IK_ErEof EInputKey 249
---@field IK_Play EInputKey 250
---@field IK_Zoom EInputKey 251
---@field IK_NoName EInputKey 252
---@field IK_UnknownFD EInputKey 253
---@field IK_UnknownFE EInputKey 254
---@field IK_PS4_OPTIONS EInputKey 255
---@field IK_PS4_TOUCH_PRESS EInputKey 256
---@field IK_Pad_Fake_LeftAxis EInputKey 257
---@field IK_Pad_Fake_RightAxis EInputKey 258
---@field IK_Pad_Fake_RelativeLeftAxis EInputKey 259
---@field IK_Pad_Fake_RelativeRightAxis EInputKey 260
---@field IK_Pad_Fake_DigitLeftRight EInputKey 261
---@field IK_Pad_Fake_DigitUpDown EInputKey 262
---@field IK_STADIA_CAPTURE EInputKey 263
---@field IK_SWITCH_CAPTURE EInputKey 264
---@field IK_CAPTURE EInputKey 265
---@field IK_Last EInputKey 266
---@field IK_Count EInputKey 267
---@field IK_Pad_First EInputKey 136
---@field IK_Pad_Last EInputKey 155
EInputKey = {}

---@class EInventoryComboBoxMode
---@field FromInventory EInventoryComboBoxMode 0
---@field FromEquipment EInventoryComboBoxMode 1
---@field CustomizeFromEquipment EInventoryComboBoxMode 2
---@field CustomizeFromInventory EInventoryComboBoxMode 3
---@field CustomizeCyberware EInventoryComboBoxMode 4
EInventoryComboBoxMode = {}

---@class EInventoryDataStatDisplayType
---@field CompareBar EInventoryDataStatDisplayType 0
---@field DisplayBar EInventoryDataStatDisplayType 1
---@field Value EInventoryDataStatDisplayType 2
EInventoryDataStatDisplayType = {}

---@class EItemOperationType
---@field ADD EItemOperationType 0
---@field REMOVE EItemOperationType 1
EItemOperationType = {}

---@class EJuryrigTrapState
---@field UNARMED EJuryrigTrapState 0
---@field ARMED EJuryrigTrapState 1
---@field TRIGGERED EJuryrigTrapState 2
EJuryrigTrapState = {}

---@class EKnockdownStates
---@field Invalid EKnockdownStates 0
---@field Start EKnockdownStates 1
---@field FallLoop EKnockdownStates 2
---@field Land EKnockdownStates 3
---@field Recovery EKnockdownStates 4
---@field AirRecovery EKnockdownStates 5
EKnockdownStates = {}

---@class ELastUsed
---@field Weapon ELastUsed 0
---@field Melee ELastUsed 1
---@field Ranged ELastUsed 2
---@field Heavy ELastUsed 3
ELastUsed = {}

---@class ELaunchMode
---@field Primary ELaunchMode 0
---@field Secondary ELaunchMode 1
---@field None ELaunchMode 2
ELaunchMode = {}

---@class ELauncherActionType
---@field QuickAction ELauncherActionType 0
---@field ChargeAction ELauncherActionType 1
---@field None ELauncherActionType 2
ELauncherActionType = {}

---@class ELayoutType
---@field Generic ELayoutType 0
---@field Militech ELayoutType 1
---@field Arasaka ELayoutType 2
---@field Zetatech ELayoutType 3
ELayoutType = {}

---@class ELightSequenceStage
---@field NONE ELightSequenceStage 0
---@field INPROGRESS ELightSequenceStage 1
---@field COMPLETE ELightSequenceStage 2
ELightSequenceStage = {}

---@class ELightShadowCastingMode
---@field LSCM_None ELightShadowCastingMode 0
---@field LSCM_Normal ELightShadowCastingMode 1
---@field LSCM_OnlyDynamic ELightShadowCastingMode 2
---@field LSCM_OnlyStatic ELightShadowCastingMode 3
---@field LSCM_NormalAndContact ELightShadowCastingMode 4
---@field LSCM_OnlyContact ELightShadowCastingMode 5
ELightShadowCastingMode = {}

---@class ELightShadowSoftnessMode
---@field LSSM_ExtraSoft ELightShadowSoftnessMode 0
---@field LSSM_Soft ELightShadowSoftnessMode 1
---@field LSSM_Default ELightShadowSoftnessMode 2
---@field LSSM_Sharp ELightShadowSoftnessMode 3
---@field LSSM_ExtraSharp ELightShadowSoftnessMode 4
ELightShadowSoftnessMode = {}

---@class ELightSwitchRandomizerType
---@field RANDOM ELightSwitchRandomizerType 0
---@field RANDOM_PROGRESSIVE ELightSwitchRandomizerType 1
---@field NONE ELightSwitchRandomizerType 2
ELightSwitchRandomizerType = {}

---@class ELightType
---@field LT_Point ELightType 0
---@field LT_Spot ELightType 1
---@field LT_Area ELightType 2
ELightType = {}

---@class ELightUnit
---@field LU_Lumen ELightUnit 0
---@field LU_Watt ELightUnit 1
---@field LU_Lux ELightUnit 2
---@field LU_Nit ELightUnit 3
---@field LU_EV100 ELightUnit 4
ELightUnit = {}

---@class ELinkType
---@field NETWORK ELinkType 0
---@field GRID ELinkType 1
---@field FREE ELinkType 2
---@field INVALID ELinkType 3
ELinkType = {}

---@class ELogType
---@field DEFAULT ELogType 0
---@field WARNING ELogType 1
---@field ERROR ELogType 2
ELogType = {}

---@class ELogicOperator
---@field OR ELogicOperator 0
---@field AND ELogicOperator 1
ELogicOperator = {}

---@class EMagazineAmmoState
---@field None EMagazineAmmoState 0
---@field FirstBullet EMagazineAmmoState 1
---@field LastBullet EMagazineAmmoState 2
EMagazineAmmoState = {}

---@class EMappinDisplayMode
---@field PLAYSTYLE EMappinDisplayMode 0
---@field ROLE EMappinDisplayMode 1
---@field MINIMALISTIC EMappinDisplayMode 2
EMappinDisplayMode = {}

---@class EMappinVisualState
---@field Default EMappinVisualState 0
---@field Available EMappinVisualState 1
---@field Unavailable EMappinVisualState 2
---@field Inactive EMappinVisualState 3
---@field None EMappinVisualState 4
EMappinVisualState = {}

---@class EMaterialModifier
---@field EMATMOD_HitProxy EMaterialModifier 0
---@field EMATMOD_WindData EMaterialModifier 1
---@field EMATMOD_ParticleParams EMaterialModifier 2
---@field EMATMOD_RemoteCamera EMaterialModifier 3
---@field EMATMOD_Mirror EMaterialModifier 4
---@field EMATMOD_CustomStructBuffer EMaterialModifier 5
---@field EMATMOD_MotionMatrix EMaterialModifier 7
---@field EMATMOD_ColorAndTexture EMaterialModifier 8
---@field EMATMOD_MaterialParams EMaterialModifier 9
---@field EMATMOD_Eye EMaterialModifier 10
---@field EMATMOD_Skin EMaterialModifier 11
---@field EMATMOD_Dismemberment EMaterialModifier 13
---@field EMATMOD_Garments EMaterialModifier 14
---@field EMATMOD_ShadowsDebugParams EMaterialModifier 15
---@field EMATMOD_MultilayeredDebug EMaterialModifier 16
---@field EMATMOD_ParallaxParams EMaterialModifier 17
---@field EMATMOD_HighlightsParams EMaterialModifier 18
---@field EMATMOD_DebugColoring EMaterialModifier 19
---@field EMATMOD_DrawBufferMask EMaterialModifier 20
---@field EMATMOD_AutoSpawnData EMaterialModifier 21
---@field EMATMOD_DestructionRegions EMaterialModifier 22
---@field EMATMOD_VehicleParams EMaterialModifier 12
---@field EMATMOD_EffectParams EMaterialModifier 6
---@field EMATMOD_FloatTracks EMaterialModifier 23
---@field EMATMOD_AutoHideDistance EMaterialModifier 24
---@field EMATMOD_Rain EMaterialModifier 25
---@field EMATMOD_PlanarReflections EMaterialModifier 26
---@field EMATMOD_WaterSim EMaterialModifier 27
---@field EMATMOD_TransparencyClipParams EMaterialModifier 28
---@field EMATMOD_MAX EMaterialModifier 29
EMaterialModifier = {}

---@class EMaterialPriority
---@field EMP_Normal EMaterialPriority 0
---@field EMP_Front EMaterialPriority 1
EMaterialPriority = {}

---@class EMaterialShaderTarget
---@field MSH_Invalid EMaterialShaderTarget 0
---@field MSH_VertexShader EMaterialShaderTarget 1
---@field MSH_PixelShader EMaterialShaderTarget 2
---@field MSH_MAX EMaterialShaderTarget 3
EMaterialShaderTarget = {}

---@class EMaterialShadingRateMode
---@field MSRM_Default EMaterialShadingRateMode 0
---@field MSRM_Disable EMaterialShadingRateMode 1
---@field MSRM_Force2x2 EMaterialShadingRateMode 2
EMaterialShadingRateMode = {}

---@class EMaterialVertexFactory
---@field MVF_Terrain EMaterialVertexFactory 1
---@field MVF_MeshStatic EMaterialVertexFactory 2
---@field MVF_MeshSkinned EMaterialVertexFactory 3
---@field MVF_MeshExtSkinned EMaterialVertexFactory 4
---@field MVF_GarmentMeshSkinned EMaterialVertexFactory 5
---@field MVF_GarmentMeshExtSkinned EMaterialVertexFactory 6
---@field MVF_MeshSpeedTree EMaterialVertexFactory 7
---@field MVF_ParticleBilboard EMaterialVertexFactory 8
---@field MVF_ParticleParallel EMaterialVertexFactory 9
---@field MVF_ParticleMotionBlur EMaterialVertexFactory 10
---@field MVF_ParticleSphereAligned EMaterialVertexFactory 11
---@field MVF_ParticleVerticalFixed EMaterialVertexFactory 12
---@field MVF_ParticleTrail EMaterialVertexFactory 13
---@field MVF_ParticleFacingTrail EMaterialVertexFactory 14
---@field MVF_ParticleScreen EMaterialVertexFactory 15
---@field MVF_ParticleBeam EMaterialVertexFactory 16
---@field MVF_ParticleFacingBeam EMaterialVertexFactory 17
---@field MVF_Decal EMaterialVertexFactory 18
---@field MVF_Debug EMaterialVertexFactory 19
---@field MVF_DrawBuffer EMaterialVertexFactory 20
---@field MVF_Fullscreen EMaterialVertexFactory 21
---@field MVF_MeshSkinnedVehicle EMaterialVertexFactory 22
---@field MVF_MeshStaticVehicle EMaterialVertexFactory 23
---@field MVF_MeshProcedural EMaterialVertexFactory 24
---@field MVF_MeshDestructible EMaterialVertexFactory 25
---@field MVF_MeshDestructibleSkinned EMaterialVertexFactory 26
---@field MVF_MeshSkinnedLightBlockers EMaterialVertexFactory 27
---@field MVF_MeshExtSkinnedLightBlockers EMaterialVertexFactory 28
---@field MVF_GarmentMeshSkinnedLightBlockers EMaterialVertexFactory 29
---@field MVF_GarmentMeshExtSkinnedLightBlockers EMaterialVertexFactory 30
---@field MVF_MeshSkinnedSingleBone EMaterialVertexFactory 31
---@field MVF_MeshProxy EMaterialVertexFactory 32
---@field MVF_MeshWindowProxy EMaterialVertexFactory 33
EMaterialVertexFactory = {}

---@class EMathOperationType
---@field Add EMathOperationType 0
---@field Set EMathOperationType 1
EMathOperationType = {}

---@class EMathOperator
---@field None EMathOperator 0
---@field Add EMathOperator 1
---@field Subtract EMathOperator 2
---@field Multiply EMathOperator 3
---@field Divide EMathOperator 4
EMathOperator = {}

---@class EMeasurementSystem
---@field Metric EMeasurementSystem 0
---@field Imperial EMeasurementSystem 1
EMeasurementSystem = {}

---@class EMeasurementUnit
---@field Millimeter EMeasurementUnit 0
---@field Centimeter EMeasurementUnit 1
---@field Meter EMeasurementUnit 2
---@field Kilometer EMeasurementUnit 3
---@field Inch EMeasurementUnit 4
---@field Feet EMeasurementUnit 5
---@field Yard EMeasurementUnit 6
---@field Mile EMeasurementUnit 7
---@field NauticalMile EMeasurementUnit 8
---@field SquareMillimeter EMeasurementUnit 9
---@field SquareCentimeter EMeasurementUnit 10
---@field SquareMeter EMeasurementUnit 11
---@field Hectare EMeasurementUnit 12
---@field SquareKilometer EMeasurementUnit 13
---@field SquareInch EMeasurementUnit 14
---@field SquareFeet EMeasurementUnit 15
---@field SquareYard EMeasurementUnit 16
---@field Acre EMeasurementUnit 17
---@field SquareMile EMeasurementUnit 18
---@field CubicCentimer EMeasurementUnit 19
---@field CubicDecimeter EMeasurementUnit 20
---@field CubicMeter EMeasurementUnit 21
---@field Liter EMeasurementUnit 22
---@field Hectoliter EMeasurementUnit 23
---@field CubicInch EMeasurementUnit 24
---@field CubicFeet EMeasurementUnit 25
---@field FluidOunce EMeasurementUnit 26
---@field Pint EMeasurementUnit 27
---@field Gallon EMeasurementUnit 28
---@field Gram EMeasurementUnit 29
---@field Kilogram EMeasurementUnit 30
---@field Tonne EMeasurementUnit 31
---@field Ounce EMeasurementUnit 32
---@field Pound EMeasurementUnit 33
---@field Stone EMeasurementUnit 34
---@field Celcius EMeasurementUnit 35
---@field Fahrenheit EMeasurementUnit 36
---@field MAX EMeasurementUnit 37
EMeasurementUnit = {}

---@class EMeleeAttackType
---@field Combo EMeleeAttackType 0
---@field Strong EMeleeAttackType 1
---@field Final EMeleeAttackType 2
---@field Block EMeleeAttackType 3
---@field Safe EMeleeAttackType 4
---@field Slide EMeleeAttackType 5
---@field Crouch EMeleeAttackType 6
---@field Jump EMeleeAttackType 7
---@field Sprint EMeleeAttackType 8
---@field Fall EMeleeAttackType 9
---@field Throw EMeleeAttackType 10
---@field Dodge EMeleeAttackType 11
---@field Equip EMeleeAttackType 12
EMeleeAttackType = {}

---@class EMeleeAttacks
---@field Invalid EMeleeAttacks 0
---@field LightAtk_Left EMeleeAttacks 1
---@field LightAtk_Right EMeleeAttacks 2
---@field ComboAtk_3hits_Part1 EMeleeAttacks 3
---@field ComboAtk_3hits_Part2 EMeleeAttacks 4
---@field ComboAtk_3hits_Part3 EMeleeAttacks 5
---@field ChargeAttack EMeleeAttacks 6
EMeleeAttacks = {}

---@class EMeshParticleOrientationMode
---@field MPOM_Normal EMeshParticleOrientationMode 0
---@field MPOM_MovementDirection EMeshParticleOrientationMode 1
---@field MPOM_NoRotation EMeshParticleOrientationMode 2
EMeshParticleOrientationMode = {}

---@class EMeshShadowImportanceBias
---@field MSIB_EvenLessImportant EMeshShadowImportanceBias -2
---@field MSIB_LessImportant EMeshShadowImportanceBias -1
---@field MSIB_Default EMeshShadowImportanceBias 0
---@field MSIB_MoreImportant EMeshShadowImportanceBias 1
---@field MSIB_EvenMoreImportant EMeshShadowImportanceBias 2
EMeshShadowImportanceBias = {}

---@class EMeshStreamType
---@field MST_Position_3F EMeshStreamType 1
---@field MST_SkinningIndices_4U8 EMeshStreamType 2
---@field MST_SkinningWeights_4F EMeshStreamType 4
---@field MST_SkinningIndicesExt_4U8 EMeshStreamType 262144
---@field MST_SkinningWeightsExt_4F EMeshStreamType 524288
---@field MST_Color_U32 EMeshStreamType 8
---@field MST_TexCoord0_2F EMeshStreamType 16
---@field MST_TexCoord1_2F EMeshStreamType 32
---@field MST_Normal_3F EMeshStreamType 64
---@field MST_Tangent_3F EMeshStreamType 128
---@field MST_Binormal_3F EMeshStreamType 256
---@field MST_DestructionIndices_2U16 EMeshStreamType 1048576
---@field MST_Multilayer_1F EMeshStreamType 2097152
---@field MST_Index_U16 EMeshStreamType 512
---@field MST_GarmentFlags_U32 EMeshStreamType 4194304
---@field MST_MorphOffset_3F EMeshStreamType 8388608
---@field MST_VehicleDmgNormalFront_3F EMeshStreamType 16777216
---@field MST_VehicleDmgNormalSides_3F EMeshStreamType 33554432
---@field MST_VehicleDmgPosFront_3F EMeshStreamType 67108864
---@field MST_VehicleDmgPosSides_3F EMeshStreamType 134217728
---@field MST_WindBranchData_4F EMeshStreamType 1024
---@field MST_BranchData_7F EMeshStreamType 16384
---@field MST_MorphVertexData_3F EMeshStreamType 268435456
---@field MST_FoliageBoneId_I16 EMeshStreamType 536870912
---@field MST_LightBlockerIntensity_1F EMeshStreamType 1073741824
EMeshStreamType = {}

---@class EMeshVertexType
---@field MVT_StaticMesh EMeshVertexType 0
---@field MVT_ProceduralMesh EMeshVertexType 1
---@field MVT_SkinnedMesh EMeshVertexType 2
---@field MVT_ExtSkinnedMesh EMeshVertexType 3
---@field MVT_GarmentSkinnedMesh EMeshVertexType 4
---@field MVT_ExtGarmentSkinnedMesh EMeshVertexType 5
---@field MVT_SpeedTreeMesh EMeshVertexType 6
---@field MVT_StaticMeshVehicle EMeshVertexType 7
---@field MVT_SkinnedMeshVehicle EMeshVertexType 8
---@field MVT_Terrain EMeshVertexType 9
---@field MVT_DestructibleMesh EMeshVertexType 10
---@field MVT_DestructibleMeshSkinned EMeshVertexType 11
---@field MVT_SkinnedMeshLightBlocker EMeshVertexType 12
---@field MVT_ExtSkinnedMeshLightBlocker EMeshVertexType 13
---@field MVT_GarmentSkinnedMeshLightBlocker EMeshVertexType 14
---@field MVT_ExtGarmentSkinnedMeshLightBlocker EMeshVertexType 15
---@field MVT_SkinnedMeshSingleBone EMeshVertexType 16
---@field MVT_ProxyMesh EMeshVertexType 17
---@field MVT_ProxyWindowMesh EMeshVertexType 18
EMeshVertexType = {}

---@class EMissileRainPhase
---@field Init EMissileRainPhase 0
---@field Phase1 EMissileRainPhase 1
---@field Phase2 EMissileRainPhase 2
EMissileRainPhase = {}

---@class EMoveAssistLevel
---@field Off EMoveAssistLevel 0
---@field SpecialAttacks EMoveAssistLevel 1
---@field AllAttacks EMoveAssistLevel 2
EMoveAssistLevel = {}

---@class EMovementDirection
---@field left EMovementDirection 0
---@field right EMovementDirection 1
---@field up EMovementDirection 2
---@field down EMovementDirection 3
---@field front EMovementDirection 4
---@field back EMovementDirection 5
EMovementDirection = {}

---@class ENPCPhaseState
---@field Phase1 ENPCPhaseState 0
---@field Phase2 ENPCPhaseState 1
---@field Phase3 ENPCPhaseState 2
---@field Phase4 ENPCPhaseState 3
---@field Phase5 ENPCPhaseState 4
---@field Invalid ENPCPhaseState 5
ENPCPhaseState = {}

---@class ENPCTelemetryData
---@field HitByLightAttack ENPCTelemetryData 0
---@field HitByStrongAttack ENPCTelemetryData 1
---@field HitByFinalComboAttack ENPCTelemetryData 2
---@field HitByBlockAttack ENPCTelemetryData 3
---@field BlockedAttack ENPCTelemetryData 4
---@field DeflectedAttack ENPCTelemetryData 5
---@field WasGuardBreaked ENPCTelemetryData 6
ENPCTelemetryData = {}

---@class ENetworkRelation
---@field MASTER ENetworkRelation 0
---@field SLAVE ENetworkRelation 1
---@field NONE ENetworkRelation 2
ENetworkRelation = {}

---@class ENeutralizeType
---@field None ENeutralizeType 0
---@field Killed ENeutralizeType 1
---@field Defeated ENeutralizeType 2
---@field Unconscious ENeutralizeType 3
ENeutralizeType = {}

---@class ENoiseType
---@field NT_Random ENoiseType 0
---@field NT_Simplex2D ENoiseType 1
---@field NT_Simplex3D ENoiseType 2
ENoiseType = {}

---@class EOperationClassType
---@field Local EOperationClassType 0
---@field BaseState EOperationClassType 1
---@field DoorState EOperationClassType 2
---@field BaseAction EOperationClassType 3
---@field CustomActions EOperationClassType 4
---@field TriggerVolume EOperationClassType 5
---@field Hit EOperationClassType 6
---@field InteractionArea EOperationClassType 7
---@field Senses EOperationClassType 8
---@field FocusMode EOperationClassType 9
EOperationClassType = {}

---@class EOutlineType
---@field NONE EOutlineType 0
---@field GREEN EOutlineType 1
---@field RED EOutlineType 2
EOutlineType = {}

---@class EParticleEventSpawnObject
---@field PESO_Particle EParticleEventSpawnObject 0
---@field PESO_Decal EParticleEventSpawnObject 1
EParticleEventSpawnObject = {}

---@class EParticleEventType
---@field PET_Any EParticleEventType 4
---@field PET_Death EParticleEventType 0
---@field PET_OverLife EParticleEventType 1
---@field PET_OverDistance EParticleEventType 2
---@field PET_Collision EParticleEventType 3
EParticleEventType = {}

---@class EPaymentSchedule
---@field WEEKLY EPaymentSchedule 0
---@field MONTHLY EPaymentSchedule 1
EPaymentSchedule = {}

---@class EPermissionSource
---@field GAMEPLAY EPermissionSource 0
---@field PLAYER EPermissionSource 1
---@field QUEST EPermissionSource 2
EPermissionSource = {}

---@class EPersonalLinkConnectionStatus
---@field NOT_CONNECTED EPersonalLinkConnectionStatus 0
---@field CONNECTING EPersonalLinkConnectionStatus 1
---@field CONNECTED EPersonalLinkConnectionStatus 2
---@field DISCONNECTING EPersonalLinkConnectionStatus 3
EPersonalLinkConnectionStatus = {}

---@class EPersonalLinkSlotSide
---@field FRONT EPersonalLinkSlotSide 0
---@field RIGHT EPersonalLinkSlotSide 1
---@field BOTTOM EPersonalLinkSlotSide 2
EPersonalLinkSlotSide = {}

---@class EPingType
---@field DIRECT EPingType 0
---@field SPACE EPingType 1
EPingType = {}

---@class EPlayerMovementDirection
---@field Forward EPlayerMovementDirection 0
---@field Right EPlayerMovementDirection 1
---@field Back EPlayerMovementDirection 2
---@field Left EPlayerMovementDirection 3
EPlayerMovementDirection = {}

---@class EPlaystyle
---@field NETRUNNER EPlaystyle 0
---@field SOLO EPlaystyle 1
---@field TECHIE EPlaystyle 2
EPlaystyle = {}

---@class EPlaystyleType
---@field NONE EPlaystyleType -1
---@field TECHIE EPlaystyleType 0
---@field NETRUNNER EPlaystyleType 1
---@field TECHIE_AND_NETRUNNER EPlaystyleType 2
EPlaystyleType = {}

---@class EPowerDifferential
---@field IMPOSSIBLE EPowerDifferential -6
---@field HARD EPowerDifferential -3
---@field NORMAL EPowerDifferential 2
---@field EASY EPowerDifferential 4
---@field TRASH EPowerDifferential 5
EPowerDifferential = {}

---@class EPreventionDebugProcessReason
---@field Redirected_IsPsycho EPreventionDebugProcessReason 0
---@field Process_NewDamage EPreventionDebugProcessReason 1
---@field Process_EntityCalls EPreventionDebugProcessReason 2
---@field Abort_EntitySame EPreventionDebugProcessReason 3
---@field Abort_DamageZero EPreventionDebugProcessReason 4
---@field Abort_SystemLockedBySceneTier EPreventionDebugProcessReason 5
EPreventionDebugProcessReason = {}

---@class EPreventionHeatStage
---@field Heat_0 EPreventionHeatStage 0
---@field Heat_1 EPreventionHeatStage 1
---@field Heat_2 EPreventionHeatStage 2
---@field Heat_3 EPreventionHeatStage 3
---@field Heat_4 EPreventionHeatStage 4
---@field Size EPreventionHeatStage 5
---@field Invalid EPreventionHeatStage 6
EPreventionHeatStage = {}

---@class EPreventionPsychoLogicType
---@field Start EPreventionPsychoLogicType 0
---@field PoliceKilled EPreventionPsychoLogicType 1
---@field PoliceSpawn EPreventionPsychoLogicType 2
---@field PoliceDespawn EPreventionPsychoLogicType 3
---@field DeescalationZeroExecutionLocked EPreventionPsychoLogicType 4
---@field DeescalationZeroExecute EPreventionPsychoLogicType 5
EPreventionPsychoLogicType = {}

---@class EPreventionSystemInstruction
---@field Safe EPreventionSystemInstruction 0
---@field Active EPreventionSystemInstruction 1
---@field Off EPreventionSystemInstruction 2
---@field On EPreventionSystemInstruction 3
EPreventionSystemInstruction = {}

---@class EPriority
---@field VeryLow EPriority 0
---@field Low EPriority 1
---@field Medium EPriority 2
---@field High EPriority 3
---@field VeryHigh EPriority 4
---@field Absolute EPriority 5
EPriority = {}

---@class EProgressBarContext
---@field QuickHack EProgressBarContext 0
---@field PhoneCall EProgressBarContext 1
EProgressBarContext = {}

---@class EProgressBarType
---@field UPLOAD EProgressBarType 0
---@field DURATION EProgressBarType 1
EProgressBarType = {}

---@class EQuestFilterType
---@field DONT_CHANGE EQuestFilterType 0
---@field ALLOW_NONE EQuestFilterType 1
---@field ALLOW_COMBAT_ONLY EQuestFilterType 2
---@field ALLOW_ALL EQuestFilterType 3
EQuestFilterType = {}

---@class ERadialMode
---@field ApplyOnlyActiveSlot ERadialMode 0
---@field ApplyActiveSlotAndConsumables ERadialMode 1
ERadialMode = {}

---@class ERadioStationList
---@field AGGRO_INDUSTRIAL ERadioStationList 0
---@field ELECTRO_INDUSTRIAL ERadioStationList 1
---@field HIP_HOP ERadioStationList 2
---@field AGGRO_TECHNO ERadioStationList 3
---@field DOWNTEMPO ERadioStationList 4
---@field ATTITUDE_ROCK ERadioStationList 5
---@field POP ERadioStationList 6
---@field LATINO ERadioStationList 7
---@field METAL ERadioStationList 8
---@field NONE ERadioStationList 9
ERadioStationList = {}

---@class EReactionValue
---@field Fear EReactionValue 0
---@field Aggressive EReactionValue 1
EReactionValue = {}

---@class ERenderDynamicDecalAtlas
---@field RDDA_1x1 ERenderDynamicDecalAtlas 0
---@field RDDA_2x1 ERenderDynamicDecalAtlas 1
---@field RDDA_2x2 ERenderDynamicDecalAtlas 2
---@field RDDA_4x2 ERenderDynamicDecalAtlas 3
---@field RDDA_4x4 ERenderDynamicDecalAtlas 4
---@field RDDA_8x4 ERenderDynamicDecalAtlas 5
ERenderDynamicDecalAtlas = {}

---@class ERenderDynamicDecalProjection
---@field RDDP_Ortho ERenderDynamicDecalProjection 0
---@field RDDP_Sphere ERenderDynamicDecalProjection 1
ERenderDynamicDecalProjection = {}

---@class ERenderMaterialType
---@field RMT_Standard ERenderMaterialType 0
---@field RMT_Subsurface ERenderMaterialType 1
---@field RMT_Cloth ERenderMaterialType 2
---@field RMT_Eye ERenderMaterialType 3
---@field RMT_Hair ERenderMaterialType 4
---@field RMT_Foliage ERenderMaterialType 5
ERenderMaterialType = {}

---@class ERenderMeshStreams
---@field RMS_PositionSkinning ERenderMeshStreams 1
---@field RMS_TexCoords ERenderMeshStreams 2
---@field RMS_TangentFrame ERenderMeshStreams 4
---@field RMS_Extended ERenderMeshStreams 8
---@field RMS_Custom0 ERenderMeshStreams 16
---@field RMS_BindAll ERenderMeshStreams 255
ERenderMeshStreams = {}

---@class ERenderObjectType
---@field ROT_Static ERenderObjectType 0
---@field ROT_Terrain ERenderObjectType 1
---@field ROT_Road ERenderObjectType 2
---@field ROT_Skinned ERenderObjectType 20
---@field ROT_Character ERenderObjectType 21
---@field ROT_Foliage ERenderObjectType 22
---@field ROT_Grass ERenderObjectType 23
---@field ROT_Vehicle ERenderObjectType 24
---@field ROT_Weapon ERenderObjectType 25
---@field ROT_Particle ERenderObjectType 26
---@field ROT_Enemy ERenderObjectType 27
---@field ROT_CustomCharacter1 ERenderObjectType 12
---@field ROT_CustomCharacter2 ERenderObjectType 13
---@field ROT_CustomCharacter3 ERenderObjectType 14
---@field ROT_MainPlayer ERenderObjectType 15
---@field ROT_NoAO ERenderObjectType 16
---@field ROT_NoLighting ERenderObjectType 17
---@field ROT_NoTXAA ERenderObjectType 18
ERenderObjectType = {}

---@class ERenderProxyType
---@field RPT_None ERenderProxyType 0
---@field RPT_Mesh ERenderProxyType 1
---@field RPT_PointLight ERenderProxyType 2
---@field RPT_SpotLight ERenderProxyType 3
---@field RPT_AreaLight ERenderProxyType 4
---@field RPT_Particles ERenderProxyType 5
---@field RPT_Foliage ERenderProxyType 6
---@field RPT_SSDecal ERenderProxyType 7
---@field RPT_VectorField ERenderProxyType 8
---@field RPT_FogVolume ERenderProxyType 9
---@field RPT_GI ERenderProxyType 10
---@field RPT_ReflectionProbe ERenderProxyType 11
---@field RPT_MorphTargetMesh ERenderProxyType 12
---@field RPT_LightVolume ERenderProxyType 13
---@field RPT_DynamicDecalSpawner ERenderProxyType 14
---@field RPT_AutoSpawner ERenderProxyType 15
---@field RPT_LightBlocker ERenderProxyType 16
ERenderProxyType = {}

---@class ERenderingMode
---@field RM_HitProxies ERenderingMode 2
---@field RM_Shaded ERenderingMode 0
---@field RM_Shaded_NoAmbient ERenderingMode 1
---@field RM_GBufferOnly ERenderingMode 3
---@field RM_SafeMode ERenderingMode 4
---@field RM_OverlayOnly ERenderingMode 5
ERenderingMode = {}

---@class ERenderingPlane
---@field RPl_Scene ERenderingPlane 0
---@field RPl_Background ERenderingPlane 1
---@field RPl_Weapon ERenderingPlane 2
ERenderingPlane = {}

---@class ERentStatus
---@field PAID ERentStatus 0
---@field OVERDUE ERentStatus 1
---@field EVICTED ERentStatus 2
ERentStatus = {}

---@class EReprimandInstructions
---@field INITIATE_FIRST EReprimandInstructions 0
---@field INITIATE_SUCCESSIVE EReprimandInstructions 1
---@field TAKEOVER EReprimandInstructions 2
---@field CONCLUDE_SUCCESSFUL EReprimandInstructions 3
---@field CONCLUDE_FAILED EReprimandInstructions 4
---@field RELEASE_TO_ANOTHER_ENTITY EReprimandInstructions 5
EReprimandInstructions = {}

---@class ERevealDurationType
---@field TEMPORARY ERevealDurationType 0
---@field PERMANENT ERevealDurationType 1
ERevealDurationType = {}

---@class ERevealPlayerType
---@field DONT_REVEAL ERevealPlayerType 0
---@field REVEAL_ONCE ERevealPlayerType 1
ERevealPlayerType = {}

---@class ERevealState
---@field STARTED ERevealState 0
---@field CONTINUE ERevealState 1
---@field STOPPED ERevealState 2
ERevealState = {}

---@class ESSAOQualityLevel
---@field SSAOQUALITY_VeryLow ESSAOQualityLevel 0
---@field SSAOQUALITY_Low ESSAOQualityLevel 1
---@field SSAOQUALITY_Medium ESSAOQualityLevel 2
---@field SSAOQUALITY_High ESSAOQualityLevel 3
---@field SSAOQUALITY_VeryHigh ESSAOQualityLevel 4
ESSAOQualityLevel = {}

---@class ESaveFormat
---@field SF_PNG ESaveFormat 2
---@field SF_EXR ESaveFormat 32
---@field SF_PNG_AND_EXR ESaveFormat 34
ESaveFormat = {}

---@class EScreenRatio
---@field Screen_21x9 EScreenRatio 0
---@field Screen_9x21 EScreenRatio 1
---@field Screen_9x16 EScreenRatio 2
---@field Screen_3x4 EScreenRatio 3
---@field Screen_4x3 EScreenRatio 4
---@field Screen_1x1 EScreenRatio 5
EScreenRatio = {}

---@class ESecurityAccessLevel
---@field ESL_NONE ESecurityAccessLevel 0
---@field ESL_LOCAL ESecurityAccessLevel 1
---@field ESL_0 ESecurityAccessLevel 2
---@field ESL_1 ESecurityAccessLevel 3
---@field ESL_2 ESecurityAccessLevel 4
---@field ESL_3 ESecurityAccessLevel 5
---@field ESL_4 ESecurityAccessLevel 6
ESecurityAccessLevel = {}

---@class ESecurityAreaType
---@field DISABLED ESecurityAreaType 0
---@field SAFE ESecurityAreaType 1
---@field RESTRICTED ESecurityAreaType 2
---@field DANGEROUS ESecurityAreaType 3
ESecurityAreaType = {}

---@class ESecurityGateEntranceType
---@field OnlySideA ESecurityGateEntranceType 0
---@field OnlySideB ESecurityGateEntranceType 1
---@field AnySide ESecurityGateEntranceType 2
ESecurityGateEntranceType = {}

---@class ESecurityGateResponseType
---@field AUDIOVISUAL_ONLY ESecurityGateResponseType 0
---@field SEC_SYS_REPRIMAND ESecurityGateResponseType 1
---@field SEC_SYS_COMBAT ESecurityGateResponseType 2
ESecurityGateResponseType = {}

---@class ESecurityGateScannerIssueType
---@field NoIssues ESecurityGateScannerIssueType 0
---@field ScannerEmpty ESecurityGateScannerIssueType 1
---@field Overcrowded ESecurityGateScannerIssueType 2
---@field TargetAlreadyScanned ESecurityGateScannerIssueType 3
ESecurityGateScannerIssueType = {}

---@class ESecurityGateStatus
---@field READY ESecurityGateStatus 0
---@field SCANNING ESecurityGateStatus 1
---@field THREAT_DETECTED ESecurityGateStatus 2
ESecurityGateStatus = {}

---@class ESecurityNotificationType
---@field REPRIMAND_SUCCESSFUL ESecurityNotificationType -2
---@field DEESCALATE ESecurityNotificationType -1
---@field DEFAULT ESecurityNotificationType 0
---@field ILLEGAL_ACTION ESecurityNotificationType 1
---@field REPRIMAND_ESCALATE ESecurityNotificationType 2
---@field DEVICE_DESTROYED ESecurityNotificationType 3
---@field ALARM ESecurityNotificationType 4
---@field SECURITY_GATE ESecurityNotificationType 5
---@field COMBAT ESecurityNotificationType 6
---@field QUEST ESecurityNotificationType 7
ESecurityNotificationType = {}

---@class ESecuritySystemState
---@field UNINITIALIZED ESecuritySystemState 0
---@field SAFE ESecuritySystemState 1
---@field ALERTED ESecuritySystemState 2
---@field COMBAT ESecuritySystemState 3
ESecuritySystemState = {}

---@class ESecurityTurretStatus
---@field THREAT ESecurityTurretStatus -1
---@field SHOOTING ESecurityTurretStatus 0
---@field WORKING ESecurityTurretStatus 1
---@field SCANING ESecurityTurretStatus 2
---@field DAMAGED ESecurityTurretStatus 3
ESecurityTurretStatus = {}

---@class ESecurityTurretType
---@field SIMPLE ESecurityTurretType 0
ESecurityTurretType = {}

---@class ESensorDeviceStates
---@field NONE ESensorDeviceStates 0
---@field IDLE ESensorDeviceStates 1
---@field IDLEFORCED ESensorDeviceStates 2
---@field TARGETLOCK ESensorDeviceStates 3
---@field TARGETLOSE ESensorDeviceStates 4
---@field TARGETRECEIVED ESensorDeviceStates 5
---@field REPRIMAND ESensorDeviceStates 6
---@field JAMMER ESensorDeviceStates 7
ESensorDeviceStates = {}

---@class ESensorDeviceWakeState
---@field NONE ESensorDeviceWakeState -1
---@field CLOSED ESensorDeviceWakeState 0
---@field WAKEN ESensorDeviceWakeState 1
---@field OPEN ESensorDeviceWakeState 2
ESensorDeviceWakeState = {}

---@class EShouldChangeAttitude
---@field PERSISTENTLY EShouldChangeAttitude 0
---@field TEMPORARLY EShouldChangeAttitude 1
EShouldChangeAttitude = {}

---@class ESmartBulletPhase
---@field Init ESmartBulletPhase 0
---@field Parabolic ESmartBulletPhase 1
---@field Follow ESmartBulletPhase 2
---@field Linear ESmartBulletPhase 3
---@field Miss ESmartBulletPhase 4
ESmartBulletPhase = {}

---@class ESmartHousePreset
---@field MorningPreset ESmartHousePreset 0
---@field EveningPreset ESmartHousePreset 1
---@field NightPreset ESmartHousePreset 2
ESmartHousePreset = {}

---@class ESoundStatusEffects
---@field NONE ESoundStatusEffects 0
---@field DEAFENED ESoundStatusEffects 1
---@field SUPRESS_NOISE ESoundStatusEffects 2
ESoundStatusEffects = {}

---@class ESpaceFillMode
---@field JustifyLeft ESpaceFillMode 0
---@field JustifyRight ESpaceFillMode 1
---@field JustifyCenter ESpaceFillMode 2
ESpaceFillMode = {}

---@class EStatusEffectBehaviorType
---@field Invalid EStatusEffectBehaviorType 0
---@field Basic EStatusEffectBehaviorType 1
---@field Stoppable EStatusEffectBehaviorType 2
---@field Unstoppable EStatusEffectBehaviorType 3
EStatusEffectBehaviorType = {}

---@class EStatusEffects
---@field Invalid EStatusEffects 0
---@field WeaponJammed EStatusEffects 1
---@field Blind EStatusEffects 2
---@field SmokeScreen EStatusEffects 3
---@field Unconscious EStatusEffects 4
---@field Burning EStatusEffects 5
---@field Stun EStatusEffects 6
---@field HeartAttack EStatusEffects 7
---@field SuicideWithWeapon EStatusEffects 8
---@field SuicideWithGrenade EStatusEffects 9
---@field Wounded EStatusEffects 10
---@field MonowireGrapple EStatusEffects 11
---@field Exhausted EStatusEffects 12
---@field Defeated EStatusEffects 13
---@field Sleep EStatusEffects 14
---@field Berserker EStatusEffects 15
---@field Pain EStatusEffects 16
---@field Sandevistan EStatusEffects 17
---@field NetwatcherHackStage1 EStatusEffects 18
---@field NetwatcherHackStage2 EStatusEffects 19
---@field NetwatcherHackStage3 EStatusEffects 20
---@field Count EStatusEffects 21
EStatusEffects = {}

---@class ESurveillanceCameraState
---@field Off ESurveillanceCameraState 0
---@field Active ESurveillanceCameraState 1
ESurveillanceCameraState = {}

---@class ESurveillanceCameraStatus
---@field THREAT ESurveillanceCameraStatus -1
---@field STREAMING ESurveillanceCameraStatus 0
---@field WORKING ESurveillanceCameraStatus 1
ESurveillanceCameraStatus = {}

---@class ESwitchAction
---@field ToggleOn ESwitchAction 0
---@field ToggleActivate ESwitchAction 1
ESwitchAction = {}

---@class ESystemNotificationTypes
---@field DiscOperationIndicator ESystemNotificationTypes 0
---@field GenericNotModal ESystemNotificationTypes 1
---@field GenericMenuInfo ESystemNotificationTypes 2
---@field GenericYesNo ESystemNotificationTypes 3
---@field Generic ESystemNotificationTypes 4
---@field ExitGame ESystemNotificationTypes 5
---@field StartNewGame ESystemNotificationTypes 6
---@field NoDiscSpace ESystemNotificationTypes 7
---@field OverwriteSaveFile ESystemNotificationTypes 8
---@field LoadSaveFileInGame ESystemNotificationTypes 9
---@field LoadSaveFile ESystemNotificationTypes 10
---@field DeleteSaveFile ESystemNotificationTypes 11
---@field TransferSaveFile ESystemNotificationTypes 12
---@field CorruptedSaveFile ESystemNotificationTypes 13
---@field UnreachableCloudFile ESystemNotificationTypes 14
---@field RegionMismatchSaveFile ESystemNotificationTypes 15
---@field NoPlayerProfile ESystemNotificationTypes 16
---@field GameSaved ESystemNotificationTypes 17
---@field SaveFailed ESystemNotificationTypes 18
---@field UnavailableForGuest ESystemNotificationTypes 19
---@field EnableTelemetry ESystemNotificationTypes 20
---@field PointOfNoReturn ESystemNotificationTypes 21
---@field PointOfNoReturnWithReward ESystemNotificationTypes 22
---@field PointOfNoReturnLootAdded ESystemNotificationTypes 23
---@field GenericMenuError ESystemNotificationTypes 24
---@field ControllerReconnected ESystemNotificationTypes 25
---@field ControllerDisconnected ESystemNotificationTypes 26
---@field TrialPeriodEnded ESystemNotificationTypes 27
---@field TrialPeriodTimer ESystemNotificationTypes 28
---@field FailedToRemoveTransferredSave ESystemNotificationTypes 29
---@field LoadModdedSaveFile ESystemNotificationTypes 30
---@field MAX ESystemNotificationTypes 31
---@field FirstModalHighPriority ESystemNotificationTypes 25
ESystemNotificationTypes = {}

---@class ESystems
---@field NONE ESystems 0
---@field SecuritySystem ESystems 1
---@field AccessPoints ESystems 2
---@field MaintenanceSystem ESystems 3
---@field PersonnelSystem ESystems 4
---@field SurveillanceSystem ESystems 5
ESystems = {}

---@class ETVChannel
---@field CH1 ETVChannel 0
---@field CH2 ETVChannel 1
---@field CH3 ETVChannel 2
---@field CH4 ETVChannel 3
---@field CH5 ETVChannel 4
---@field INVALID ETVChannel 5
ETVChannel = {}

---@class ETakedownActionType
---@field GrappleFailed ETakedownActionType 0
---@field Grapple ETakedownActionType 1
---@field Takedown ETakedownActionType 2
---@field TakedownNonLethal ETakedownActionType 3
---@field TakedownNetrunner ETakedownActionType 4
---@field TakedownMassiveTarget ETakedownActionType 5
---@field AerialTakedown ETakedownActionType 6
---@field LeapToTarget ETakedownActionType 7
---@field Struggle ETakedownActionType 8
---@field BreakFree ETakedownActionType 9
---@field TargetDead ETakedownActionType 10
---@field KillTarget ETakedownActionType 11
---@field SpareTarget ETakedownActionType 12
---@field ForceShove ETakedownActionType 13
---@field BossTakedown ETakedownActionType 14
---@field DisposalTakedown ETakedownActionType 15
---@field DisposalTakedownNonLethal ETakedownActionType 16
---@field None ETakedownActionType 17
ETakedownActionType = {}

---@class ETakedownBossName
---@field Smasher ETakedownBossName 0
---@field Oda ETakedownBossName 1
---@field Royce ETakedownBossName 2
---@field Sasquatch ETakedownBossName 3
---@field None ETakedownBossName 4
ETakedownBossName = {}

---@class ETargetManagerAnimGraphState
---@field MODELOOKAT ETargetManagerAnimGraphState 0
---@field IDLE ETargetManagerAnimGraphState 1
---@field JAMMED ETargetManagerAnimGraphState 2
ETargetManagerAnimGraphState = {}

---@class ETauntType
---@field Normal ETauntType 0
---@field Melee ETauntType 1
---@field Ranged ETauntType 2
ETauntType = {}

---@class ETelemetryData
---@field MeleeAttacksMade ETelemetryData 0
---@field RangedAttacksMade ETelemetryData 1
---@field BluelinesSelected ETelemetryData 2
---@field MeleeKills ETelemetryData 3
---@field RangedKills ETelemetryData 4
---@field QuickHacksMade ETelemetryData 5
---@field LegendaryItemsCrafted ETelemetryData 6
ETelemetryData = {}

---@class ETextureAddressing
---@field TA_Wrap ETextureAddressing 0
---@field TA_Mirror ETextureAddressing 1
---@field TA_Clamp ETextureAddressing 2
---@field TA_MirrorOnce ETextureAddressing 3
---@field TA_Border ETextureAddressing 4
ETextureAddressing = {}

---@class ETextureAnimationMode
---@field TAM_Speed ETextureAnimationMode 0
---@field TAM_LifeTime ETextureAnimationMode 1
ETextureAnimationMode = {}

---@class ETextureComparisonFunction
---@field TCF_None ETextureComparisonFunction 0
---@field TCF_Less ETextureComparisonFunction 1
---@field TCF_Equal ETextureComparisonFunction 2
---@field TCF_LessEqual ETextureComparisonFunction 3
---@field TCF_Greater ETextureComparisonFunction 4
---@field TCF_NotEqual ETextureComparisonFunction 5
---@field TCF_GreaterEqual ETextureComparisonFunction 6
---@field TCF_Always ETextureComparisonFunction 7
ETextureComparisonFunction = {}

---@class ETextureCompression
---@field TCM_None ETextureCompression 0
---@field TCM_DXTNoAlpha ETextureCompression 1
---@field TCM_DXTAlpha ETextureCompression 2
---@field TCM_RGBE ETextureCompression 3
---@field TCM_Normalmap ETextureCompression 4
---@field TCM_Normals_DEPRECATED ETextureCompression 5
---@field TCM_NormalsHigh_DEPRECATED ETextureCompression 6
---@field TCM_NormalsGloss_DEPRECATED ETextureCompression 7
---@field TCM_TileMap ETextureCompression 8
---@field TCM_DXTAlphaLinear ETextureCompression 9
---@field TCM_QualityR ETextureCompression 10
---@field TCM_QualityRG ETextureCompression 11
---@field TCM_QualityColor ETextureCompression 12
---@field TCM_HalfHDR_Unsigned ETextureCompression 13
---@field TCM_HalfHDR_Signed ETextureCompression 14
---@field TCM_Max ETextureCompression 15
---@field TCM_Normals ETextureCompression 5
---@field TCM_NormalsHigh ETextureCompression 6
---@field TCM_NormalsGloss ETextureCompression 7
---@field TCM_HalfHDR ETextureCompression 13
ETextureCompression = {}

---@class ETextureFilteringMag
---@field TFMag_Point ETextureFilteringMag 0
---@field TFMag_Linear ETextureFilteringMag 1
ETextureFilteringMag = {}

---@class ETextureFilteringMin
---@field TFMin_Point ETextureFilteringMin 0
---@field TFMin_Linear ETextureFilteringMin 1
---@field TFMin_Anisotropic ETextureFilteringMin 2
---@field TFMin_AnisotropicLow ETextureFilteringMin 3
ETextureFilteringMin = {}

---@class ETextureFilteringMip
---@field TFMip_None ETextureFilteringMip 0
---@field TFMip_Point ETextureFilteringMip 1
---@field TFMip_Linear ETextureFilteringMip 2
ETextureFilteringMip = {}

---@class ETextureRawFormat
---@field TRF_Invalid ETextureRawFormat 0
---@field TRF_TrueColor ETextureRawFormat 1
---@field TRF_DeepColor ETextureRawFormat 2
---@field TRF_Grayscale ETextureRawFormat 3
---@field TRF_HDRFloat ETextureRawFormat 4
---@field TRF_HDRHalf ETextureRawFormat 5
---@field TRF_HDRFloatGrayscale ETextureRawFormat 6
---@field TRF_Grayscale_Font ETextureRawFormat 7
---@field TRF_R8G8 ETextureRawFormat 8
---@field TRF_R32UI ETextureRawFormat 9
---@field TRF_AlphaGrayscale ETextureRawFormat 0
ETextureRawFormat = {}

---@class ETimeOfYearSeason
---@field ETOYS_Spring ETimeOfYearSeason 0
---@field ETOYS_Summer ETimeOfYearSeason 1
---@field ETOYS_Autumn ETimeOfYearSeason 2
---@field ETOYS_Winter ETimeOfYearSeason 3
ETimeOfYearSeason = {}

---@class EToggleActivationTypeComputer
---@field None EToggleActivationTypeComputer 0
---@field Raise EToggleActivationTypeComputer 1
EToggleActivationTypeComputer = {}

---@class EToggleOperationType
---@field ADD EToggleOperationType 0
---@field REMOVE EToggleOperationType 1
EToggleOperationType = {}

---@class ETooltipsStyle
---@field Menus ETooltipsStyle 0
---@field HUD ETooltipsStyle 1
ETooltipsStyle = {}

---@class ETransformAnimationOperationType
---@field PLAY ETransformAnimationOperationType 0
---@field PAUSE ETransformAnimationOperationType 1
---@field RESET ETransformAnimationOperationType 2
---@field SKIP ETransformAnimationOperationType 3
ETransformAnimationOperationType = {}

---@class ETransitionMode
---@field GENTLE ETransitionMode 0
---@field FORCED ETransitionMode 1
ETransitionMode = {}

---@class ETransitionType
---@field EET_Linear ETransitionType 0
---@field EET_Sine ETransitionType 1
---@field EET_Cubic ETransitionType 2
---@field EET_Quad ETransitionType 3
---@field EET_Quart ETransitionType 4
---@field EET_Quint ETransitionType 5
---@field EET_Expo ETransitionType 6
---@field EET_Circ ETransitionType 7
---@field EET_Back ETransitionType 8
---@field EET_Bounce ETransitionType 9
---@field EET_Elastic ETransitionType 10
ETransitionType = {}

---@class ETrap
---@field Invalid ETrap 0
---@field GridRegen ETrap 1
---@field AppendStart ETrap 2
---@field Hidden ETrap 3
---@field Virus ETrap 4
ETrap = {}

---@class ETrapEffects
---@field Explosion ETrapEffects 0
---@field Poisoned ETrapEffects 1
---@field Bleeding ETrapEffects 2
---@field Burning ETrapEffects 3
---@field Blind ETrapEffects 4
---@field SmokeScreen ETrapEffects 5
---@field Stun ETrapEffects 6
---@field Unconcious ETrapEffects 7
ETrapEffects = {}

---@class ETriggerOperationType
---@field ENTER ETriggerOperationType 0
---@field EXIT ETriggerOperationType 1
ETriggerOperationType = {}

---@class ETweakAINodeType
---@field Action ETweakAINodeType 0
---@field Selector ETweakAINodeType 1
---@field Sequence ETweakAINodeType 2
ETweakAINodeType = {}

---@class EUIActionState
---@field Invalid EUIActionState 0
---@field DEFAULT EUIActionState 1
---@field STARTED EUIActionState 2
---@field COMPLETED EUIActionState 3
---@field ABORTED EUIActionState 4
EUIActionState = {}

---@class EUIStealthIconType
---@field Invalid EUIStealthIconType 0
---@field HostileHuman EUIStealthIconType 1
---@field Camera EUIStealthIconType 2
---@field Turret EUIStealthIconType 3
---@field Drone EUIStealthIconType 4
EUIStealthIconType = {}

---@class EUploadProgramState
---@field STARTED EUploadProgramState 0
---@field COMPLETED EUploadProgramState 1
EUploadProgramState = {}

---@class EVarDBMode
---@field Add EVarDBMode 0
---@field Set EVarDBMode 1
---@field Invalid EVarDBMode 2
EVarDBMode = {}

---@class EVendorMode
---@field BuyItems EVendorMode 0
---@field SellItems EVendorMode 1
---@field Train EVendorMode 2
---@field Ripperdoc EVendorMode 3
---@field RipperdocSummary EVendorMode 4
EVendorMode = {}

---@class EViabilityDecision
---@field INCONCLUSIVE EViabilityDecision 0
---@field VIABLE EViabilityDecision 1
---@field NONVIABLE EViabilityDecision 2
EViabilityDecision = {}

---@class EVirtualSystem
---@field None EVirtualSystem 0
---@field SurveillanceSystem EVirtualSystem 1
---@field DoorSystem EVirtualSystem 2
---@field MediaSystem EVirtualSystem 3
---@field SecuritySystem EVirtualSystem 4
EVirtualSystem = {}

---@class EWeaponNamesList
---@field EWNL_PowerStreetRifle EWeaponNamesList 0
---@field EWNL_TechStreetShotgun EWeaponNamesList 1
---@field EWNL_PowerCorpHandgun EWeaponNamesList 2
---@field EWNL_SmartCorpRifle EWeaponNamesList 3
---@field EWNL_PowerCorpHandgunJackie EWeaponNamesList 4
EWeaponNamesList = {}

---@class EWidgetPlacementType
---@field DOCKED EWidgetPlacementType 0
---@field FLOATING EWidgetPlacementType 1
EWidgetPlacementType = {}

---@class EWidgetState
---@field DEFAULT EWidgetState 0
---@field ON EWidgetState 1
---@field OFF EWidgetState 2
---@field INACTIVE EWidgetState 3
---@field ALLOWED EWidgetState 4
---@field LOCKED EWidgetState 5
---@field SEALED EWidgetState 6
EWidgetState = {}

---@class EWindowBlindersStates
---@field NonInteractive EWindowBlindersStates 0
---@field Open EWindowBlindersStates 1
---@field Closed EWindowBlindersStates 2
---@field Tilted EWindowBlindersStates 3
EWindowBlindersStates = {}

---@class EWorkspotOperationType
---@field ENTER EWorkspotOperationType 0
---@field LEAVE EWorkspotOperationType 1
EWorkspotOperationType = {}

---@class EWorldMapView
---@field Map EWorldMapView 0
EWorldMapView = {}

---@class EWoundedBodyPart
---@field Invalid EWoundedBodyPart 0
---@field WoundedLeftArm EWoundedBodyPart 1
---@field WoundedRightArm EWoundedBodyPart 2
---@field WoundedLeftLeg EWoundedBodyPart 3
---@field WoundedRightLeg EWoundedBodyPart 4
---@field DismemberedLeftArm EWoundedBodyPart 5
---@field DismemberedRightArm EWoundedBodyPart 6
---@field DismemberedLeftLeg EWoundedBodyPart 7
---@field DismemberedRightLeg EWoundedBodyPart 8
---@field DismemberedBothLegs EWoundedBodyPart 9
EWoundedBodyPart = {}

---@class EntityNotificationType
---@field DoNotNotifyEntity EntityNotificationType 0
---@field SendThisEventToEntity EntityNotificationType 1
---@field SendPSChangedEventToEntity EntityNotificationType 2
EntityNotificationType = {}

---@class EquipmentManipulationAction
---@field Undefined EquipmentManipulationAction 0
---@field RequestActiveMeleeware EquipmentManipulationAction 1
---@field RequestActiveWeapon EquipmentManipulationAction 2
---@field RequestSlotActiveWeapon EquipmentManipulationAction 3
---@field RequestLastUsedWeapon EquipmentManipulationAction 4
---@field RequestFirstMeleeWeapon EquipmentManipulationAction 5
---@field RequestLastUsedMeleeWeapon EquipmentManipulationAction 6
---@field RequestLastUsedOrFirstAvailableWeapon EquipmentManipulationAction 7
---@field RequestLastUsedOrFirstAvailableRangedWeapon EquipmentManipulationAction 8
---@field RequestLastUsedOrFirstAvailableMeleeWeapon EquipmentManipulationAction 9
---@field RequestLastUsedOrFirstAvailableOneHandedRangedWeapon EquipmentManipulationAction 10
---@field RequestHeavyWeapon EquipmentManipulationAction 11
---@field CycleWeaponWheelItem EquipmentManipulationAction 12
---@field CycleNextWeaponWheelItem EquipmentManipulationAction 13
---@field CyclePreviousWeaponWheelItem EquipmentManipulationAction 14
---@field RequestConsumable EquipmentManipulationAction 15
---@field RequestGadget EquipmentManipulationAction 16
---@field RequestFists EquipmentManipulationAction 17
---@field RequestLeftHandCyberware EquipmentManipulationAction 18
---@field UnequipWeapon EquipmentManipulationAction 19
---@field UnequipConsumable EquipmentManipulationAction 20
---@field UnequipGadget EquipmentManipulationAction 21
---@field UnequipLeftHandCyberware EquipmentManipulationAction 22
---@field UnequipAll EquipmentManipulationAction 23
---@field ReequipWeapon EquipmentManipulationAction 24
---@field RequestWeaponSlot1 EquipmentManipulationAction 25
---@field RequestWeaponSlot2 EquipmentManipulationAction 26
---@field RequestWeaponSlot3 EquipmentManipulationAction 27
---@field RequestWeaponSlot4 EquipmentManipulationAction 28
EquipmentManipulationAction = {}

---@class EquipmentManipulationRequestSlot
---@field Undefined EquipmentManipulationRequestSlot 0
---@field Right EquipmentManipulationRequestSlot 1
---@field Left EquipmentManipulationRequestSlot 2
---@field Both EquipmentManipulationRequestSlot 3
EquipmentManipulationRequestSlot = {}

---@class EquipmentManipulationRequestType
---@field Undefined EquipmentManipulationRequestType 0
---@field Equip EquipmentManipulationRequestType 1
---@field Unequip EquipmentManipulationRequestType 2
EquipmentManipulationRequestType = {}

---@class EquipmentPriority
---@field Primary EquipmentPriority 0
---@field Secondary EquipmentPriority 1
---@field All EquipmentPriority 2
EquipmentPriority = {}

---@class EstatusEffectsState
---@field Deactivated EstatusEffectsState 0
---@field Activating EstatusEffectsState 1
---@field Activated EstatusEffectsState 2
EstatusEffectsState = {}

---@class ExplosiveTriggerDeviceLaserState
---@field GREEN ExplosiveTriggerDeviceLaserState 0
---@field RED ExplosiveTriggerDeviceLaserState 1
---@field DISABLED ExplosiveTriggerDeviceLaserState 2
ExplosiveTriggerDeviceLaserState = {}

---@class ExtraEffect
---@field AccuracyVirus ExtraEffect 0
---@field PeernoidVirus ExtraEffect 1
---@field None ExtraEffect 2
ExtraEffect = {}

---@class FTEntityRequirementsFlag
---@field None FTEntityRequirementsFlag 0
---@field LookAtComponent FTEntityRequirementsFlag 1
---@field ScanningComponent FTEntityRequirementsFlag 2
---@field DestructionComponent FTEntityRequirementsFlag 4
---@field GameObject FTEntityRequirementsFlag 8
---@field ScriptedPuppet FTEntityRequirementsFlag 16
---@field AttitudeAgent FTEntityRequirementsFlag 32
---@field Device FTEntityRequirementsFlag 64
---@field VehicleObject FTEntityRequirementsFlag 128
---@field GamePuppet FTEntityRequirementsFlag 256
FTEntityRequirementsFlag = {}

---@class FTNpcMountingState
---@field Mounted FTNpcMountingState 0
---@field Unmounted FTNpcMountingState 1
FTNpcMountingState = {}

---@class FTScriptState
---@field ERROR FTScriptState 0
FTScriptState = {}

---@class Ft_Result
---@field Success Ft_Result 0
---@field GettingPlayerGameObjectFailed Ft_Result 1
---@field GetPSMBlackboardFailed Ft_Result 2
---@field GetStatsPoolFailed Ft_Result 3
---@field NoEnemyFoundInSpawner Ft_Result 4
---@field NoEnemyFoundInPool Ft_Result 5
---@field NoEntitiesFoundInSpawner Ft_Result 6
---@field NoEnemyTargeted Ft_Result 7
---@field FailedToSelectGrapple Ft_Result 8
---@field FailedToSelectTakedown Ft_Result 9
---@field TakedownWithoutGrappleAttempt Ft_Result 10
---@field NoInteractionAvailable Ft_Result 11
---@field RequestedInteractionNotAvailable Ft_Result 12
---@field OutOfRange Ft_Result 13
---@field TargetNotInEnemyPool Ft_Result 14
---@field DescriptorFormatError Ft_Result 15
Ft_Result = {}

---@class Ft_TakedownStage
---@field Default Ft_TakedownStage 0
---@field Grappling Ft_TakedownStage 1
---@field Grappled Ft_TakedownStage 2
---@field Takedown Ft_TakedownStage 3
---@field Finished Ft_TakedownStage 4
Ft_TakedownStage = {}

---@class Ft_TakedownType
---@field Lethal Ft_TakedownType 0
---@field Nonlethal Ft_TakedownType 1
---@field Breach Ft_TakedownType 2
Ft_TakedownType = {}

---@class FunctionalTestsResultCode
---@field Valid FunctionalTestsResultCode 0
---@field MalformedEntityDescr FunctionalTestsResultCode 1
---@field EntityNotFound FunctionalTestsResultCode 2
---@field ComponentNotFound FunctionalTestsResultCode 3
---@field InvalidEntityType FunctionalTestsResultCode 4
---@field InvalidComponentType FunctionalTestsResultCode 5
---@field InvalidNodeRef FunctionalTestsResultCode 6
---@field SlotNotFound FunctionalTestsResultCode 7
---@field InventoryError FunctionalTestsResultCode 8
---@field InvalidInputAction FunctionalTestsResultCode 9
---@field InvalidInputActionCallback FunctionalTestsResultCode 10
---@field EmptyContainer FunctionalTestsResultCode 12
FunctionalTestsResultCode = {}

---@class GIGIOverrideType
---@field Default GIGIOverrideType 0
---@field Override_True GIGIOverrideType 1
---@field Override_False GIGIOverrideType 2
GIGIOverrideType = {}

---@class GameplayTier
---@field Undefined GameplayTier 0
---@field Tier1_FullGameplay GameplayTier 1
---@field Tier2_StagedGameplay GameplayTier 2
---@field Tier3_LimitedGameplay GameplayTier 3
---@field Tier4_FPPCinematic GameplayTier 4
---@field Tier5_Cinematic GameplayTier 5
GameplayTier = {}

---@class GenericMessageNotificationResult
---@field Cancel GenericMessageNotificationResult 0
---@field Confirm GenericMessageNotificationResult 1
---@field OK GenericMessageNotificationResult 2
---@field Yes GenericMessageNotificationResult 3
---@field No GenericMessageNotificationResult 4
GenericMessageNotificationResult = {}

---@class GenericMessageNotificationType
---@field OK GenericMessageNotificationType 0
---@field Confirm GenericMessageNotificationType 1
---@field Cancel GenericMessageNotificationType 2
---@field ConfirmCancel GenericMessageNotificationType 3
---@field YesNo GenericMessageNotificationType 4
GenericMessageNotificationType = {}

---@class GenericNotificationType
---@field Generic GenericNotificationType 0
---@field JournalNotification GenericNotificationType 1
---@field LevelUpNotification GenericNotificationType 2
---@field VendorNotification GenericNotificationType 3
---@field ZoneNotification GenericNotificationType 4
---@field ProgressionNotification GenericNotificationType 5
---@field CraftingNotification GenericNotificationType 6
---@field InventoryNotification GenericNotificationType 7
GenericNotificationType = {}

---@class GpuApieBufferUsageType
---@field BUT_Default GpuApieBufferUsageType 0
---@field BUT_Immutable GpuApieBufferUsageType 1
---@field BUT_ImmutableInPlace GpuApieBufferUsageType 2
---@field BUT_Readback GpuApieBufferUsageType 3
---@field BUT_Dynamic_Legacy GpuApieBufferUsageType 4
---@field BUT_Transient GpuApieBufferUsageType 5
---@field BUT_Mapped GpuApieBufferUsageType 6
---@field BUT_MAX GpuApieBufferUsageType 7
GpuApieBufferUsageType = {}

---@class GpuWrapApiBufferGroup
---@field System GpuWrapApiBufferGroup 0
---@field MeshResource GpuWrapApiBufferGroup 1
---@field MeshCustom GpuWrapApiBufferGroup 2
---@field AutoSpawner GpuWrapApiBufferGroup 3
---@field Debug GpuWrapApiBufferGroup 4
---@field DPL GpuWrapApiBufferGroup 5
---@field Weather GpuWrapApiBufferGroup 6
---@field ReflectionProbe GpuWrapApiBufferGroup 7
---@field Skinning GpuWrapApiBufferGroup 8
---@field Lights GpuWrapApiBufferGroup 9
---@field Video GpuWrapApiBufferGroup 10
---@field Particles GpuWrapApiBufferGroup 11
---@field GIManagerLitProbes GpuWrapApiBufferGroup 12
---@field GIManagerLookup GpuWrapApiBufferGroup 13
---@field GIManagerInterpolation GpuWrapApiBufferGroup 14
---@field GIManagerLitBricks GpuWrapApiBufferGroup 15
---@field GIManagerLights GpuWrapApiBufferGroup 16
---@field GIManagerEnvVolume GpuWrapApiBufferGroup 17
---@field GIProxyBrick GpuWrapApiBufferGroup 18
---@field GIProxySurfel GpuWrapApiBufferGroup 19
---@field GIProxyProbes GpuWrapApiBufferGroup 20
---@field GIProxyFactors GpuWrapApiBufferGroup 21
---@field GIProxyAcceleration GpuWrapApiBufferGroup 22
---@field Raytracing GpuWrapApiBufferGroup 23
---@field RaytracingUpload GpuWrapApiBufferGroup 24
---@field RaytracingAS GpuWrapApiBufferGroup 25
---@field Decals GpuWrapApiBufferGroup 26
---@field Instances GpuWrapApiBufferGroup 27
---@field Materials GpuWrapApiBufferGroup 28
---@field Multilayer GpuWrapApiBufferGroup 29
---@field FrameResources GpuWrapApiBufferGroup 30
---@field Misc GpuWrapApiBufferGroup 31
---@field MorphTargets GpuWrapApiBufferGroup 32
---@field MAX GpuWrapApiBufferGroup 33
GpuWrapApiBufferGroup = {}

---@class GpuWrapApiVertexPackingEStreamType
---@field ST_Invalid GpuWrapApiVertexPackingEStreamType -1
---@field ST_PerVertex GpuWrapApiVertexPackingEStreamType 0
---@field ST_PerInstance GpuWrapApiVertexPackingEStreamType 1
---@field ST_Max GpuWrapApiVertexPackingEStreamType 2
GpuWrapApiVertexPackingEStreamType = {}

---@class GpuWrapApiVertexPackingePackingType
---@field PT_Invalid GpuWrapApiVertexPackingePackingType -1
---@field PT_Float1 GpuWrapApiVertexPackingePackingType 0
---@field PT_Float2 GpuWrapApiVertexPackingePackingType 1
---@field PT_Float3 GpuWrapApiVertexPackingePackingType 2
---@field PT_Float4 GpuWrapApiVertexPackingePackingType 3
---@field PT_Float16_2 GpuWrapApiVertexPackingePackingType 4
---@field PT_Float16_4 GpuWrapApiVertexPackingePackingType 5
---@field PT_UShort1 GpuWrapApiVertexPackingePackingType 6
---@field PT_UShort2 GpuWrapApiVertexPackingePackingType 7
---@field PT_UShort4 GpuWrapApiVertexPackingePackingType 8
---@field PT_UShort4N GpuWrapApiVertexPackingePackingType 9
---@field PT_Short1 GpuWrapApiVertexPackingePackingType 10
---@field PT_Short2 GpuWrapApiVertexPackingePackingType 11
---@field PT_Short4 GpuWrapApiVertexPackingePackingType 12
---@field PT_Short4N GpuWrapApiVertexPackingePackingType 13
---@field PT_UInt1 GpuWrapApiVertexPackingePackingType 14
---@field PT_UInt2 GpuWrapApiVertexPackingePackingType 15
---@field PT_UInt3 GpuWrapApiVertexPackingePackingType 16
---@field PT_UInt4 GpuWrapApiVertexPackingePackingType 17
---@field PT_Int1 GpuWrapApiVertexPackingePackingType 18
---@field PT_Int2 GpuWrapApiVertexPackingePackingType 19
---@field PT_Int3 GpuWrapApiVertexPackingePackingType 20
---@field PT_Int4 GpuWrapApiVertexPackingePackingType 21
---@field PT_Color GpuWrapApiVertexPackingePackingType 22
---@field PT_UByte1 GpuWrapApiVertexPackingePackingType 23
---@field PT_UByte1F GpuWrapApiVertexPackingePackingType 24
---@field PT_UByte4 GpuWrapApiVertexPackingePackingType 25
---@field PT_UByte4N GpuWrapApiVertexPackingePackingType 26
---@field PT_Byte4N GpuWrapApiVertexPackingePackingType 27
---@field PT_Dec4 GpuWrapApiVertexPackingePackingType 28
---@field PT_Index16 GpuWrapApiVertexPackingePackingType 29
---@field PT_Index32 GpuWrapApiVertexPackingePackingType 30
---@field PT_Max GpuWrapApiVertexPackingePackingType 31
GpuWrapApiVertexPackingePackingType = {}

---@class GpuWrapApiVertexPackingePackingUsage
---@field PS_Invalid GpuWrapApiVertexPackingePackingUsage -1
---@field PS_SysPosition GpuWrapApiVertexPackingePackingUsage 0
---@field PS_Position GpuWrapApiVertexPackingePackingUsage 1
---@field PS_Normal GpuWrapApiVertexPackingePackingUsage 2
---@field PS_Tangent GpuWrapApiVertexPackingePackingUsage 3
---@field PS_Binormal GpuWrapApiVertexPackingePackingUsage 4
---@field PS_TexCoord GpuWrapApiVertexPackingePackingUsage 5
---@field PS_Color GpuWrapApiVertexPackingePackingUsage 6
---@field PS_SkinIndices GpuWrapApiVertexPackingePackingUsage 7
---@field PS_SkinWeights GpuWrapApiVertexPackingePackingUsage 8
---@field PS_DestructionIndices GpuWrapApiVertexPackingePackingUsage 9
---@field PS_MultilayerPaint GpuWrapApiVertexPackingePackingUsage 10
---@field PS_InstanceTransform GpuWrapApiVertexPackingePackingUsage 11
---@field PS_InstanceLODParams GpuWrapApiVertexPackingePackingUsage 12
---@field PS_InstanceSkinningData GpuWrapApiVertexPackingePackingUsage 13
---@field PS_PatchSize GpuWrapApiVertexPackingePackingUsage 14
---@field PS_PatchBias GpuWrapApiVertexPackingePackingUsage 15
---@field PS_ExtraData GpuWrapApiVertexPackingePackingUsage 16
---@field PS_VehicleDmgNormal GpuWrapApiVertexPackingePackingUsage 17
---@field PS_VehicleDmgPosition GpuWrapApiVertexPackingePackingUsage 18
---@field PS_PositionDelta GpuWrapApiVertexPackingePackingUsage 19
---@field PS_LightBlockerIntensity GpuWrapApiVertexPackingePackingUsage 20
---@field PS_BoneIndex GpuWrapApiVertexPackingePackingUsage 21
---@field PS_Padding GpuWrapApiVertexPackingePackingUsage 22
---@field PS_PatchOffset GpuWrapApiVertexPackingePackingUsage 23
---@field PS_Max GpuWrapApiVertexPackingePackingUsage 24
GpuWrapApiVertexPackingePackingUsage = {}

---@class GpuWrapApieBufferChunkCategory
---@field BCC_Staging GpuWrapApieBufferChunkCategory 0
---@field BCC_Vertex GpuWrapApieBufferChunkCategory 1
---@field BCC_VertexUAV GpuWrapApieBufferChunkCategory 2
---@field BCC_Index16Bit GpuWrapApieBufferChunkCategory 3
---@field BCC_Index32Bit GpuWrapApieBufferChunkCategory 4
---@field BCC_VertexIndex16Bit GpuWrapApieBufferChunkCategory 5
---@field BCC_Constant GpuWrapApieBufferChunkCategory 6
---@field BCC_TypedUAV GpuWrapApieBufferChunkCategory 7
---@field BCC_Structured GpuWrapApieBufferChunkCategory 8
---@field BCC_StructuredUAV GpuWrapApieBufferChunkCategory 9
---@field BCC_StructuredAppendUAV GpuWrapApieBufferChunkCategory 10
---@field BCC_IndirectUAV GpuWrapApieBufferChunkCategory 11
---@field BCC_Index16BitUAV GpuWrapApieBufferChunkCategory 12
---@field BCC_Raw GpuWrapApieBufferChunkCategory 13
---@field BCC_ShaderTable GpuWrapApieBufferChunkCategory 14
---@field BCC_Invalid GpuWrapApieBufferChunkCategory 15
GpuWrapApieBufferChunkCategory = {}

---@class GpuWrapApieIndexBufferChunkType
---@field IBCT_IndexUInt GpuWrapApieIndexBufferChunkType 0
---@field IBCT_IndexUShort GpuWrapApieIndexBufferChunkType 1
---@field IBCT_Max GpuWrapApieIndexBufferChunkType 2
GpuWrapApieIndexBufferChunkType = {}

---@class GpuWrapApieTextureFormat
---@field TEXFMT_A8_Unorm GpuWrapApieTextureFormat 0
---@field TEXFMT_R8_Unorm GpuWrapApieTextureFormat 1
---@field TEXFMT_L8_Unorm GpuWrapApieTextureFormat 2
---@field TEXFMT_R8G8_Unorm GpuWrapApieTextureFormat 3
---@field TEXFMT_R8G8B8X8_Unorm GpuWrapApieTextureFormat 4
---@field TEXFMT_R8G8B8A8_Unorm GpuWrapApieTextureFormat 5
---@field TEXFMT_R8G8B8A8_Unorm_SRGB GpuWrapApieTextureFormat 39
---@field TEXFMT_R8G8B8A8_Snorm GpuWrapApieTextureFormat 6
---@field TEXFMT_B8G8R8A8 GpuWrapApieTextureFormat 48
---@field TEXFMT_B8G8R8A8_SRGB GpuWrapApieTextureFormat 49
---@field TEXFMT_R16_Unorm GpuWrapApieTextureFormat 7
---@field TEXFMT_R16_Uint GpuWrapApieTextureFormat 8
---@field TEXFMT_R32_Uint GpuWrapApieTextureFormat 9
---@field TEXFMT_R32G32B32A32_Uint GpuWrapApieTextureFormat 10
---@field TEXFMT_R32G32_Uint GpuWrapApieTextureFormat 11
---@field TEXFMT_R16G16B16A16_Unorm GpuWrapApieTextureFormat 12
---@field TEXFMT_R16G16B16A16_Uint GpuWrapApieTextureFormat 13
---@field TEXFMT_R16G16_Uint GpuWrapApieTextureFormat 14
---@field TEXFMT_R10G10B10A2_Unorm GpuWrapApieTextureFormat 15
---@field TEXFMT_R16G16B16A16_Float GpuWrapApieTextureFormat 16
---@field TEXFMT_R11G11B10_Float GpuWrapApieTextureFormat 17
---@field TEXFMT_R16G16_Float GpuWrapApieTextureFormat 18
---@field TEXFMT_R32G32_Float GpuWrapApieTextureFormat 19
---@field TEXFMT_R32G32B32A32_Float GpuWrapApieTextureFormat 20
---@field TEXFMT_R32_Float GpuWrapApieTextureFormat 21
---@field TEXFMT_R16_Float GpuWrapApieTextureFormat 22
---@field TEXFMT_D24S8 GpuWrapApieTextureFormat 23
---@field TEXFMT_D32FS8 GpuWrapApieTextureFormat 24
---@field TEXFMT_D32F GpuWrapApieTextureFormat 26
---@field TEXFMT_D16U GpuWrapApieTextureFormat 27
---@field TEXFMT_BC1 GpuWrapApieTextureFormat 28
---@field TEXFMT_BC1_SRGB GpuWrapApieTextureFormat 40
---@field TEXFMT_BC2 GpuWrapApieTextureFormat 29
---@field TEXFMT_BC2_SRGB GpuWrapApieTextureFormat 41
---@field TEXFMT_BC3 GpuWrapApieTextureFormat 30
---@field TEXFMT_BC3_SRGB GpuWrapApieTextureFormat 42
---@field TEXFMT_BC4 GpuWrapApieTextureFormat 31
---@field TEXFMT_BC5 GpuWrapApieTextureFormat 32
---@field TEXFMT_BC6H_UNSIGNED GpuWrapApieTextureFormat 33
---@field TEXFMT_BC6H_SIGNED GpuWrapApieTextureFormat 34
---@field TEXFMT_BC7 GpuWrapApieTextureFormat 35
---@field TEXFMT_BC7_SRGB GpuWrapApieTextureFormat 36
---@field TEXFMT_R8_Uint GpuWrapApieTextureFormat 37
---@field TEXFMT_R16G16_Unorm GpuWrapApieTextureFormat 43
---@field TEXFMT_R16G16_Sint GpuWrapApieTextureFormat 44
---@field TEXFMT_R16G16_Snorm GpuWrapApieTextureFormat 45
---@field TEXFMT_B5G6R5_Unorm GpuWrapApieTextureFormat 46
---@field TEXFMT_A8 GpuWrapApieTextureFormat 0
---@field TEXFMT_R8 GpuWrapApieTextureFormat 1
---@field TEXFMT_L8 GpuWrapApieTextureFormat 2
---@field TEXFMT_R8G8 GpuWrapApieTextureFormat 3
---@field TEXFMT_R8G8B8X8 GpuWrapApieTextureFormat 4
---@field TEXFMT_R8G8B8A8 GpuWrapApieTextureFormat 5
---@field TEXFMT_R8G8B8A8 GpuWrapApieTextureFormat 39
---@field TEXFMT_Uint_16_norm GpuWrapApieTextureFormat 7
---@field TEXFMT_Uint_16 GpuWrapApieTextureFormat 8
---@field TEXFMT_Uint_32 GpuWrapApieTextureFormat 9
---@field TEXFMT_Uint_R32G32B32A32 GpuWrapApieTextureFormat 10
---@field TEXFMT_Uint_R32G32B32A32 GpuWrapApieTextureFormat 13
---@field TEXFMT_R10G10B10A2 GpuWrapApieTextureFormat 15
---@field TEXFMT_Float_R16G16B16A16 GpuWrapApieTextureFormat 16
---@field TEXFMT_Float_R11G11B10 GpuWrapApieTextureFormat 17
---@field TEXFMT_Float_R16G16 GpuWrapApieTextureFormat 18
---@field TEXFMT_Float_R32G32 GpuWrapApieTextureFormat 19
---@field TEXFMT_Float_R32G32B32A32 GpuWrapApieTextureFormat 20
---@field TEXFMT_Float_R32 GpuWrapApieTextureFormat 21
---@field TEXFMT_Float_R16 GpuWrapApieTextureFormat 22
---@field TEXFMT_BC6H GpuWrapApieTextureFormat 33
GpuWrapApieTextureFormat = {}

---@class GpuWrapApieTextureGroup
---@field TEXG_Generic_Color GpuWrapApieTextureGroup 1
---@field TEXG_Generic_Grayscale GpuWrapApieTextureGroup 2
---@field TEXG_Generic_Normal GpuWrapApieTextureGroup 3
---@field TEXG_Generic_Data GpuWrapApieTextureGroup 4
---@field TEXG_Generic_UI GpuWrapApieTextureGroup 5
---@field TEXG_Generic_Font GpuWrapApieTextureGroup 6
---@field TEXG_Generic_LUT GpuWrapApieTextureGroup 7
---@field TEXG_Generic_MorphBlend GpuWrapApieTextureGroup 8
---@field TEXG_Multilayer_Color GpuWrapApieTextureGroup 9
---@field TEXG_Multilayer_Normal GpuWrapApieTextureGroup 10
---@field TEXG_Multilayer_Grayscale GpuWrapApieTextureGroup 11
---@field TEXG_Multilayer_Microblend GpuWrapApieTextureGroup 12
GpuWrapApieTextureGroup = {}

---@class GpuWrapApieTextureType
---@field TEXTYPE_2D GpuWrapApieTextureType 0
---@field TEXTYPE_CUBE GpuWrapApieTextureType 1
---@field TEXTYPE_ARRAY GpuWrapApieTextureType 2
---@field TEXTYPE_3D GpuWrapApieTextureType 3
GpuWrapApieTextureType = {}

---@class GrenadeDamageType
---@field Normal GrenadeDamageType 0
---@field DoT GrenadeDamageType 1
---@field None GrenadeDamageType 2
GrenadeDamageType = {}

---@class HUDActorStatus
---@field UNINITIALIZED HUDActorStatus 0
---@field REGISTERED HUDActorStatus 1
---@field ACTIVE HUDActorStatus 2
HUDActorStatus = {}

---@class HUDActorType
---@field UNINITIALIZED HUDActorType 0
---@field GAME_OBJECT HUDActorType 1
---@field VEHICLE HUDActorType 2
---@field DEVICE HUDActorType 3
---@field BODY_DISPOSAL_DEVICE HUDActorType 4
---@field PUPPET HUDActorType 5
---@field ITEM HUDActorType 6
HUDActorType = {}

---@class HUDContext
---@field DEFAULT HUDContext 0
---@field FOCUS HUDContext 1
---@field LOOKEDAT HUDContext 2
HUDContext = {}

---@class HUDState
---@field UNINITIALIZED HUDState 0
---@field DEACTIVATED HUDState 1
---@field ACTIVATED HUDState 2
HUDState = {}

---@class HighlightContext
---@field DEFAULT HighlightContext 0
---@field OUTLINE HighlightContext 1
---@field FILL HighlightContext 2
---@field FULL HighlightContext 3
HighlightContext = {}

---@class HighlightMode
---@field Row HighlightMode 0
---@field Column HighlightMode 1
HighlightMode = {}

---@class HitShape_Type
---@field Normal HitShape_Type 0
---@field InternalWeakSpot HitShape_Type 1
---@field ExternalWeakSpot HitShape_Type 2
---@field ProtectionLayer HitShape_Type 3
HitShape_Type = {}

---@class HoverStatus
---@field DEFAULT HoverStatus 0
---@field HOVER HoverStatus 1
HoverStatus = {}

---@class HubMenuCharacterItems
---@field Skills HubMenuCharacterItems 0
---@field Stats HubMenuCharacterItems 1
HubMenuCharacterItems = {}

---@class HubMenuCraftingItems
---@field Crafting HubMenuCraftingItems 0
---@field Upgrade HubMenuCraftingItems 1
HubMenuCraftingItems = {}

---@class HubMenuDatabaseItems
---@field Codex HubMenuDatabaseItems 0
---@field Tarot HubMenuDatabaseItems 1
---@field Shards HubMenuDatabaseItems 2
HubMenuDatabaseItems = {}

---@class HubMenuInventoryItems
---@field Gear HubMenuInventoryItems 0
---@field Cyberware HubMenuInventoryItems 1
---@field Backpack HubMenuInventoryItems 2
HubMenuInventoryItems = {}

---@class HubMenuItems
---@field None HubMenuItems -1
---@field Default HubMenuItems 0
---@field Crafting HubMenuItems 1
---@field Character HubMenuItems 2
---@field Inventory HubMenuItems 3
---@field Map HubMenuItems 4
---@field Journal HubMenuItems 5
---@field Phone HubMenuItems 6
---@field Database HubMenuItems 7
---@field Stats HubMenuItems 8
---@field Backpack HubMenuItems 9
---@field HubMenuItems HubMenuItems 10
---@field Codex HubMenuItems 11
---@field Shards HubMenuItems 12
---@field Tarot HubMenuItems 13
---@field Gear HubMenuItems 14
---@field Cyberware HubMenuItems 15
---@field VisualSets HubMenuItems 16
---@field Count HubMenuItems 17
HubMenuItems = {}

---@class HubVendorMenuItems
---@field Trade HubVendorMenuItems 0
---@field Cyberware HubVendorMenuItems 1
HubVendorMenuItems = {}

---@class IMaterialDataProviderDescEParameterType
---@field PT_None IMaterialDataProviderDescEParameterType 0
---@field PT_Texture IMaterialDataProviderDescEParameterType 1
---@field PT_Color IMaterialDataProviderDescEParameterType 2
---@field PT_Cube IMaterialDataProviderDescEParameterType 3
---@field PT_Vector IMaterialDataProviderDescEParameterType 4
---@field PT_Scalar IMaterialDataProviderDescEParameterType 5
---@field PT_Bool IMaterialDataProviderDescEParameterType 6
---@field PT_TextureArray IMaterialDataProviderDescEParameterType 7
---@field PT_StructBuffer IMaterialDataProviderDescEParameterType 8
---@field PT_Cpu_NameU64 IMaterialDataProviderDescEParameterType 9
---@field PT_SkinProfile IMaterialDataProviderDescEParameterType 10
---@field PT_MultilayerSetup IMaterialDataProviderDescEParameterType 11
---@field PT_MultilayerMask IMaterialDataProviderDescEParameterType 12
---@field PT_HairProfile IMaterialDataProviderDescEParameterType 13
---@field PT_FoliageProfile IMaterialDataProviderDescEParameterType 14
---@field PT_TerrainSetup IMaterialDataProviderDescEParameterType 15
---@field PT_Gradient IMaterialDataProviderDescEParameterType 16
---@field PT_MAX IMaterialDataProviderDescEParameterType 17
IMaterialDataProviderDescEParameterType = {}

---@class InGameConfigChangeReason
---@field Invalid InGameConfigChangeReason -1
---@field Accepted InGameConfigChangeReason 0
---@field Rejected InGameConfigChangeReason 1
---@field NeedsConfirmation InGameConfigChangeReason 2
---@field NeedsRestart InGameConfigChangeReason 3
InGameConfigChangeReason = {}

---@class InGameConfigNotificationType
---@field RestartRequiredConfirmed InGameConfigNotificationType 0
---@field RestartRequiredRejected InGameConfigNotificationType 1
---@field ChangesApplied InGameConfigNotificationType 2
---@field ChangesRejected InGameConfigNotificationType 3
---@field ChangesLoadLastCheckpointApplied InGameConfigNotificationType 4
---@field ChangesLoadLastCheckpointRejected InGameConfigNotificationType 5
---@field Saved InGameConfigNotificationType 6
---@field ErrorSaving InGameConfigNotificationType 7
---@field Loaded InGameConfigNotificationType 8
---@field LoadCanceled InGameConfigNotificationType 9
---@field LoadInternalError InGameConfigNotificationType 10
---@field Refresh InGameConfigNotificationType 11
---@field LanguagePackInstalled InGameConfigNotificationType 12
InGameConfigNotificationType = {}

---@class InGameConfigUserSettingsLoadStatus
---@field NotLoaded InGameConfigUserSettingsLoadStatus 0
---@field InternalError InGameConfigUserSettingsLoadStatus 1
---@field FileIsMissing InGameConfigUserSettingsLoadStatus 2
---@field FileIsCorrupted InGameConfigUserSettingsLoadStatus 3
---@field Loaded InGameConfigUserSettingsLoadStatus 4
---@field ImportedFromOldVersion InGameConfigUserSettingsLoadStatus 5
InGameConfigUserSettingsLoadStatus = {}

---@class InGameConfigUserSettingsSaveStatus
---@field NotSaved InGameConfigUserSettingsSaveStatus 0
---@field InternalError InGameConfigUserSettingsSaveStatus 1
---@field Saved InGameConfigUserSettingsSaveStatus 2
InGameConfigUserSettingsSaveStatus = {}

---@class InGameConfigVarType
---@field Bool InGameConfigVarType 0
---@field Int InGameConfigVarType 1
---@field Float InGameConfigVarType 2
---@field Name InGameConfigVarType 3
---@field IntList InGameConfigVarType 4
---@field FloatList InGameConfigVarType 5
---@field StringList InGameConfigVarType 6
---@field NameList InGameConfigVarType 7
InGameConfigVarType = {}

---@class InGameConfigVarUpdatePolicy
---@field Disabled InGameConfigVarUpdatePolicy 0
---@field Immediately InGameConfigVarUpdatePolicy 1
---@field ConfirmationRequired InGameConfigVarUpdatePolicy 2
---@field RestartRequired InGameConfigVarUpdatePolicy 3
---@field LoadLastCheckpointRequired InGameConfigVarUpdatePolicy 4
InGameConfigVarUpdatePolicy = {}

---@class InstanceState
---@field DISABLED InstanceState 0
---@field HIDDEN InstanceState 1
---@field RUNNING InstanceState 2
---@field MALFUNCTIONING InstanceState 3
---@field ON InstanceState 4
InstanceState = {}

---@class IntercomStatus
---@field DEFAULT IntercomStatus 0
---@field CALLING IntercomStatus 1
---@field TALKING IntercomStatus 2
---@field CALL_MISSED IntercomStatus 3
---@field CALL_ENDED IntercomStatus 4
IntercomStatus = {}

---@class InventoryModes
---@field Default InventoryModes 0
---@field Item InventoryModes 1
InventoryModes = {}

---@class InventoryPaperdollZoomArea
---@field Default InventoryPaperdollZoomArea 0
---@field Weapon InventoryPaperdollZoomArea 1
---@field Legs InventoryPaperdollZoomArea 2
---@field Feet InventoryPaperdollZoomArea 3
---@field Cyberware InventoryPaperdollZoomArea 4
---@field QuickSlot InventoryPaperdollZoomArea 5
---@field Consumable InventoryPaperdollZoomArea 6
---@field Outfit InventoryPaperdollZoomArea 7
---@field Head InventoryPaperdollZoomArea 8
---@field Face InventoryPaperdollZoomArea 9
---@field InnerChest InventoryPaperdollZoomArea 10
---@field OuterChest InventoryPaperdollZoomArea 11
InventoryPaperdollZoomArea = {}

---@class InventoryTooltipDisplayContext
---@field Default InventoryTooltipDisplayContext 0
---@field Attachment InventoryTooltipDisplayContext 1
---@field Crafting InventoryTooltipDisplayContext 2
---@field Upgrading InventoryTooltipDisplayContext 3
---@field HUD InventoryTooltipDisplayContext 4
---@field Vendor InventoryTooltipDisplayContext 5
InventoryTooltipDisplayContext = {}

---@class ItemAdditionalInfoType
---@field NONE ItemAdditionalInfoType 0
---@field PRICE ItemAdditionalInfoType 1
---@field TYPE ItemAdditionalInfoType 2
ItemAdditionalInfoType = {}

---@class ItemDisplayNotificationMessage
---@field Default ItemDisplayNotificationMessage 0
---@field AddRef ItemDisplayNotificationMessage 1
---@field RemoveRef ItemDisplayNotificationMessage 2
ItemDisplayNotificationMessage = {}

---@class ItemDisplayType
---@field Item ItemDisplayType 0
---@field Weapon ItemDisplayType 1
ItemDisplayType = {}

---@class ItemFilterCategory
---@field RangedWeapons ItemFilterCategory 0
---@field MeleeWeapons ItemFilterCategory 1
---@field Clothes ItemFilterCategory 2
---@field Consumables ItemFilterCategory 3
---@field Grenades ItemFilterCategory 4
---@field SoftwareMods ItemFilterCategory 5
---@field Attachments ItemFilterCategory 6
---@field Programs ItemFilterCategory 7
---@field Cyberware ItemFilterCategory 8
---@field Junk ItemFilterCategory 9
---@field BaseCount ItemFilterCategory 10
---@field Quest ItemFilterCategory 11
---@field NewWardrobeAppearances ItemFilterCategory 12
---@field Buyback ItemFilterCategory 13
---@field AllItems ItemFilterCategory 14
---@field AllCount ItemFilterCategory 15
---@field Invalid ItemFilterCategory -1
ItemFilterCategory = {}

---@class ItemFilterType
---@field All ItemFilterType 0
---@field Weapons ItemFilterType 1
---@field Clothes ItemFilterType 2
---@field Consumables ItemFilterType 3
---@field Cyberware ItemFilterType 4
---@field Attachments ItemFilterType 5
---@field Quest ItemFilterType 6
---@field Buyback ItemFilterType 7
---@field LightWeapons ItemFilterType 8
---@field HeavyWeapons ItemFilterType 9
---@field MeleeWeapons ItemFilterType 10
---@field Hacks ItemFilterType 11
ItemFilterType = {}

---@class ItemLabelType
---@field New ItemLabelType 0
---@field Quest ItemLabelType 1
---@field Money ItemLabelType 2
---@field Equipped ItemLabelType 3
---@field Owned ItemLabelType 4
---@field Buyback ItemLabelType 5
---@field DLCNew ItemLabelType 6
ItemLabelType = {}

---@class ItemModeGridSize
---@field Default ItemModeGridSize 0
---@field Outfit ItemModeGridSize 1
ItemModeGridSize = {}

---@class ItemSortMode
---@field Default ItemSortMode 0
---@field NewItems ItemSortMode 1
---@field NameAsc ItemSortMode 2
---@field NameDesc ItemSortMode 3
---@field QualityAsc ItemSortMode 4
---@field QualityDesc ItemSortMode 5
---@field WeightAsc ItemSortMode 6
---@field WeightDesc ItemSortMode 7
---@field PriceAsc ItemSortMode 8
---@field PriceDesc ItemSortMode 9
---@field ItemType ItemSortMode 10
---@field DpsAsc ItemSortMode 11
---@field DpsDesc ItemSortMode 12
ItemSortMode = {}

---@class ItemViewModes
---@field Item ItemViewModes 0
---@field Mod ItemViewModes 1
ItemViewModes = {}

---@class LadderCameraParams
---@field None LadderCameraParams 0
---@field Enter LadderCameraParams 1
---@field Default LadderCameraParams 2
---@field CameraReset LadderCameraParams 3
---@field Exit LadderCameraParams 4
LadderCameraParams = {}

---@class LandingType
---@field Off LandingType 0
---@field Regular LandingType 1
---@field Hard LandingType 2
---@field VeryHard LandingType 3
---@field Superhero LandingType 4
---@field Death LandingType 5
LandingType = {}

---@class LaserTargettingState
---@field Start LaserTargettingState 0
---@field Update LaserTargettingState 1
---@field End LaserTargettingState 2
LaserTargettingState = {}

---@class LibTreeEParameterType
---@field PARAM_Bool LibTreeEParameterType 0
---@field PARAM_Int32 LibTreeEParameterType 1
---@field PARAM_Enum LibTreeEParameterType 2
---@field PARAM_Float LibTreeEParameterType 3
---@field PARAM_CName LibTreeEParameterType 4
---@field PARAM_TreeRef LibTreeEParameterType 5
---@field PARAM_TreeRefList LibTreeEParameterType 6
---@field PARAM_NodeRef LibTreeEParameterType 7
---@field PARAM_Vector LibTreeEParameterType 9
LibTreeEParameterType = {}

---@class MechanicalScanType
---@field None MechanicalScanType 0
---@field Short MechanicalScanType 1
---@field Long MechanicalScanType 2
---@field Danger MechanicalScanType 3
MechanicalScanType = {}

---@class MessageViewType
---@field Sent MessageViewType 0
---@field Received MessageViewType 1
MessageViewType = {}

---@class MessengerContactType
---@field Contact MessengerContactType 0
---@field Group MessengerContactType 1
---@field Thread MessengerContactType 2
MessengerContactType = {}

---@class MinigameActionType
---@field Device MinigameActionType 0
---@field NPC MinigameActionType 1
---@field Both MinigameActionType 2
---@field AccessPoint MinigameActionType 3
MinigameActionType = {}

---@class ModuleState
---@field DISABLED ModuleState 0
---@field HIDDEN ModuleState 1
---@field ASLEEP ModuleState 2
---@field MALFUNCTIONING ModuleState 3
---@field ON ModuleState 4
ModuleState = {}

---@class MorphTargetsDiffTextureSize
---@field TEXTURE_SIZE_1024x1024 MorphTargetsDiffTextureSize 0
---@field TEXTURE_SIZE_512x512 MorphTargetsDiffTextureSize 1
---@field TEXTURE_SIZE_256x256 MorphTargetsDiffTextureSize 2
MorphTargetsDiffTextureSize = {}

---@class MorphTargetsFaceRegion
---@field FACE_REGION_EYES MorphTargetsFaceRegion 0
---@field FACE_REGION_NOSE MorphTargetsFaceRegion 1
---@field FACE_REGION_MOUTH MorphTargetsFaceRegion 2
---@field FACE_REGION_JAW MorphTargetsFaceRegion 3
---@field FACE_REGION_EARS MorphTargetsFaceRegion 4
---@field FACE_REGION_NONE MorphTargetsFaceRegion 255
MorphTargetsFaceRegion = {}

---@class MountType
---@field Hijack MountType 0
---@field Regular MountType 1
MountType = {}

---@class NavGenAgentSize
---@field Human NavGenAgentSize 0
NavGenAgentSize = {}

---@class NavGenNavmeshImpact
---@field Ignored NavGenNavmeshImpact 1
---@field Walkable NavGenNavmeshImpact 0
---@field Blocking NavGenNavmeshImpact 2
---@field Road NavGenNavmeshImpact 3
---@field CrowdWalkable NavGenNavmeshImpact 4
---@field Stairs NavGenNavmeshImpact 5
---@field Drones NavGenNavmeshImpact 6
NavGenNavmeshImpact = {}

---@class OutcomeMessage
---@field Success OutcomeMessage 0
---@field Failure OutcomeMessage 1
OutcomeMessage = {}

---@class PSODescBlendModeFactor
---@field FAC_Zero PSODescBlendModeFactor 0
---@field FAC_One PSODescBlendModeFactor 1
---@field FAC_SrcColor PSODescBlendModeFactor 2
---@field FAC_InvSrcColor PSODescBlendModeFactor 3
---@field FAC_SrcAlpha PSODescBlendModeFactor 4
---@field FAC_InvSrcAlpha PSODescBlendModeFactor 5
---@field FAC_DestColor PSODescBlendModeFactor 6
---@field FAC_InvDestColor PSODescBlendModeFactor 7
---@field FAC_DestAlpha PSODescBlendModeFactor 8
---@field FAC_InvDestAlpha PSODescBlendModeFactor 9
---@field FAC_BlendFactor PSODescBlendModeFactor 10
---@field FAC_InvBlendFactor PSODescBlendModeFactor 11
---@field FAC_Src1Color PSODescBlendModeFactor 12
---@field FAC_InvSrc1Color PSODescBlendModeFactor 13
---@field FAC_Src1Alpha PSODescBlendModeFactor 14
---@field FAC_InvSrc1Alpha PSODescBlendModeFactor 15
PSODescBlendModeFactor = {}

---@class PSODescBlendModeOp
---@field OP_Add PSODescBlendModeOp 0
---@field OP_Subtract PSODescBlendModeOp 1
---@field OP_RevSub PSODescBlendModeOp 2
---@field OP_Min PSODescBlendModeOp 3
---@field OP_Max PSODescBlendModeOp 4
---@field OP_Or PSODescBlendModeOp 5
---@field OP_And PSODescBlendModeOp 6
---@field OP_Xor PSODescBlendModeOp 7
---@field OP_nOr PSODescBlendModeOp 9
---@field OP_nAnd PSODescBlendModeOp 8
PSODescBlendModeOp = {}

---@class PSODescBlendModeWriteMask
---@field MASK_None PSODescBlendModeWriteMask 0
---@field MASK_R PSODescBlendModeWriteMask 1
---@field MASK_G PSODescBlendModeWriteMask 2
---@field MASK_B PSODescBlendModeWriteMask 4
---@field MASK_A PSODescBlendModeWriteMask 8
---@field MASK_RG PSODescBlendModeWriteMask 3
---@field MASK_RB PSODescBlendModeWriteMask 5
---@field MASK_RA PSODescBlendModeWriteMask 9
---@field MASK_GB PSODescBlendModeWriteMask 6
---@field MASK_GA PSODescBlendModeWriteMask 10
---@field MASK_BA PSODescBlendModeWriteMask 12
---@field MASK_RGB PSODescBlendModeWriteMask 7
---@field MASK_RGA PSODescBlendModeWriteMask 11
---@field MASK_RBA PSODescBlendModeWriteMask 13
---@field MASK_GBA PSODescBlendModeWriteMask 14
---@field MASK_RGBA PSODescBlendModeWriteMask 15
PSODescBlendModeWriteMask = {}

---@class PSODescDepthStencilModeComparisonMode
---@field COMPARISON_Never PSODescDepthStencilModeComparisonMode 0
---@field COMPARISON_Less PSODescDepthStencilModeComparisonMode 1
---@field COMPARISON_Equal PSODescDepthStencilModeComparisonMode 2
---@field COMPARISON_LessEqual PSODescDepthStencilModeComparisonMode 3
---@field COMPARISON_Greater PSODescDepthStencilModeComparisonMode 4
---@field COMPARISON_NotEqual PSODescDepthStencilModeComparisonMode 5
---@field COMPARISON_GreaterEqual PSODescDepthStencilModeComparisonMode 6
---@field COMPARISON_Always PSODescDepthStencilModeComparisonMode 7
PSODescDepthStencilModeComparisonMode = {}

---@class PSODescDepthStencilModeStencilOpMode
---@field STENCILOP_Keep PSODescDepthStencilModeStencilOpMode 0
---@field STENCILOP_Zero PSODescDepthStencilModeStencilOpMode 1
---@field STENCILOP_Replace PSODescDepthStencilModeStencilOpMode 2
---@field STENCILOP_IncreaseSaturate PSODescDepthStencilModeStencilOpMode 3
---@field STENCILOP_DecreaseSaturate PSODescDepthStencilModeStencilOpMode 4
---@field STENCILOP_Invert PSODescDepthStencilModeStencilOpMode 5
---@field STENCILOP_Increase PSODescDepthStencilModeStencilOpMode 6
---@field STENCILOP_Decrease PSODescDepthStencilModeStencilOpMode 7
PSODescDepthStencilModeStencilOpMode = {}

---@class PSODescPrimitiveTopologyType
---@field Invalid PSODescPrimitiveTopologyType 0
---@field Point PSODescPrimitiveTopologyType 1
---@field Line PSODescPrimitiveTopologyType 2
---@field Triangle PSODescPrimitiveTopologyType 3
---@field Patch PSODescPrimitiveTopologyType 4
PSODescPrimitiveTopologyType = {}

---@class PSODescRasterizerModeCullMode
---@field CULL_None PSODescRasterizerModeCullMode 0
---@field CULL_Front PSODescRasterizerModeCullMode 1
---@field CULL_Back PSODescRasterizerModeCullMode 2
PSODescRasterizerModeCullMode = {}

---@class PSODescRasterizerModeFrontFaceWinding
---@field FRONTFACE_CCW PSODescRasterizerModeFrontFaceWinding 0
---@field FRONTFACE_CW PSODescRasterizerModeFrontFaceWinding 1
PSODescRasterizerModeFrontFaceWinding = {}

---@class PSODescRasterizerModeOffsetMode
---@field OFFSET_None PSODescRasterizerModeOffsetMode 0
---@field OFFSET_NormalBias PSODescRasterizerModeOffsetMode 1
---@field OFFSET_ShadowBias PSODescRasterizerModeOffsetMode 2
---@field OFFSET_DecalBias PSODescRasterizerModeOffsetMode 3
PSODescRasterizerModeOffsetMode = {}

---@class PackageStatus
---@field UNINITIALIZED PackageStatus 0
---@field ON_HOLD PackageStatus 1
---@field FOR_IMMEDIATE_TRIGGER PackageStatus 2
---@field TRIGGERED PackageStatus 3
PackageStatus = {}

---@class PaperdollPositionAnimation
---@field Center PaperdollPositionAnimation 0
---@field Left PaperdollPositionAnimation 1
---@field Right PaperdollPositionAnimation 2
---@field LeftFullBody PaperdollPositionAnimation 3
PaperdollPositionAnimation = {}

---@class PauseMenuAction
---@field OpenSubMenu PauseMenuAction 0
---@field QuickSave PauseMenuAction 1
---@field Save PauseMenuAction 2
---@field ExitGame PauseMenuAction 3
---@field ExitToMainMenu PauseMenuAction 4
---@field QuickLoad PauseMenuAction 5
PauseMenuAction = {}

---@class PaymentStatus
---@field DEFAULT PaymentStatus 0
---@field IN_PROGRESS PaymentStatus 1
---@field NO_MONEY PaymentStatus 2
PaymentStatus = {}

---@class PerkMenuAttribute
---@field Body PerkMenuAttribute 0
---@field Reflex PerkMenuAttribute 1
---@field Technical_Ability PerkMenuAttribute 2
---@field Johnny PerkMenuAttribute 3
---@field Cool PerkMenuAttribute 4
---@field Intelligence PerkMenuAttribute 5
PerkMenuAttribute = {}

---@class PlayerChangeCameraAndLeaveVehiclePhase
---@field ToggleCamera PlayerChangeCameraAndLeaveVehiclePhase 0
---@field ExitVehicle PlayerChangeCameraAndLeaveVehiclePhase 1
---@field Done PlayerChangeCameraAndLeaveVehiclePhase 2
PlayerChangeCameraAndLeaveVehiclePhase = {}

---@class PlayerCombatControllerRefreshPolicyEnum
---@field Persistent PlayerCombatControllerRefreshPolicyEnum 0
---@field Eventful PlayerCombatControllerRefreshPolicyEnum 1
PlayerCombatControllerRefreshPolicyEnum = {}

---@class PlayerCombatState
---@field Invalid PlayerCombatState 0
---@field InCombat PlayerCombatState 1
---@field OutOfCombat PlayerCombatState 2
---@field Stealth PlayerCombatState 3
PlayerCombatState = {}

---@class PlayerVisionModeControllerRefreshPolicyEnum
---@field Persistent PlayerVisionModeControllerRefreshPolicyEnum 0
---@field Eventful PlayerVisionModeControllerRefreshPolicyEnum 1
PlayerVisionModeControllerRefreshPolicyEnum = {}

---@class ProgramEffect
---@field GrantAccess ProgramEffect 0
---@field BlockAccess ProgramEffect 1
---@field UnlockQuestFact ProgramEffect 2
ProgramEffect = {}

---@class ProgramType
---@field BasicAccess ProgramType 0
---@field ExtraPlayerProgram ProgramType 1
---@field ExtraServerProgram ProgramType 2
---@field EnemyProgram ProgramType 3
---@field EnemyLockNetwork ProgramType 4
ProgramType = {}

---@class QuantityPickerActionType
---@field Buy QuantityPickerActionType 0
---@field Sell QuantityPickerActionType 1
---@field TransferToStorage QuantityPickerActionType 2
---@field TransferToPlayer QuantityPickerActionType 3
---@field Drop QuantityPickerActionType 4
---@field Disassembly QuantityPickerActionType 5
---@field Craft QuantityPickerActionType 6
QuantityPickerActionType = {}

---@class QuickSlotActionType
---@field Undefined QuickSlotActionType 0
---@field SelectItem QuickSlotActionType 1
---@field HideWeapon QuickSlotActionType 2
---@field OpenPhone QuickSlotActionType 3
---@field SummonCar QuickSlotActionType 4
---@field SummonBike QuickSlotActionType 5
---@field ToggleRadio QuickSlotActionType 6
---@field SelectRadioStation QuickSlotActionType 7
---@field TurnOffRadio QuickSlotActionType 8
---@field CycleTrackedQuest QuickSlotActionType 9
---@field SummonVehicle QuickSlotActionType 10
---@field SetActiveVehicle QuickSlotActionType 11
---@field QuickHack QuickSlotActionType 12
---@field ToggleSummonMode QuickSlotActionType 13
---@field EquipFists QuickSlotActionType 14
QuickSlotActionType = {}

---@class QuickSlotItemType
---@field Undefined QuickSlotItemType 0
---@field Vehicle QuickSlotItemType 1
---@field Gadget QuickSlotItemType 2
---@field Consumable QuickSlotItemType 3
---@field Cyberware QuickSlotItemType 4
---@field Weapon QuickSlotItemType 5
---@field Interaction QuickSlotItemType 6
QuickSlotItemType = {}

---@class ReactionZones_Humanoid_Side
---@field Head ReactionZones_Humanoid_Side 0
---@field ChestLeft ReactionZones_Humanoid_Side 1
---@field ArmLeft ReactionZones_Humanoid_Side 2
---@field HandLeft ReactionZones_Humanoid_Side 3
---@field ChestRight ReactionZones_Humanoid_Side 4
---@field ArmRight ReactionZones_Humanoid_Side 5
---@field HandRight ReactionZones_Humanoid_Side 6
---@field Abdomen ReactionZones_Humanoid_Side 7
---@field LegLeft ReactionZones_Humanoid_Side 8
---@field LegRight ReactionZones_Humanoid_Side 9
ReactionZones_Humanoid_Side = {}

---@class RenderDecalNormalsBlendingMode
---@field AlphaBlending RenderDecalNormalsBlendingMode 0
---@field Reorient RenderDecalNormalsBlendingMode 1
RenderDecalNormalsBlendingMode = {}

---@class RenderDecalOrderPriority
---@field Priority0 RenderDecalOrderPriority 0
---@field Priority1 RenderDecalOrderPriority 1
---@field Priority2 RenderDecalOrderPriority 2
---@field Priority3 RenderDecalOrderPriority 3
RenderDecalOrderPriority = {}

---@class RenderSceneLayer
---@field Default RenderSceneLayer 0
---@field Cyberspace RenderSceneLayer 1
---@field WorldMap RenderSceneLayer 2
RenderSceneLayer = {}

---@class RequestType
---@field INSTANTLY_TRIGGER RequestType 0
---@field MANUALLY_TRIGGERED RequestType 1
RequestType = {}

---@class RipperdocFilter
---@field All RipperdocFilter 0
---@field Vendor RipperdocFilter 1
---@field Player RipperdocFilter 2
---@field Buyback RipperdocFilter 3
RipperdocFilter = {}

---@class RipperdocModes
---@field Default RipperdocModes 0
---@field Item RipperdocModes 1
RipperdocModes = {}

---@class SAnimationBufferBitwiseCompression
---@field ABBC_None SAnimationBufferBitwiseCompression 0
---@field ABBC_24b SAnimationBufferBitwiseCompression 1
---@field ABBC_16b SAnimationBufferBitwiseCompression 2
SAnimationBufferBitwiseCompression = {}

---@class SAnimationBufferBitwiseCompressionPreset
---@field ABBCP_Custom SAnimationBufferBitwiseCompressionPreset 0
---@field ABBCP_VeryHighQuality SAnimationBufferBitwiseCompressionPreset 1
---@field ABBCP_HighQuality SAnimationBufferBitwiseCompressionPreset 2
---@field ABBCP_NormalQuality SAnimationBufferBitwiseCompressionPreset 3
---@field ABBCP_LowQuality SAnimationBufferBitwiseCompressionPreset 4
---@field ABBCP_VeryLowQuality SAnimationBufferBitwiseCompressionPreset 5
---@field ABBCP_Raw SAnimationBufferBitwiseCompressionPreset 6
SAnimationBufferBitwiseCompressionPreset = {}

---@class SAnimationBufferDataCompressionMethod
---@field ABDCM_Invalid SAnimationBufferDataCompressionMethod 0
---@field ABDCM_Plain SAnimationBufferDataCompressionMethod 1
---@field ABDCM_Quaternion SAnimationBufferDataCompressionMethod 2
---@field ABDCM_QuaternionXYZSignedW SAnimationBufferDataCompressionMethod 3
---@field ABDCM_QuaternionXYZSignedWLastBit SAnimationBufferDataCompressionMethod 4
---@field ABDCM_Quaternion48b SAnimationBufferDataCompressionMethod 5
---@field ABDCM_Quaternion40b SAnimationBufferDataCompressionMethod 6
---@field ABDCM_Quaternion32b SAnimationBufferDataCompressionMethod 7
---@field ABDCM_Quaternion64bW SAnimationBufferDataCompressionMethod 8
---@field ABDCM_Quaternion48bW SAnimationBufferDataCompressionMethod 9
---@field ABDCM_Quaternion40bW SAnimationBufferDataCompressionMethod 10
SAnimationBufferDataCompressionMethod = {}

---@class SAnimationBufferOrientationCompressionMethod
---@field ABOCM_PackIn64bitsW SAnimationBufferOrientationCompressionMethod 0
---@field ABOCM_PackIn48bitsW SAnimationBufferOrientationCompressionMethod 1
---@field ABOCM_PackIn40bitsW SAnimationBufferOrientationCompressionMethod 2
---@field ABOCM_AsFloat_XYZW SAnimationBufferOrientationCompressionMethod 3
---@field ABOCM_AsFloat_XYZSignedW SAnimationBufferOrientationCompressionMethod 4
---@field ABOCM_AsFloat_XYZSignedWInLastBit SAnimationBufferOrientationCompressionMethod 5
---@field ABOCM_PackIn48bits SAnimationBufferOrientationCompressionMethod 6
---@field ABOCM_PackIn40bits SAnimationBufferOrientationCompressionMethod 7
---@field ABOCM_PackIn32bits SAnimationBufferOrientationCompressionMethod 8
SAnimationBufferOrientationCompressionMethod = {}

---@class SAnimationBufferStreamingOption
---@field ABSO_NonStreamable SAnimationBufferStreamingOption 0
---@field ABSO_PartiallyStreamable SAnimationBufferStreamingOption 1
---@field ABSO_FullyStreamable SAnimationBufferStreamingOption 2
SAnimationBufferStreamingOption = {}

---@class Sample_Replicated_Enum
---@field One Sample_Replicated_Enum 0
---@field Two Sample_Replicated_Enum 1
---@field Three Sample_Replicated_Enum 2
Sample_Replicated_Enum = {}

---@class ScannerDataType
---@field None ScannerDataType 0
---@field Name ScannerDataType 1
---@field Level ScannerDataType 2
---@field Health ScannerDataType 3
---@field Rarity ScannerDataType 4
---@field WeaponBasic ScannerDataType 5
---@field WeaponDetailed ScannerDataType 6
---@field BountySystem ScannerDataType 7
---@field Vulnerabilities ScannerDataType 8
---@field Faction ScannerDataType 9
---@field Attitude ScannerDataType 10
---@field SquadInfo ScannerDataType 11
---@field Resistances ScannerDataType 12
---@field Abilities ScannerDataType 13
---@field Requirements ScannerDataType 14
---@field Description ScannerDataType 15
---@field DeviceStatus ScannerDataType 16
---@field NetworkStatus ScannerDataType 17
---@field NetworkLevel ScannerDataType 18
---@field DeviceConnections ScannerDataType 19
---@field QuestEntry ScannerDataType 20
---@field VehicleName ScannerDataType 21
---@field VehicleManufacturer ScannerDataType 22
---@field VehicleProductionYears ScannerDataType 23
---@field VehicleDriveLayout ScannerDataType 24
---@field VehicleHorsepower ScannerDataType 25
---@field VehicleMass ScannerDataType 26
---@field VehicleState ScannerDataType 27
---@field VehicleInfo ScannerDataType 28
---@field QuickHackDescription ScannerDataType 29
ScannerDataType = {}

---@class ScannerNetworkState
---@field NOT_CONNECTED ScannerNetworkState 0
---@field NOT_BREACHED ScannerNetworkState 1
---@field TIER1 ScannerNetworkState 2
---@field TIER2 ScannerNetworkState 3
---@field TIER3 ScannerNetworkState 4
---@field BREACHED ScannerNetworkState 5
ScannerNetworkState = {}

---@class ScannerObjectType
---@field INVALID ScannerObjectType 0
---@field PUPPET ScannerObjectType 1
---@field VEHICLE ScannerObjectType 2
---@field DEVICE ScannerObjectType 3
---@field GENERIC ScannerObjectType 4
ScannerObjectType = {}

---@class SecurityEventScopeSettings
---@field GLOBAL SecurityEventScopeSettings 0
---@field AREA_WHERE_PLAYER_IS SecurityEventScopeSettings 1
---@field SPECIFIC_AGENTS_ONLY SecurityEventScopeSettings 2
SecurityEventScopeSettings = {}

---@class SettingsType
---@field Slider SettingsType 0
---@field Toggle SettingsType 1
---@field DropdownList SettingsType 2
SettingsType = {}

---@class SignShape
---@field RECTANGLE SignShape 0
---@field ARROWLEFT SignShape 1
---@field ARROWRIGHT SignShape 2
---@field SQUARE SignShape 3
SignShape = {}

---@class SignType
---@field INFORMATION SignType 0
---@field ATTENTION SignType 1
---@field WARNING SignType 2
SignType = {}

---@class SignalType
---@field DEFAULT SignalType 0
---@field REGISTRATION SignalType 1
---@field UNREGISTRATION SignalType 2
SignalType = {}

---@class SlotType
---@field DEFAULT SlotType 0
---@field HOLSTER SlotType 1
---@field WEAPON SlotType 2
---@field COMBAT_CYBERWARE SlotType 3
---@field TOOLTIP SlotType 4
---@field MISC SlotType 5
SlotType = {}

---@class StaticShaderInputLayout
---@field DebugVertexBase StaticShaderInputLayout 0
---@field DebugVertexUV StaticShaderInputLayout 1
---@field DebugVertexUV_Fullscreen StaticShaderInputLayout 2
---@field NoBuffers_Fullscreen StaticShaderInputLayout 3
---@field NoBuffers_PointList StaticShaderInputLayout 4
StaticShaderInputLayout = {}

---@class TestCasePhase
---@field Setup TestCasePhase 0
---@field Body TestCasePhase 1
---@field Wrapup TestCasePhase 2
TestCasePhase = {}

---@class ThrowType
---@field Quick ThrowType 0
---@field Charge ThrowType 1
ThrowType = {}

---@class Tier2WalkType
---@field Undefined Tier2WalkType 0
---@field Slow Tier2WalkType 1
---@field Normal Tier2WalkType 2
---@field Fast Tier2WalkType 3
Tier2WalkType = {}

---@class TrafficGenDynamicImpact
---@field Ignored TrafficGenDynamicImpact 0
---@field Blocking TrafficGenDynamicImpact 1
TrafficGenDynamicImpact = {}

---@class TrafficGenMeshImpact
---@field UseNavigation TrafficGenMeshImpact 0
---@field ForceIgnored TrafficGenMeshImpact 1
---@field ForceBlocking TrafficGenMeshImpact 2
TrafficGenMeshImpact = {}

---@class TransferSaveAction
---@field Export TransferSaveAction 0
---@field Import TransferSaveAction 1
TransferSaveAction = {}

---@class TransferSaveState
---@field ExportConfirmation TransferSaveState 0
---@field ExportSpinner TransferSaveState 1
---@field ExportSuccess TransferSaveState 2
---@field ExportFailed TransferSaveState 3
---@field ImportSpinner TransferSaveState 4
---@field ImportLoading TransferSaveState 5
---@field ImportNoSave TransferSaveState 6
---@field ImportFailed TransferSaveState 7
---@field ImportNotEnoughSpace TransferSaveState 8
TransferSaveState = {}

---@class TransmogSlots
---@field Head TransmogSlots 0
---@field Face TransmogSlots 1
---@field InnerChest TransmogSlots 2
---@field OuterChest TransmogSlots 3
---@field Legs TransmogSlots 4
---@field Feet TransmogSlots 5
TransmogSlots = {}

---@class TweakWeaponPose
---@field Nothing TweakWeaponPose 0
---@field Position TweakWeaponPose 1
---@field Rotation TweakWeaponPose 2
TweakWeaponPose = {}

---@class UIGameContext
---@field Default UIGameContext 0
---@field QuickHack UIGameContext 1
---@field Scanning UIGameContext 2
---@field DeviceZoom UIGameContext 3
---@field BraindanceEditor UIGameContext 4
---@field BraindancePlayback UIGameContext 5
---@field VehicleMounted UIGameContext 6
---@field ModalPopup UIGameContext 7
---@field RadialWheel UIGameContext 8
---@field VehicleRace UIGameContext 9
UIGameContext = {}

---@class UIInGameNotificationType
---@field ActionRestriction UIInGameNotificationType 0
---@field CombatRestriction UIInGameNotificationType 1
---@field CantSaveActionRestriction UIInGameNotificationType 2
---@field CantSaveCombatRestriction UIInGameNotificationType 3
---@field CantSaveQuestRestriction UIInGameNotificationType 4
---@field CantSaveDeathRestriction UIInGameNotificationType 5
---@field NotEnoughSlotsSaveResctriction UIInGameNotificationType 6
---@field NotEnoughSpaceSaveResctriction UIInGameNotificationType 7
---@field PhotoModeDisabledRestriction UIInGameNotificationType 8
---@field GenericNotification UIInGameNotificationType 9
UIInGameNotificationType = {}

---@class UIItemCategory
---@field Default UIItemCategory 0
---@field Weapon UIItemCategory 1
---@field Clothing UIItemCategory 2
---@field Grenade UIItemCategory 3
---@field Cyberware UIItemCategory 4
UIItemCategory = {}

---@class UIMenuNotificationType
---@field VendorNotEnoughMoney UIMenuNotificationType 0
---@field VNotEnoughMoney UIMenuNotificationType 1
---@field VendorRequirementsNotMet UIMenuNotificationType 2
---@field InventoryActionBlocked UIMenuNotificationType 3
---@field CraftingNoPerks UIMenuNotificationType 4
---@field CraftingNotEnoughMaterial UIMenuNotificationType 5
---@field UpgradingLevelToLow UIMenuNotificationType 6
---@field NoPerksPoints UIMenuNotificationType 7
---@field PerksLocked UIMenuNotificationType 8
---@field MaxLevelPerks UIMenuNotificationType 9
---@field NoAttributePoints UIMenuNotificationType 10
---@field InCombat UIMenuNotificationType 11
---@field CraftingQuickhack UIMenuNotificationType 12
---@field CraftingAmmoCap UIMenuNotificationType 13
UIMenuNotificationType = {}

---@class UIObjectiveEntryType
---@field Invalid UIObjectiveEntryType 0
---@field Quest UIObjectiveEntryType 1
---@field Objective UIObjectiveEntryType 2
---@field SubObjective UIObjectiveEntryType 3
UIObjectiveEntryType = {}

---@class UpdateBucketEnum
---@field Vehicle UpdateBucketEnum 0
---@field Character UpdateBucketEnum 1
---@field AttachedObject UpdateBucketEnum 2
UpdateBucketEnum = {}

---@class VendorConfirmationPopupType
---@field Default VendorConfirmationPopupType 0
---@field ExpensiveItem VendorConfirmationPopupType 1
---@field EquippedItem VendorConfirmationPopupType 2
---@field BuyAndEquipCyberware VendorConfirmationPopupType 3
---@field BuyNotEquipableCyberware VendorConfirmationPopupType 4
---@field SellCyberware VendorConfirmationPopupType 5
---@field DisassembeIconic VendorConfirmationPopupType 6
VendorConfirmationPopupType = {}

---@class VisualState
---@field OFF VisualState 0
---@field RUNNING VisualState 1
---@field MALFUNCTIONING VisualState 2
---@field ON VisualState 3
VisualState = {}

---@class WeaponPartType
---@field Scope WeaponPartType 0
---@field Magazine WeaponPartType 1
---@field Silencer WeaponPartType 2
WeaponPartType = {}

---@class WeaponType
---@field Ranged WeaponType 0
---@field Melee WeaponType 1
---@field Count WeaponType 2
---@field Invalid WeaponType -1
WeaponType = {}

---@class WorkspotConditionOperators
---@field OR WorkspotConditionOperators 0
---@field AND WorkspotConditionOperators 1
WorkspotConditionOperators = {}

---@class WorkspotWeaponConditionEnum
---@field None WorkspotWeaponConditionEnum 0
---@field Any WorkspotWeaponConditionEnum 1
---@field Ranged WorkspotWeaponConditionEnum 2
---@field OneHandedRanged WorkspotWeaponConditionEnum 3
---@field Melee WorkspotWeaponConditionEnum 4
---@field MeleeCyberware WorkspotWeaponConditionEnum 5
---@field LMG WorkspotWeaponConditionEnum 6
WorkspotWeaponConditionEnum = {}

---@class WorldMapTooltipType
---@field Default WorldMapTooltipType 0
---@field Police WorldMapTooltipType 1
WorldMapTooltipType = {}

---@class aimTypeEnum
---@field AimIn aimTypeEnum 0
---@field AimOut aimTypeEnum 1
---@field Invalid aimTypeEnum 2
aimTypeEnum = {}

---@class animAimState
---@field Unaimed animAimState 0
---@field Aimed animAimState 1
animAimState = {}

---@class animAnimEventGenderAlt
---@field None animAnimEventGenderAlt 0
---@field Female animAnimEventGenderAlt 1
---@field Male animAnimEventGenderAlt 2
animAnimEventGenderAlt = {}

---@class animAnimNode_SetDrivenKey_InternalsEChannelType
---@field FloatTrack animAnimNode_SetDrivenKey_InternalsEChannelType 0
---@field TransX animAnimNode_SetDrivenKey_InternalsEChannelType 1
---@field TransY animAnimNode_SetDrivenKey_InternalsEChannelType 2
---@field TransZ animAnimNode_SetDrivenKey_InternalsEChannelType 3
---@field RotEulZ_Pitch animAnimNode_SetDrivenKey_InternalsEChannelType 4
---@field RotEulX_Roll animAnimNode_SetDrivenKey_InternalsEChannelType 5
---@field RotEulY_Yaw animAnimNode_SetDrivenKey_InternalsEChannelType 6
---@field ScaleX animAnimNode_SetDrivenKey_InternalsEChannelType 7
---@field ScaleY animAnimNode_SetDrivenKey_InternalsEChannelType 8
---@field ScaleZ animAnimNode_SetDrivenKey_InternalsEChannelType 9
---@field RotQuatX animAnimNode_SetDrivenKey_InternalsEChannelType 10
---@field RotQuatY animAnimNode_SetDrivenKey_InternalsEChannelType 11
---@field RotQuatZ animAnimNode_SetDrivenKey_InternalsEChannelType 12
---@field RotQuatW animAnimNode_SetDrivenKey_InternalsEChannelType 13
animAnimNode_SetDrivenKey_InternalsEChannelType = {}

---@class animAnimStateInterpolationType
---@field Linear animAnimStateInterpolationType 0
---@field EaseIn animAnimStateInterpolationType 1
---@field EaseOut animAnimStateInterpolationType 2
---@field EaseInOut animAnimStateInterpolationType 3
animAnimStateInterpolationType = {}

---@class animAnimationType
---@field Normal animAnimationType 0
---@field AdditiveFromRefPose animAnimationType 1
---@field AdditiveFromFirstFrame animAnimationType 2
---@field Additive animAnimationType 3
---@field AdditiveWithoutFirstFrame animAnimationType 4
animAnimationType = {}

---@class animAxis
---@field X animAxis 0
---@field Y animAxis 1
---@field Z animAxis 2
---@field NegativeX animAxis 3
---@field NegativeY animAxis 4
---@field NegativeZ animAxis 5
animAxis = {}

---@class animClampType
---@field None animClampType 0
---@field Clamp animClampType 1
---@field WrappedClamp animClampType 2
animClampType = {}

---@class animCompareFunc
---@field Equal animCompareFunc 0
---@field NotEqual animCompareFunc 1
---@field Less animCompareFunc 2
---@field LessEqual animCompareFunc 3
---@field Greater animCompareFunc 4
---@field GreaterEqual animCompareFunc 5
animCompareFunc = {}

---@class animConstraintWeightMode
---@field Static animConstraintWeightMode 0
---@field FloatTrack animConstraintWeightMode 1
animConstraintWeightMode = {}

---@class animCoverAction
---@field NoAction animCoverAction 0
---@field LeanLeft animCoverAction 1
---@field LeanRight animCoverAction 2
---@field StepOutLeft animCoverAction 3
---@field StepOutRight animCoverAction 4
---@field LeanOver animCoverAction 5
---@field StepUp animCoverAction 6
---@field EnterCover animCoverAction 7
---@field SlideTo animCoverAction 8
---@field Vault animCoverAction 9
---@field LeaveCover animCoverAction 10
---@field BlindfireLeft animCoverAction 11
---@field BlindfireRight animCoverAction 12
---@field BlindfireOver animCoverAction 13
---@field OverheadStepOutLeft animCoverAction 14
---@field OverheadStepOutRight animCoverAction 15
---@field OverheadStepUp animCoverAction 16
animCoverAction = {}

---@class animCoverBehavior
---@field Idle animCoverBehavior 0
---@field PreAction animCoverBehavior 1
---@field DoAction animCoverBehavior 2
---@field PostAction animCoverBehavior 3
animCoverBehavior = {}

---@class animCoverStance
---@field None animCoverStance 0
---@field LowLeft animCoverStance 1
---@field HighLeft animCoverStance 2
---@field LowRight animCoverStance 3
---@field HighRight animCoverStance 4
animCoverStance = {}

---@class animCoverState
---@field LowCover animCoverState 1
---@field HighCover animCoverState 2
animCoverState = {}

---@class animDyngConstraintLinkType
---@field KeepFixedDistance animDyngConstraintLinkType 0
---@field KeepVariableDistance animDyngConstraintLinkType 1
---@field Greater animDyngConstraintLinkType 2
---@field Closer animDyngConstraintLinkType 3
animDyngConstraintLinkType = {}

---@class animDyngParticleProjectionType
---@field Disabled animDyngParticleProjectionType 0
---@field ShortestPath animDyngParticleProjectionType 1
---@field Directed animDyngParticleProjectionType 2
animDyngParticleProjectionType = {}

---@class animEAnimGraphAdditiveType
---@field AGAT_Local animEAnimGraphAdditiveType 0
---@field AGAT_Ref animEAnimGraphAdditiveType 1
animEAnimGraphAdditiveType = {}

---@class animEAnimGraphCompareFunc
---@field AGCF_Equal animEAnimGraphCompareFunc 0
---@field AGCF_NotEqual animEAnimGraphCompareFunc 1
---@field AGCF_Less animEAnimGraphCompareFunc 2
---@field AGCF_LessEqual animEAnimGraphCompareFunc 3
---@field AGCF_Greater animEAnimGraphCompareFunc 4
---@field AGCF_GreaterEqual animEAnimGraphCompareFunc 5
animEAnimGraphCompareFunc = {}

---@class animEAnimGraphLogicOp
---@field AGLO_Or animEAnimGraphLogicOp 0
---@field AGLO_And animEAnimGraphLogicOp 1
animEAnimGraphLogicOp = {}

---@class animEAnimGraphMathInterpolation
---@field AGMI_LINEAR animEAnimGraphMathInterpolation 0
---@field AGMI_SIN animEAnimGraphMathInterpolation 1
---@field AGMI_BEZIER animEAnimGraphMathInterpolation 2
animEAnimGraphMathInterpolation = {}

---@class animEAnimGraphMathOp
---@field AGMO_Add animEAnimGraphMathOp 0
---@field AGMO_Subtract animEAnimGraphMathOp 1
---@field AGMO_Multiply animEAnimGraphMathOp 2
---@field AGMO_Divide animEAnimGraphMathOp 3
---@field AGMO_SafeDivide animEAnimGraphMathOp 4
---@field AGMO_ATan animEAnimGraphMathOp 5
---@field AGMO_AngleDiff animEAnimGraphMathOp 6
---@field AGMO_Length animEAnimGraphMathOp 7
---@field AGMO_Abs animEAnimGraphMathOp 8
animEAnimGraphMathOp = {}

---@class animEBlendFromPoseMode
---@field BFPM_AlwaysOnActivation animEBlendFromPoseMode 0
---@field BFPM_RequestedByTag animEBlendFromPoseMode 1
animEBlendFromPoseMode = {}

---@class animEBlendTracksMode
---@field AGBT_BasePose animEBlendTracksMode 0
---@field AGBT_Interpolate animEBlendTracksMode 1
---@field AGBT_Add animEBlendTracksMode 2
animEBlendTracksMode = {}

---@class animEBlendTypeLBC
---@field Linear animEBlendTypeLBC 0
---@field Smoothstep animEBlendTypeLBC 1
---@field CustomCurve animEBlendTypeLBC 2
animEBlendTypeLBC = {}

---@class animEDirectionToEuler
---@field Pitch animEDirectionToEuler 0
---@field Yaw animEDirectionToEuler 1
---@field Roll animEDirectionToEuler 2
animEDirectionToEuler = {}

---@class animEFootPhase
---@field RightUp animEFootPhase 0
---@field RightForward animEFootPhase 1
---@field LeftUp animEFootPhase 2
---@field LeftForward animEFootPhase 3
---@field NotConsidered animEFootPhase 4
animEFootPhase = {}

---@class animEInterpolationType
---@field Lerp animEInterpolationType 0
---@field Slerp animEInterpolationType 1
animEInterpolationType = {}

---@class animEMotionExtractionCompressionType
---@field EMECT_LINEAR animEMotionExtractionCompressionType 6
---@field EMECT_SPLINE_LOW animEMotionExtractionCompressionType 4
---@field EMECT_SPLINE_MID animEMotionExtractionCompressionType 2
---@field EMECT_SPLINE_HIGH animEMotionExtractionCompressionType 5
---@field EMECT_UNCOMPRESSED animEMotionExtractionCompressionType 0
---@field EMECT_UNCOMPRESSED_ALL_ANGLES animEMotionExtractionCompressionType 3
---@field EMECT_UNCOMPRESSED_2D animEMotionExtractionCompressionType 7
---@field EMECT_UNCOMPRESSED_3D_FALLBACKING animEMotionExtractionCompressionType 8
---@field EMECT_UNCOMPRESSED_ALL_ANGLES_FALLBACKING animEMotionExtractionCompressionType 9
animEMotionExtractionCompressionType = {}

---@class animEResetTypeNode
---@field RT_Reference animEResetTypeNode 0
---@field RT_Indentity animEResetTypeNode 1
animEResetTypeNode = {}

---@class animESpace
---@field Local animESpace 0
---@field Model animESpace 1
---@field World animESpace 2
animESpace = {}

---@class animESpaceMW
---@field Model animESpaceMW 0
---@field World animESpaceMW 1
animESpaceMW = {}

---@class animETransformAxis
---@field X_Axis animETransformAxis 1
---@field Y_Axis animETransformAxis 2
---@field Z_Axis animETransformAxis 4
animETransformAxis = {}

---@class animEVectorWsToMsType
---@field Position animEVectorWsToMsType 0
---@field Direction animEVectorWsToMsType 1
animEVectorWsToMsType = {}

---@class animEventFilterType
---@field Default animEventFilterType 0
---@field AlwaysCollect animEventFilterType 1
---@field Solo animEventFilterType 2
---@field Mute animEventFilterType 3
animEventFilterType = {}

---@class animEventSide
---@field Left animEventSide 0
---@field Right animEventSide 1
animEventSide = {}

---@class animFacialEmotionTransitionType
---@field Natural animFacialEmotionTransitionType 0
---@field Fast animFacialEmotionTransitionType 1
---@field Blend animFacialEmotionTransitionType 2
---@field Instant animFacialEmotionTransitionType 3
---@field Custom animFacialEmotionTransitionType 4
animFacialEmotionTransitionType = {}

---@class animFloatTrackOperationType
---@field Override animFloatTrackOperationType 0
---@field Multiply animFloatTrackOperationType 1
---@field Add animFloatTrackOperationType 2
---@field Subtract animFloatTrackOperationType 3
---@field SubtractSwapped animFloatTrackOperationType 4
---@field WeightComplement animFloatTrackOperationType 5
animFloatTrackOperationType = {}

---@class animHitReactionType
---@field None animHitReactionType 0
---@field Twitch animHitReactionType 1
---@field Impact animHitReactionType 2
---@field Stagger animHitReactionType 3
---@field Pain animHitReactionType 4
---@field Knockdown animHitReactionType 5
---@field Ragdoll animHitReactionType 6
---@field Death animHitReactionType 7
---@field Block animHitReactionType 8
---@field GuardBreak animHitReactionType 9
---@field Parry animHitReactionType 10
---@field Bump animHitReactionType 11
animHitReactionType = {}

---@class animLeg
---@field Left animLeg 0
---@field Right animLeg 1
animLeg = {}

---@class animLocoStateType
---@field LS_Pre animLocoStateType 0
---@field LS_Loop animLocoStateType 1
animLocoStateType = {}

---@class animLocomotionDecision
---@field LD_None animLocomotionDecision 0
---@field LD_Stop animLocomotionDecision 1
---@field LD_MoveTo animLocomotionDecision 2
---@field LD_Move animLocomotionDecision 3
animLocomotionDecision = {}

---@class animLocomotion_AnimType
---@field None animLocomotion_AnimType 0
---@field idle_stand animLocomotion_AnimType 1
---@field idle_to_idle_0 animLocomotion_AnimType 2
---@field idle_to_idle_090 animLocomotion_AnimType 3
---@field idle_to_idle_270 animLocomotion_AnimType 4
---@field idle_to_idle_180_l animLocomotion_AnimType 5
---@field idle_to_idle_180_r animLocomotion_AnimType 6
---@field walk_0 animLocomotion_AnimType 7
---@field walk_left animLocomotion_AnimType 8
---@field walk_right animLocomotion_AnimType 9
---@field jog_0 animLocomotion_AnimType 10
---@field jog_left animLocomotion_AnimType 11
---@field jog_right animLocomotion_AnimType 12
---@field sprint_0 animLocomotion_AnimType 13
---@field sprint_left animLocomotion_AnimType 14
---@field sprint_right animLocomotion_AnimType 15
---@field idle_to_walk_0 animLocomotion_AnimType 16
---@field idle_to_jog_0 animLocomotion_AnimType 17
---@field idle_to_sprint_0 animLocomotion_AnimType 18
---@field walk_to_idle_0 animLocomotion_AnimType 19
---@field jog_to_idle_0 animLocomotion_AnimType 20
---@field sprint_to_idle_0 animLocomotion_AnimType 21
---@field walk_to_idle_0_l_hard animLocomotion_AnimType 22
---@field walk_to_idle_0_r_hard animLocomotion_AnimType 23
---@field jog_to_idle_0_l_hard animLocomotion_AnimType 24
---@field jog_to_idle_0_r_hard animLocomotion_AnimType 25
---@field sprint_to_idle_0_l_hard animLocomotion_AnimType 26
---@field sprint_to_idle_0_r_hard animLocomotion_AnimType 27
---@field walk_to_jog_0 animLocomotion_AnimType 28
---@field walk_to_sprint_0 animLocomotion_AnimType 29
---@field jog_to_walk_0 animLocomotion_AnimType 30
---@field jog_to_sprint_0 animLocomotion_AnimType 31
---@field sprint_to_walk_0 animLocomotion_AnimType 32
---@field sprint_to_jog_0 animLocomotion_AnimType 33
---@field idle_turn_to_walk_090 animLocomotion_AnimType 34
---@field idle_turn_to_walk_180_l animLocomotion_AnimType 35
---@field idle_turn_to_walk_180_r animLocomotion_AnimType 36
---@field idle_turn_to_walk_270 animLocomotion_AnimType 37
---@field idle_turn_to_jog_090 animLocomotion_AnimType 38
---@field idle_turn_to_jog_180_l animLocomotion_AnimType 39
---@field idle_turn_to_jog_180_r animLocomotion_AnimType 40
---@field idle_turn_to_jog_270 animLocomotion_AnimType 41
---@field idle_turn_to_sprint_090 animLocomotion_AnimType 42
---@field idle_turn_to_sprint_180_l animLocomotion_AnimType 43
---@field idle_turn_to_sprint_180_r animLocomotion_AnimType 44
---@field idle_turn_to_sprint_270 animLocomotion_AnimType 45
---@field walk_180 animLocomotion_AnimType 46
---@field jog_180 animLocomotion_AnimType 47
---@field walk_0_to_walk_180_l animLocomotion_AnimType 48
---@field walk_0_to_walk_180_r animLocomotion_AnimType 49
---@field walk_180_to_walk_0_l animLocomotion_AnimType 50
---@field walk_180_to_walk_0_r animLocomotion_AnimType 51
---@field idle_to_walk_180 animLocomotion_AnimType 52
---@field idle_to_jog_180 animLocomotion_AnimType 53
---@field walk_to_idle_180 animLocomotion_AnimType 54
---@field jog_to_idle_180 animLocomotion_AnimType 55
---@field jog_0_to_jog_180_l animLocomotion_AnimType 56
---@field jog_0_to_jog_180_r animLocomotion_AnimType 57
---@field jog_180_to_jog_0_l animLocomotion_AnimType 58
---@field jog_180_to_jog_0_r animLocomotion_AnimType 59
---@field jog_to_sprint_180 animLocomotion_AnimType 60
---@field walk_to_jog_180 animLocomotion_AnimType 61
---@field jog_to_walk_180 animLocomotion_AnimType 62
---@field idle_to_walk_090 animLocomotion_AnimType 63
---@field idle_to_walk_270 animLocomotion_AnimType 64
---@field walk_090 animLocomotion_AnimType 65
---@field walk_270 animLocomotion_AnimType 66
---@field walk_to_idle_090 animLocomotion_AnimType 67
---@field walk_to_idle_270 animLocomotion_AnimType 68
---@field walk_0_to_walk_090 animLocomotion_AnimType 69
---@field walk_0_to_walk_270 animLocomotion_AnimType 70
---@field walk_180_to_walk_090 animLocomotion_AnimType 71
---@field walk_180_to_walk_270 animLocomotion_AnimType 72
---@field walk_090_to_walk_0 animLocomotion_AnimType 73
---@field walk_270_to_walk_0 animLocomotion_AnimType 74
---@field walk_090_to_walk_180 animLocomotion_AnimType 75
---@field walk_270_to_walk_180 animLocomotion_AnimType 76
---@field walk_090_to_walk_270_l animLocomotion_AnimType 77
---@field walk_090_to_walk_270_r animLocomotion_AnimType 78
---@field walk_270_to_walk_090_l animLocomotion_AnimType 79
---@field walk_270_to_walk_090_r animLocomotion_AnimType 80
---@field walk_0_down_stairs animLocomotion_AnimType 81
---@field walk_0_up_stairs animLocomotion_AnimType 82
---@field walk_0_down_slope animLocomotion_AnimType 83
---@field walk_0_up_slope animLocomotion_AnimType 84
---@field jog_0_down_stairs animLocomotion_AnimType 85
---@field jog_0_up_stairs animLocomotion_AnimType 86
---@field jog_0_down_slope animLocomotion_AnimType 87
---@field jog_0_up_slope animLocomotion_AnimType 88
---@field sprint_0_down_stairs animLocomotion_AnimType 89
---@field sprint_0_up_stairs animLocomotion_AnimType 90
---@field sprint_0_down_slope animLocomotion_AnimType 91
---@field sprint_0_up_slope animLocomotion_AnimType 92
---@field walk_090_up_stairs animLocomotion_AnimType 93
---@field walk_090_down_stairs animLocomotion_AnimType 94
---@field walk_270_up_stairs animLocomotion_AnimType 95
---@field walk_270_down_stairs animLocomotion_AnimType 96
---@field walk_180_up_stairs animLocomotion_AnimType 97
---@field walk_180_down_stairs animLocomotion_AnimType 98
---@field idle_step_single_0 animLocomotion_AnimType 99
---@field idle_step_single_090 animLocomotion_AnimType 100
---@field idle_step_single_180 animLocomotion_AnimType 101
---@field idle_step_single_270 animLocomotion_AnimType 102
animLocomotion_AnimType = {}

---@class animLocomotion_Style
---@field LS_Idle animLocomotion_Style 0
---@field LS_Rotation animLocomotion_Style 1
---@field LS_Walk animLocomotion_Style 2
---@field LS_Jog animLocomotion_Style 3
---@field LS_Sprint animLocomotion_Style 4
---@field LS_Any animLocomotion_Style 5
animLocomotion_Style = {}

---@class animLookAtChestMode
---@field Default animLookAtChestMode 0
---@field NoHips animLookAtChestMode 1
---@field Horizontal animLookAtChestMode 2
---@field HorizontalNoHips animLookAtChestMode 3
---@field ENUM_SIZE animLookAtChestMode 4
animLookAtChestMode = {}

---@class animLookAtEyesMode
---@field Default animLookAtEyesMode 0
---@field Horizontal animLookAtEyesMode 1
---@field ENUM_SIZE animLookAtEyesMode 2
animLookAtEyesMode = {}

---@class animLookAtHeadMode
---@field Default animLookAtHeadMode 0
---@field Horizontal animLookAtHeadMode 1
---@field ENUM_SIZE animLookAtHeadMode 2
animLookAtHeadMode = {}

---@class animLookAtLeftHandedMode
---@field Default animLookAtLeftHandedMode 0
---@field Horizontal animLookAtLeftHandedMode 1
---@field ENUM_SIZE animLookAtLeftHandedMode 2
animLookAtLeftHandedMode = {}

---@class animLookAtLimitDegreesType
---@field Narrow animLookAtLimitDegreesType 0
---@field Normal animLookAtLimitDegreesType 1
---@field Wide animLookAtLimitDegreesType 2
---@field None animLookAtLimitDegreesType 3
animLookAtLimitDegreesType = {}

---@class animLookAtLimitDistanceType
---@field Short animLookAtLimitDistanceType 0
---@field Normal animLookAtLimitDistanceType 1
---@field Long animLookAtLimitDistanceType 2
---@field None animLookAtLimitDistanceType 3
animLookAtLimitDistanceType = {}

---@class animLookAtRightHandedMode
---@field Default animLookAtRightHandedMode 0
---@field Horizontal animLookAtRightHandedMode 1
---@field ENUM_SIZE animLookAtRightHandedMode 2
animLookAtRightHandedMode = {}

---@class animLookAtStatus
---@field Active animLookAtStatus 2
---@field LimitReached animLookAtStatus 4
---@field TransitionInProgress animLookAtStatus 8
animLookAtStatus = {}

---@class animLookAtStyle
---@field VerySlow animLookAtStyle 0
---@field Slow animLookAtStyle 1
---@field Normal animLookAtStyle 2
---@field Fast animLookAtStyle 3
---@field VeryFast animLookAtStyle 4
animLookAtStyle = {}

---@class animLookAtTwoHandedMode
---@field Default animLookAtTwoHandedMode 0
---@field Horizontal animLookAtTwoHandedMode 1
---@field ENUM_SIZE animLookAtTwoHandedMode 2
animLookAtTwoHandedMode = {}

---@class animMotionTableAction
---@field MTA_None animMotionTableAction 0
---@field MTA_Start animMotionTableAction 1
---@field MTA_Stop animMotionTableAction 2
---@field MTA_Move animMotionTableAction 3
---@field MTA_TurnInPlace animMotionTableAction 4
---@field MTA_TransitionToBackward animMotionTableAction 5
---@field MTA_BackwardMove animMotionTableAction 6
---@field MTA_TransitionFromBackward animMotionTableAction 7
---@field MTA_StrafeLeft animMotionTableAction 8
---@field MTA_StrafeRight animMotionTableAction 9
---@field MTA_ForwardToStrafeLeft animMotionTableAction 10
---@field MTA_ForwardToStrafeRight animMotionTableAction 11
---@field MTA_StrafeLeftToForward animMotionTableAction 12
---@field MTA_StrafeRightToForward animMotionTableAction 13
---@field MTA_BackwardToStrafeLeft animMotionTableAction 14
---@field MTA_BackwardToStrafeRight animMotionTableAction 15
---@field MTA_StrafeLeftToBackward animMotionTableAction 16
---@field MTA_StrafeRightToBackward animMotionTableAction 17
---@field MTA_BackwardStart animMotionTableAction 18
---@field MTA_BackwardStop animMotionTableAction 19
---@field MTA_StrafeLeftStart animMotionTableAction 20
---@field MTA_StrafeLeftStop animMotionTableAction 21
---@field MTA_StrafeRightStart animMotionTableAction 22
---@field MTA_StrafeRightStop animMotionTableAction 23
---@field MTA_ForwardToWalk animMotionTableAction 24
---@field MTA_ForwardToJog animMotionTableAction 25
---@field MTA_ForwardToSprint animMotionTableAction 26
---@field MTA_HardStopLeftLeg animMotionTableAction 27
---@field MTA_HardStopRightLeg animMotionTableAction 28
---@field MTA_RepositionForward animMotionTableAction 29
---@field MTA_RepositionLeft animMotionTableAction 30
---@field MTA_RepositionRight animMotionTableAction 31
---@field MTA_RepositionBackward animMotionTableAction 32
---@field MTA_Custom animMotionTableAction 33
---@field MTA_CrowdMove animMotionTableAction 34
---@field MTA_CrowdMoveSlopes animMotionTableAction 35
---@field MTA_CrowdMoveStairs animMotionTableAction 36
---@field MTA_StrafeLeftToStrafeRight animMotionTableAction 37
---@field MTA_StrafeRightToStrafeLeft animMotionTableAction 38
---@field MTA_CrowdRelaxedStop animMotionTableAction 39
---@field MTA_CrowdHardStop animMotionTableAction 40
---@field MTA_CrowdSprintStop animMotionTableAction 41
---@field MTA_CrowdFleeStopFront animMotionTableAction 42
---@field MTA_CrowdFleeStopBack animMotionTableAction 43
---@field MTA_CrowdRelaxedStart animMotionTableAction 44
---@field MTA_CrowdFleeStartIdle animMotionTableAction 45
---@field MTA_CrowdFleeStartMotion animMotionTableAction 46
---@field MTA_CrowdDirectionalStartFast animMotionTableAction 47
animMotionTableAction = {}

---@class animMotionTableType
---@field MTT_None animMotionTableType 0
---@field MTT_Walk animMotionTableType 1
---@field MTT_Jog animMotionTableType 2
---@field MTT_Sprint animMotionTableType 3
---@field MTT_Custom animMotionTableType 4
animMotionTableType = {}

---@class animMotionTag
---@field MT_Invalid animMotionTag 0
---@field Walk animMotionTag 1
---@field Jog animMotionTag 2
---@field Sprint animMotionTag 3
animMotionTag = {}

---@class animNPCVehicleDeathType
---@field Default animNPCVehicleDeathType 0
---@field Relaxed animNPCVehicleDeathType 1
---@field Combat animNPCVehicleDeathType 2
---@field Ragdoll animNPCVehicleDeathType 3
animNPCVehicleDeathType = {}

---@class animNodeProfileTimerMode
---@field Begin animNodeProfileTimerMode 0
---@field End animNodeProfileTimerMode 1
animNodeProfileTimerMode = {}

---@class animParentStaticSwitchBranch
---@field None animParentStaticSwitchBranch 0
---@field TrueBranch animParentStaticSwitchBranch 1
---@field FalseBranch animParentStaticSwitchBranch 2
animParentStaticSwitchBranch = {}

---@class animPendulumConstraintType
---@field Cone animPendulumConstraintType 0
---@field HingePlane animPendulumConstraintType 1
---@field HalfCone animPendulumConstraintType 2
animPendulumConstraintType = {}

---@class animPendulumProjectionType
---@field Disabled animPendulumProjectionType 0
---@field ShortestPathRotational animPendulumProjectionType 1
---@field DirectedRotational animPendulumProjectionType 2
animPendulumProjectionType = {}

---@class animPositionProjectionType
---@field Disabled animPositionProjectionType 0
---@field ShortestPath animPositionProjectionType 1
---@field Directional animPositionProjectionType 2
animPositionProjectionType = {}

---@class animQuaternionInterpolationType
---@field Linear animQuaternionInterpolationType 0
---@field Spherical animQuaternionInterpolationType 1
animQuaternionInterpolationType = {}

---@class animSetBoneTransformEntry_SetMethod
---@field NoSnapping animSetBoneTransformEntry_SetMethod 0
---@field WholeTransform animSetBoneTransformEntry_SetMethod 1
---@field TranslationOnly animSetBoneTransformEntry_SetMethod 2
---@field RotationOnly animSetBoneTransformEntry_SetMethod 3
animSetBoneTransformEntry_SetMethod = {}

---@class animSpringProjectionType
---@field Disabled animSpringProjectionType 0
---@field ShortestPath animSpringProjectionType 1
animSpringProjectionType = {}

---@class animStackTransformsExtender_SnapToBoneMethod
---@field NoSnapping animStackTransformsExtender_SnapToBoneMethod 0
---@field WholeTransform animStackTransformsExtender_SnapToBoneMethod 1
---@field TranslationOnly animStackTransformsExtender_SnapToBoneMethod 2
---@field RotationOnly animStackTransformsExtender_SnapToBoneMethod 3
animStackTransformsExtender_SnapToBoneMethod = {}

---@class animStanceState
---@field Stand animStanceState 0
---@field Crouch animStanceState 1
---@field Kneel animStanceState 2
---@field Cover animStanceState 3
---@field Swim animStanceState 4
---@field Crawl animStanceState 5
animStanceState = {}

---@class animStateTag
---@field ST_Invalid animStateTag 0
---@field Idle animStateTag 1
---@field Cover animStateTag 2
animStateTag = {}

---@class animTransformChannel
---@field PosX animTransformChannel 0
---@field PosY animTransformChannel 1
---@field PosZ animTransformChannel 2
---@field RotX animTransformChannel 3
---@field RotY animTransformChannel 4
---@field RotZ animTransformChannel 5
---@field ScaleX animTransformChannel 6
---@field ScaleY animTransformChannel 7
---@field ScaleZ animTransformChannel 8
animTransformChannel = {}

---@class animVectorCoordinateType
---@field X animVectorCoordinateType 0
---@field Y animVectorCoordinateType 1
---@field Z animVectorCoordinateType 2
---@field W animVectorCoordinateType 3
animVectorCoordinateType = {}

---@class animWeaponOwnerType
---@field Player animWeaponOwnerType 0
---@field NPC animWeaponOwnerType 1
---@field None animWeaponOwnerType 2
animWeaponOwnerType = {}

---@class animcompressionBufferTypePreset
---@field Spline animcompressionBufferTypePreset 0
---@field SIMD animcompressionBufferTypePreset 1
---@field TestRaw animcompressionBufferTypePreset 2
animcompressionBufferTypePreset = {}

---@class animcompressionFrameratePreset
---@field USE_30_HZ animcompressionFrameratePreset 0
---@field USE_15_HZ animcompressionFrameratePreset 1
---@field USE_10_HZ animcompressionFrameratePreset 2
animcompressionFrameratePreset = {}

---@class animcompressionQualityPreset
---@field CINEMATIC_HIGH animcompressionQualityPreset 3
---@field HIGH animcompressionQualityPreset 0
---@field MID animcompressionQualityPreset 1
---@field LOW animcompressionQualityPreset 2
animcompressionQualityPreset = {}

---@class audioAdvertIndoorFilter
---@field Always audioAdvertIndoorFilter 0
---@field OnlyIndoor audioAdvertIndoorFilter 1
---@field OnlyOutdoor audioAdvertIndoorFilter 2
audioAdvertIndoorFilter = {}

---@class audioAmbientGroupingVariant
---@field AllEntities audioAmbientGroupingVariant 0
---@field IndoorEntities audioAmbientGroupingVariant 1
---@field OutdoorEntities audioAmbientGroupingVariant 2
---@field AllEntitiesAllDirections audioAmbientGroupingVariant 3
---@field IndoorAllDirections audioAmbientGroupingVariant 4
---@field OutdoorAllDirections audioAmbientGroupingVariant 5
audioAmbientGroupingVariant = {}

---@class audioAudioEventFlags
---@field NoEventFlags audioAudioEventFlags 0
---@field SloMoOnly audioAudioEventFlags 1
---@field Music audioAudioEventFlags 2
---@field Unique audioAudioEventFlags 4
---@field Metadata audioAudioEventFlags 8
audioAudioEventFlags = {}

---@class audioAudioVehicleCurve
---@field ThrottleInput audioAudioVehicleCurve 0
---@field RPM audioAudioVehicleCurve 1
---@field Gear audioAudioVehicleCurve 2
audioAudioVehicleCurve = {}

---@class audioBreathingTransitionComparator
---@field Less audioBreathingTransitionComparator 0
---@field Equal audioBreathingTransitionComparator 1
---@field Greater audioBreathingTransitionComparator 2
audioBreathingTransitionComparator = {}

---@class audioBreathingTransitionType
---@field PlayerSpeed audioBreathingTransitionType 0
---@field Event audioBreathingTransitionType 1
---@field AllEventTags audioBreathingTransitionType 2
---@field AnyEventTag audioBreathingTransitionType 3
audioBreathingTransitionType = {}

---@class audioClassificationMethod
---@field HasAnyTag audioClassificationMethod 0
---@field HasAllTags audioClassificationMethod 1
---@field NameEquals audioClassificationMethod 2
---@field EventNameEquals audioClassificationMethod 3
---@field HasAllEventTags audioClassificationMethod 4
audioClassificationMethod = {}

---@class audioConversationSavingStrategy
---@field Default audioConversationSavingStrategy 0
---@field Save audioConversationSavingStrategy 1
---@field DontSave audioConversationSavingStrategy 2
audioConversationSavingStrategy = {}

---@class audioDynamicReverbType
---@field Dynamic audioDynamicReverbType 0
---@field StaticSmall audioDynamicReverbType 1
---@field EnvironmentSmallStaticMedium audioDynamicReverbType 2
---@field DynamicSource audioDynamicReverbType 3
audioDynamicReverbType = {}

---@class audioESoundCurveType
---@field Log3 audioESoundCurveType 0
---@field Sine audioESoundCurveType 1
---@field InversedSCurve audioESoundCurveType 3
---@field Linear audioESoundCurveType 4
---@field SCurve audioESoundCurveType 5
---@field Exp1 audioESoundCurveType 6
---@field ReciprocalOfSineCurve audioESoundCurveType 7
---@field Exp3 audioESoundCurveType 8
audioESoundCurveType = {}

---@class audioEchoPositionType
---@field DynamicEnvironment audioEchoPositionType 0
---@field Simple audioEchoPositionType 1
audioEchoPositionType = {}

---@class audioEnemyState
---@field InCombat audioEnemyState 0
---@field Alerted audioEnemyState 1
---@field Afraid audioEnemyState 2
---@field Alive audioEnemyState 3
---@field Dead audioEnemyState 4
audioEnemyState = {}

---@class audioEntityEmitterContextType
---@field Entity_Emitter audioEntityEmitterContextType 0
---@field Radio_Emitter audioEntityEmitterContextType 2
audioEntityEmitterContextType = {}

---@class audioEventActionType
---@field Play audioEventActionType 0
---@field PlayAnimation audioEventActionType 1
---@field SetParameter audioEventActionType 2
---@field StopSound audioEventActionType 3
---@field SetSwitch audioEventActionType 4
---@field StopTagged audioEventActionType 5
---@field PlayExternal audioEventActionType 6
---@field Tag audioEventActionType 7
---@field Untag audioEventActionType 8
---@field SetAppearanceName audioEventActionType 9
---@field SetEntityName audioEventActionType 10
---@field AddContainerStreamingPrefetch audioEventActionType 11
---@field RemoveContainerStreamingPrefetch audioEventActionType 12
audioEventActionType = {}

---@class audioFoleyActionType
---@field FastHeavy audioFoleyActionType 0
---@field FastMedium audioFoleyActionType 1
---@field FastLight audioFoleyActionType 2
---@field NormalHeavy audioFoleyActionType 3
---@field NormalMedium audioFoleyActionType 4
---@field NormalLight audioFoleyActionType 5
---@field SlowHeavy audioFoleyActionType 6
---@field SlowMedium audioFoleyActionType 7
---@field SlowLight audioFoleyActionType 8
---@field Walk audioFoleyActionType 9
---@field Run audioFoleyActionType 10
audioFoleyActionType = {}

---@class audioFoleyItemPriority
---@field P0 audioFoleyItemPriority 0
---@field P1 audioFoleyItemPriority 1
---@field P2 audioFoleyItemPriority 2
---@field P3 audioFoleyItemPriority 3
---@field P4 audioFoleyItemPriority 4
---@field P5 audioFoleyItemPriority 5
---@field P6 audioFoleyItemPriority 6
audioFoleyItemPriority = {}

---@class audioFoleyItemType
---@field Jacket audioFoleyItemType 0
---@field Top audioFoleyItemType 1
---@field Bottom audioFoleyItemType 2
---@field Jewelry audioFoleyItemType 3
audioFoleyItemType = {}

---@class audioGameplayTier
---@field Undefined audioGameplayTier 0
---@field Tier1_FullGameplay audioGameplayTier 1
---@field Tier2_StagedGameplay audioGameplayTier 2
---@field Tier3_LimitedGameplay audioGameplayTier 3
---@field Tier4_FPPCinematic audioGameplayTier 4
---@field Tier5_Cinematic audioGameplayTier 5
audioGameplayTier = {}

---@class audioMaterialHardnessOverride
---@field None audioMaterialHardnessOverride 0
---@field SetAsSoft audioMaterialHardnessOverride 1
---@field SetAsSolid audioMaterialHardnessOverride 2
---@field SetAsHard audioMaterialHardnessOverride 3
audioMaterialHardnessOverride = {}

---@class audioMeleeHitPerMaterialType
---@field Light audioMeleeHitPerMaterialType 0
---@field Light_Hard audioMeleeHitPerMaterialType 1
---@field Light_Soft audioMeleeHitPerMaterialType 2
---@field Light_Solid audioMeleeHitPerMaterialType 3
---@field Light_Flesh audioMeleeHitPerMaterialType 4
---@field Light_Flesh_Head audioMeleeHitPerMaterialType 5
---@field Light_Robot audioMeleeHitPerMaterialType 6
---@field Light_Robot_Head audioMeleeHitPerMaterialType 7
---@field Light_Android audioMeleeHitPerMaterialType 8
---@field Light_Android_Head audioMeleeHitPerMaterialType 9
---@field Light_Mech audioMeleeHitPerMaterialType 10
---@field Light_Mech_Head audioMeleeHitPerMaterialType 11
---@field Light_Water audioMeleeHitPerMaterialType 12
---@field Normal audioMeleeHitPerMaterialType 13
---@field Normal_Hard audioMeleeHitPerMaterialType 14
---@field Normal_Soft audioMeleeHitPerMaterialType 15
---@field Normal_Solid audioMeleeHitPerMaterialType 16
---@field Normal_Flesh audioMeleeHitPerMaterialType 17
---@field Normal_Flesh_Head audioMeleeHitPerMaterialType 18
---@field Normal_Robot audioMeleeHitPerMaterialType 19
---@field Normal_Robot_Head audioMeleeHitPerMaterialType 20
---@field Normal_Android audioMeleeHitPerMaterialType 21
---@field Normal_Android_Head audioMeleeHitPerMaterialType 22
---@field Normal_Mech audioMeleeHitPerMaterialType 23
---@field Normal_Mech_Head audioMeleeHitPerMaterialType 24
---@field Normal_Water audioMeleeHitPerMaterialType 25
---@field Heavy audioMeleeHitPerMaterialType 26
---@field Heavy_Hard audioMeleeHitPerMaterialType 27
---@field Heavy_Soft audioMeleeHitPerMaterialType 28
---@field Heavy_Solid audioMeleeHitPerMaterialType 29
---@field Heavy_Flesh audioMeleeHitPerMaterialType 30
---@field Heavy_Flesh_Head audioMeleeHitPerMaterialType 31
---@field Heavy_Robot audioMeleeHitPerMaterialType 32
---@field Heavy_Robot_Head audioMeleeHitPerMaterialType 33
---@field Heavy_Android audioMeleeHitPerMaterialType 34
---@field Heavy_Android_Head audioMeleeHitPerMaterialType 35
---@field Heavy_Mech audioMeleeHitPerMaterialType 36
---@field Heavy_Mech_Head audioMeleeHitPerMaterialType 37
---@field Heavy_Water audioMeleeHitPerMaterialType 38
---@field Slash audioMeleeHitPerMaterialType 39
---@field Slash_Hard audioMeleeHitPerMaterialType 40
---@field Slash_Soft audioMeleeHitPerMaterialType 41
---@field Slash_Solid audioMeleeHitPerMaterialType 42
---@field Slash_Flesh audioMeleeHitPerMaterialType 43
---@field Slash_Flesh_Head audioMeleeHitPerMaterialType 44
---@field Slash_Robot audioMeleeHitPerMaterialType 45
---@field Slash_Robot_Head audioMeleeHitPerMaterialType 46
---@field Slash_Android audioMeleeHitPerMaterialType 47
---@field Slash_Android_Head audioMeleeHitPerMaterialType 48
---@field Slash_Mech audioMeleeHitPerMaterialType 49
---@field Slash_Mech_Head audioMeleeHitPerMaterialType 50
---@field Slash_Water audioMeleeHitPerMaterialType 51
---@field Cut audioMeleeHitPerMaterialType 52
---@field Cut_Hard audioMeleeHitPerMaterialType 53
---@field Cut_Soft audioMeleeHitPerMaterialType 54
---@field Cut_Solid audioMeleeHitPerMaterialType 55
---@field Cut_Flesh audioMeleeHitPerMaterialType 56
---@field Cut_Flesh_Head audioMeleeHitPerMaterialType 57
---@field Cut_Robot audioMeleeHitPerMaterialType 58
---@field Cut_Robot_Head audioMeleeHitPerMaterialType 59
---@field Cut_Android audioMeleeHitPerMaterialType 60
---@field Cut_Android_Head audioMeleeHitPerMaterialType 61
---@field Cut_Mech audioMeleeHitPerMaterialType 62
---@field Cut_Mech_Head audioMeleeHitPerMaterialType 63
---@field Cut_Water audioMeleeHitPerMaterialType 64
---@field Stab audioMeleeHitPerMaterialType 65
---@field Stab_Hard audioMeleeHitPerMaterialType 66
---@field Stab_Soft audioMeleeHitPerMaterialType 67
---@field Stab_Solid audioMeleeHitPerMaterialType 68
---@field Stab_Flesh audioMeleeHitPerMaterialType 69
---@field Stab_Flesh_Head audioMeleeHitPerMaterialType 70
---@field Stab_Robot audioMeleeHitPerMaterialType 71
---@field Stab_Robot_Head audioMeleeHitPerMaterialType 72
---@field Stab_Android audioMeleeHitPerMaterialType 73
---@field Stab_Android_Head audioMeleeHitPerMaterialType 74
---@field Stab_Mech audioMeleeHitPerMaterialType 75
---@field Stab_Mech_Head audioMeleeHitPerMaterialType 76
---@field Stab_Water audioMeleeHitPerMaterialType 77
---@field Finisher audioMeleeHitPerMaterialType 78
---@field Finisher_Hard audioMeleeHitPerMaterialType 79
---@field Finisher_Soft audioMeleeHitPerMaterialType 80
---@field Finisher_Solid audioMeleeHitPerMaterialType 81
---@field Finisher_Flesh audioMeleeHitPerMaterialType 82
---@field Finisher_Flesh_Head audioMeleeHitPerMaterialType 83
---@field Finisher_Robot audioMeleeHitPerMaterialType 84
---@field Finisher_Robot_Head audioMeleeHitPerMaterialType 85
---@field Finisher_Android audioMeleeHitPerMaterialType 86
---@field Finisher_Android_Head audioMeleeHitPerMaterialType 87
---@field Finisher_Mech audioMeleeHitPerMaterialType 88
---@field Finisher_Mech_Head audioMeleeHitPerMaterialType 89
---@field Finisher_Water audioMeleeHitPerMaterialType 90
---@field Weak audioMeleeHitPerMaterialType 91
---@field Weak_Hard audioMeleeHitPerMaterialType 92
---@field Weak_Soft audioMeleeHitPerMaterialType 93
---@field Weak_Solid audioMeleeHitPerMaterialType 94
---@field Weak_Flesh audioMeleeHitPerMaterialType 95
---@field Weak_Flesh_Head audioMeleeHitPerMaterialType 96
---@field Weak_Robot audioMeleeHitPerMaterialType 97
---@field Weak_Robot_Head audioMeleeHitPerMaterialType 98
---@field Weak_Android audioMeleeHitPerMaterialType 99
---@field Weak_Android_Head audioMeleeHitPerMaterialType 100
---@field Weak_Mech audioMeleeHitPerMaterialType 101
---@field Weak_Mech_Head audioMeleeHitPerMaterialType 102
---@field Weak_Water audioMeleeHitPerMaterialType 103
---@field Throw audioMeleeHitPerMaterialType 104
---@field Throw_Hard audioMeleeHitPerMaterialType 105
---@field Throw_Soft audioMeleeHitPerMaterialType 106
---@field Throw_Solid audioMeleeHitPerMaterialType 107
---@field Throw_Flesh audioMeleeHitPerMaterialType 108
---@field Throw_Flesh_Head audioMeleeHitPerMaterialType 109
---@field Throw_Robot audioMeleeHitPerMaterialType 110
---@field Throw_Robot_Head audioMeleeHitPerMaterialType 111
---@field Throw_Android audioMeleeHitPerMaterialType 112
---@field Throw_Android_Head audioMeleeHitPerMaterialType 113
---@field Throw_Mech audioMeleeHitPerMaterialType 114
---@field Throw_Mech_Head audioMeleeHitPerMaterialType 115
---@field Throw_Water audioMeleeHitPerMaterialType 116
audioMeleeHitPerMaterialType = {}

---@class audioMeleeHitType
---@field Light audioMeleeHitType 0
---@field Normal audioMeleeHitType 1
---@field Heavy audioMeleeHitType 2
---@field Slash audioMeleeHitType 3
---@field Cut audioMeleeHitType 4
---@field Stab audioMeleeHitType 5
---@field Finisher audioMeleeHitType 6
---@field Weak audioMeleeHitType 7
---@field Throw audioMeleeHitType 8
audioMeleeHitType = {}

---@class audioMeleeMaterialType
---@field Hard audioMeleeMaterialType 0
---@field Soft audioMeleeMaterialType 1
---@field Solid audioMeleeMaterialType 2
---@field Flesh audioMeleeMaterialType 3
---@field Robot audioMeleeMaterialType 4
---@field Android audioMeleeMaterialType 5
---@field Mech audioMeleeMaterialType 6
---@field Water audioMeleeMaterialType 7
audioMeleeMaterialType = {}

---@class audioMixParamsAction
---@field Mull audioMixParamsAction 0
---@field MullPercent audioMixParamsAction 1
---@field MullComplemtement audioMixParamsAction 2
---@field MullComplemtementPercent audioMixParamsAction 3
---@field Add audioMixParamsAction 4
audioMixParamsAction = {}

---@class audioMixingActionType
---@field VoContext audioMixingActionType 0
---@field EmitterTag audioMixingActionType 1
---@field SoundTag audioMixingActionType 2
---@field ActorName audioMixingActionType 3
---@field DisableCombatVo audioMixingActionType 4
---@field GlobalParameter audioMixingActionType 5
audioMixingActionType = {}

---@class audioMusicSyncType
---@field Beat audioMusicSyncType 1
---@field Bar audioMusicSyncType 0
---@field Grid audioMusicSyncType 2
---@field User audioMusicSyncType 3
---@field EntryCue audioMusicSyncType 5
---@field ExitCue audioMusicSyncType 6
---@field Transition audioMusicSyncType 4
audioMusicSyncType = {}

---@class audioNumberComparer
---@field Equal audioNumberComparer 0
---@field NotEqual audioNumberComparer 1
---@field Greater audioNumberComparer 2
---@field GreaterOrEqual audioNumberComparer 3
---@field Lower audioNumberComparer 4
---@field LowerOrEqual audioNumberComparer 5
audioNumberComparer = {}

---@class audioNumberOperation
---@field SetEqual audioNumberOperation 0
---@field Add audioNumberOperation 1
---@field Subtract audioNumberOperation 2
---@field MultiplyBy audioNumberOperation 3
---@field DivideBy audioNumberOperation 4
audioNumberOperation = {}

---@class audioObstructionTestPattern
---@field Direct audioObstructionTestPattern 0
---@field Cone audioObstructionTestPattern 1
audioObstructionTestPattern = {}

---@class audioObstructionTestType
---@field SingleShot audioObstructionTestType 0
---@field Continuous audioObstructionTestType 1
audioObstructionTestType = {}

---@class audioRadioSoundType
---@field Song audioRadioSoundType 0
---@field AnnouncementScene audioRadioSoundType 1
audioRadioSoundType = {}

---@class audioRadioSpeakerType
---@field Stanley audioRadioSpeakerType 0
---@field MaximumMike audioRadioSpeakerType 1
---@field PoliceDispatch audioRadioSpeakerType 2
audioRadioSpeakerType = {}

---@class audioReflectionVariant
---@field WorldSpaceFixedDrections audioReflectionVariant 0
---@field LocalSpaceFixedDirections audioReflectionVariant 1
---@field FindingMaximumFaceAlignemnt audioReflectionVariant 2
---@field LocalSpaceSideDirections audioReflectionVariant 3
---@field FindingMaximumFaceAligment2Sides audioReflectionVariant 4
audioReflectionVariant = {}

---@class audioTriggerEffectMode
---@field Off audioTriggerEffectMode 0
---@field Feedback audioTriggerEffectMode 1
---@field Weapon audioTriggerEffectMode 2
---@field Vibration audioTriggerEffectMode 3
audioTriggerEffectMode = {}

---@class audioTriggerEffectTarget
---@field L2 audioTriggerEffectTarget 0
---@field R2 audioTriggerEffectTarget 1
---@field Both audioTriggerEffectTarget 2
audioTriggerEffectTarget = {}

---@class audioVoBarkType
---@field None audioVoBarkType 0
---@field Curse audioVoBarkType 1
---@field Morale audioVoBarkType 2
---@field Combat_Aggro audioVoBarkType 3
---@field Combat_Despair audioVoBarkType 4
---@field Stealth_Curious audioVoBarkType 5
audioVoBarkType = {}

---@class audioVoCpoCharacter
---@field None audioVoCpoCharacter 0
---@field Solo audioVoCpoCharacter 1
---@field Assassin audioVoCpoCharacter 2
---@field Techie audioVoCpoCharacter 3
---@field Netrunner audioVoCpoCharacter 4
audioVoCpoCharacter = {}

---@class audioVoGruntInterruptMode
---@field DontInterrupt audioVoGruntInterruptMode 0
---@field PlayOnlyOnInterrupt audioVoGruntInterruptMode 1
---@field CanInterrupt audioVoGruntInterruptMode 2
audioVoGruntInterruptMode = {}

---@class audioVoGruntType
---@field None audioVoGruntType -1
---@field PainShort audioVoGruntType 23
---@field PainLong audioVoGruntType 0
---@field AgroShort audioVoGruntType 1
---@field AgroLong audioVoGruntType 2
---@field Effort audioVoGruntType 25
---@field LongFall audioVoGruntType 3
---@field Death audioVoGruntType 4
---@field SilentDeath audioVoGruntType 5
---@field Grapple audioVoGruntType 6
---@field GrappleMovement audioVoGruntType 7
---@field EnvironmentalKnockdown audioVoGruntType 8
---@field Bump audioVoGruntType 9
---@field Curious audioVoGruntType 10
---@field Fear audioVoGruntType 11
---@field Jump audioVoGruntType 12
---@field EffortLong audioVoGruntType 13
---@field DeathShort audioVoGruntType 14
---@field Greet audioVoGruntType 15
---@field LaughHard audioVoGruntType 16
---@field LaughSoft audioVoGruntType 17
---@field Phone audioVoGruntType 18
---@field BraindanceExcited audioVoGruntType 19
---@field BraindanceFearful audioVoGruntType 20
---@field BraindanceNeutral audioVoGruntType 21
---@field BraindanceSexual audioVoGruntType 22
audioVoGruntType = {}

---@class audioWeaponBulletType
---@field standard audioWeaponBulletType 0
---@field sniper audioWeaponBulletType 1
---@field shot audioWeaponBulletType 2
---@field rail audioWeaponBulletType 3
---@field automatic audioWeaponBulletType 4
---@field smart audioWeaponBulletType 5
---@field smart_sniper audioWeaponBulletType 6
---@field hmg audioWeaponBulletType 7
audioWeaponBulletType = {}

---@class audioWeaponShellCasingDirection
---@field rightFront audioWeaponShellCasingDirection 0
---@field rightBack audioWeaponShellCasingDirection 1
---@field leftFront audioWeaponShellCasingDirection 2
---@field leftBack audioWeaponShellCasingDirection 3
audioWeaponShellCasingDirection = {}

---@class audioWeaponShellCasingMode
---@field none audioWeaponShellCasingMode 0
---@field onShoot audioWeaponShellCasingMode 1
---@field onReload audioWeaponShellCasingMode 2
audioWeaponShellCasingMode = {}

---@class audioWeaponShellCasingType
---@field standard audioWeaponShellCasingType 0
---@field large audioWeaponShellCasingType 1
---@field cartridge audioWeaponShellCasingType 2
audioWeaponShellCasingType = {}

---@class audioWeaponTailEnvironment
---@field InteriorDefault audioWeaponTailEnvironment 0
---@field InteriorWide audioWeaponTailEnvironment 1
---@field ExteriorWide audioWeaponTailEnvironment 2
---@field ExteriorUrbanNarrow audioWeaponTailEnvironment 3
---@field ExteriorUrbanStreet audioWeaponTailEnvironment 4
---@field ExteriorUrbanStreetWide audioWeaponTailEnvironment 5
---@field ExteriorUrbanOpen audioWeaponTailEnvironment 6
---@field ExteriorUrbanEnclosed audioWeaponTailEnvironment 7
---@field ExteriorBadlandsOpen audioWeaponTailEnvironment 8
---@field ExteriorBadlandsCanyon audioWeaponTailEnvironment 9
audioWeaponTailEnvironment = {}

---@class audiobreathingEventTag
---@field Walk audiobreathingEventTag 0
---@field Jog audiobreathingEventTag 1
---@field Run audiobreathingEventTag 2
---@field Sneak audiobreathingEventTag 3
---@field Cloth audiobreathingEventTag 4
---@field FootStepRegular audiobreathingEventTag 5
---@field FootStepSprint audiobreathingEventTag 6
---@field LandingRegular audiobreathingEventTag 7
---@field LandingHard audiobreathingEventTag 8
---@field LandingVeryHard audiobreathingEventTag 9
---@field Climb audiobreathingEventTag 10
---@field Jump audiobreathingEventTag 11
---@field Player audiobreathingEventTag 12
---@field Stop audiobreathingEventTag 13
---@field Drop_Body audiobreathingEventTag 14
---@field Pick_Up_Body audiobreathingEventTag 15
---@field Standing_Event audiobreathingEventTag 16
audiobreathingEventTag = {}

---@class audiobreathingLoopBehavior
---@field TimedBreathing audiobreathingLoopBehavior 0
---@field BreathEvery2ndStep audiobreathingLoopBehavior 1
---@field BreathEveryStep audiobreathingLoopBehavior 2
---@field HoldingBreath audiobreathingLoopBehavior 3
audiobreathingLoopBehavior = {}

---@class audiottsvoicesFemale
---@field Olivia audiottsvoicesFemale 7
---@field Emily audiottsvoicesFemale 8
---@field Jessica audiottsvoicesFemale 9
---@field Sophie audiottsvoicesFemale 10
---@field Elizabeth audiottsvoicesFemale 11
---@field Carolina audiottsvoicesFemale 12
---@field Sarah audiottsvoicesFemale 13
audiottsvoicesFemale = {}

---@class audiottsvoicesMale
---@field Andrew audiottsvoicesMale 0
---@field Oliver audiottsvoicesMale 1
---@field Jack audiottsvoicesMale 2
---@field Harry audiottsvoicesMale 3
---@field Simon audiottsvoicesMale 4
---@field Charlie audiottsvoicesMale 5
---@field Thomas audiottsvoicesMale 6
audiottsvoicesMale = {}

---@class audiottsvoicesPolishFemale
---@field Iwona audiottsvoicesPolishFemale 16
---@field Paulina audiottsvoicesPolishFemale 17
audiottsvoicesPolishFemale = {}

---@class audiottsvoicesPolishMale
---@field Mateusz audiottsvoicesPolishMale 14
---@field Pawel audiottsvoicesPolishMale 15
audiottsvoicesPolishMale = {}

---@class braindanceVisionMode
---@field Default braindanceVisionMode 0
---@field Audio braindanceVisionMode 1
---@field Thermal braindanceVisionMode 2
braindanceVisionMode = {}

---@class communityECommunitySpawnTime
---@field Morning communityECommunitySpawnTime 0
---@field Day communityECommunitySpawnTime 1
---@field Evening communityECommunitySpawnTime 2
---@field Night communityECommunitySpawnTime 3
---@field Midnight communityECommunitySpawnTime 4
---@field 1_00 communityECommunitySpawnTime 5
---@field 2_00 communityECommunitySpawnTime 6
---@field 3_00 communityECommunitySpawnTime 7
---@field 4_00 communityECommunitySpawnTime 8
---@field 5_00 communityECommunitySpawnTime 9
---@field 6_00 communityECommunitySpawnTime 10
---@field 7_00 communityECommunitySpawnTime 11
---@field 8_00 communityECommunitySpawnTime 12
---@field 9_00 communityECommunitySpawnTime 13
---@field 10_00 communityECommunitySpawnTime 14
---@field 11_00 communityECommunitySpawnTime 15
---@field 12_00___Noon communityECommunitySpawnTime 16
---@field 13_00 communityECommunitySpawnTime 17
---@field 14_00 communityECommunitySpawnTime 18
---@field 15_00 communityECommunitySpawnTime 19
---@field 16_00 communityECommunitySpawnTime 20
---@field 17_00 communityECommunitySpawnTime 21
---@field 18_00 communityECommunitySpawnTime 22
---@field 19_00 communityECommunitySpawnTime 23
---@field 20_00 communityECommunitySpawnTime 24
---@field 21_00 communityECommunitySpawnTime 25
---@field 22_00 communityECommunitySpawnTime 26
---@field 23_00 communityECommunitySpawnTime 27
communityECommunitySpawnTime = {}

---@class communityESquadType
---@field Global communityESquadType 0
---@field Community communityESquadType 1
---@field Security communityESquadType 2
---@field Unknown communityESquadType 3
communityESquadType = {}

---@class coverLeanDirection
---@field Top coverLeanDirection 0
---@field Left coverLeanDirection 1
---@field Right coverLeanDirection 2
coverLeanDirection = {}

---@class curveEInterpolationType
---@field EIT_Constant curveEInterpolationType 0
---@field EIT_Linear curveEInterpolationType 1
---@field EIT_BezierQuadratic curveEInterpolationType 2
---@field EIT_BezierCubic curveEInterpolationType 3
---@field EIT_Hermite curveEInterpolationType 4
curveEInterpolationType = {}

---@class curveESegmentsLinkType
---@field ESLT_Normal curveESegmentsLinkType 0
---@field ESLT_Smooth curveESegmentsLinkType 1
---@field ESLT_SmoothSymmetric curveESegmentsLinkType 2
curveESegmentsLinkType = {}

---@class damageSystemLogFlags
---@field GENERAL damageSystemLogFlags 1
---@field ASSERT damageSystemLogFlags 2
---@field WEAKSPOTS damageSystemLogFlags 4
damageSystemLogFlags = {}

---@class entAnimParamSlotFunction
---@field RenderingPlane entAnimParamSlotFunction 0
---@field Visibility entAnimParamSlotFunction 1
entAnimParamSlotFunction = {}

---@class entAppearanceStatus
---@field None entAppearanceStatus 0
---@field Proxy entAppearanceStatus 1
---@field Appearance entAppearanceStatus 2
entAppearanceStatus = {}

---@class entAttachmentTarget
---@field Transform entAttachmentTarget 0
---@field TargetPosition entAttachmentTarget 1
entAttachmentTarget = {}

---@class entAudioDismembermentPart
---@field Head entAudioDismembermentPart 0
---@field Leg entAudioDismembermentPart 1
---@field Arm entAudioDismembermentPart 2
entAudioDismembermentPart = {}

---@class entDebug_ShapeType
---@field Sphere entDebug_ShapeType 0
---@field Box entDebug_ShapeType 1
---@field Capsule entDebug_ShapeType 2
---@field Cylinder entDebug_ShapeType 3
entDebug_ShapeType = {}

---@class entEBindingDirection
---@field BindToSource entEBindingDirection 0
---@field BindToDestination entEBindingDirection 1
entEBindingDirection = {}

---@class entEntitySpawnPriority
---@field Background entEntitySpawnPriority 0
---@field Normal entEntitySpawnPriority 1
---@field Immediate entEntitySpawnPriority 2
---@field Paramount entEntitySpawnPriority 3
---@field Critical entEntitySpawnPriority 4
entEntitySpawnPriority = {}

---@class entEntityUserComponentResolutionMode
---@field Select entEntityUserComponentResolutionMode 0
---@field Suppress entEntityUserComponentResolutionMode 1
entEntityUserComponentResolutionMode = {}

---@class entForcedLodDistance
---@field Default entForcedLodDistance 0
---@field Background entForcedLodDistance 1
---@field Regular entForcedLodDistance 2
---@field Cinematic entForcedLodDistance 3
---@field Vehicle entForcedLodDistance 4
---@field CinematicVehicle entForcedLodDistance 5
---@field VehicleInterior entForcedLodDistance 6
---@field LargeVehicleInterior entForcedLodDistance 7
---@field ConsoleLOD entForcedLodDistance 8
entForcedLodDistance = {}

---@class entMeshComponentLODMode
---@field AlwaysVisible entMeshComponentLODMode 0
---@field Appearance entMeshComponentLODMode 1
---@field AppearanceProxy entMeshComponentLODMode 2
entMeshComponentLODMode = {}

---@class entRenderToTextureMode
---@field Shaded entRenderToTextureMode 0
---@field GBufferOnly entRenderToTextureMode 1
entRenderToTextureMode = {}

---@class entRepellingShape
---@field Sphere entRepellingShape 0
---@field Capsule entRepellingShape 1
entRepellingShape = {}

---@class entRepellingType
---@field Debris entRepellingType 0
---@field BigObjects entRepellingType 1
---@field WindImpulse entRepellingType 2
---@field WaterImpulse entRepellingType 3
entRepellingType = {}

---@class entTemplateComponentResolveMode
---@field AutoSelect entTemplateComponentResolveMode 0
---@field Select entTemplateComponentResolveMode 1
---@field Suppress entTemplateComponentResolveMode 2
entTemplateComponentResolveMode = {}

---@class entVertexAnimationMapperSourceType
---@field FloatTrack entVertexAnimationMapperSourceType 0
---@field TranslationX entVertexAnimationMapperSourceType 1
---@field TranslationY entVertexAnimationMapperSourceType 2
---@field TranslationZ entVertexAnimationMapperSourceType 3
---@field RotationQuatX entVertexAnimationMapperSourceType 4
---@field RotationQuatY entVertexAnimationMapperSourceType 5
---@field RotationQuatZ entVertexAnimationMapperSourceType 6
---@field RotationQuatW entVertexAnimationMapperSourceType 7
entVertexAnimationMapperSourceType = {}

---@class entVisibilityParamSource
---@field PhantomEntitySystem entVisibilityParamSource 7
entVisibilityParamSource = {}

---@class entdismembermentResourceSetE
---@field NONE entdismembermentResourceSetE 16
---@field BARE entdismembermentResourceSetE 0
---@field BARE1 entdismembermentResourceSetE 1
---@field BARE2 entdismembermentResourceSetE 2
---@field BARE3 entdismembermentResourceSetE 3
---@field GARMENT entdismembermentResourceSetE 4
---@field GARMENT1 entdismembermentResourceSetE 5
---@field GARMENT2 entdismembermentResourceSetE 6
---@field GARMENT3 entdismembermentResourceSetE 7
---@field CYBER entdismembermentResourceSetE 8
---@field CYBER1 entdismembermentResourceSetE 9
---@field CYBER2 entdismembermentResourceSetE 10
---@field CYBER3 entdismembermentResourceSetE 11
---@field MIXED entdismembermentResourceSetE 12
---@field MIXED1 entdismembermentResourceSetE 13
---@field MIXED2 entdismembermentResourceSetE 14
---@field MIXED3 entdismembermentResourceSetE 15
entdismembermentResourceSetE = {}

---@class entdismembermentSimulationTypeE
---@field NONE entdismembermentSimulationTypeE 0
---@field DANGLE entdismembermentSimulationTypeE 128
entdismembermentSimulationTypeE = {}

---@class entragdollActivationRequestType
---@field Default entragdollActivationRequestType 0
---@field Animated entragdollActivationRequestType 1
---@field Forced entragdollActivationRequestType 2
entragdollActivationRequestType = {}

---@class envUtilsNeighborMode
---@field eCLOSEST envUtilsNeighborMode 0
---@field eONLY_GLOBAL envUtilsNeighborMode 1
---@field eONLY_SELF envUtilsNeighborMode 2
---@field eFILL_SURROUNDING envUtilsNeighborMode 3
envUtilsNeighborMode = {}

---@class envUtilsReflectionProbeAmbientContributionMode
---@field eNO_AMBIENT_CONTRIBUTION envUtilsReflectionProbeAmbientContributionMode 0
---@field eALLOW_AMBIENT_CONTRIBUTION envUtilsReflectionProbeAmbientContributionMode 1
---@field eOVERRIDE_GI_AMBIENT envUtilsReflectionProbeAmbientContributionMode 2
envUtilsReflectionProbeAmbientContributionMode = {}

---@class gameAIDirectorTensionEventType
---@field Time gameAIDirectorTensionEventType 0
---@field Progress gameAIDirectorTensionEventType 1
---@field DealingDamage gameAIDirectorTensionEventType 2
---@field TakingDamage gameAIDirectorTensionEventType 3
---@field Kill gameAIDirectorTensionEventType 4
gameAIDirectorTensionEventType = {}

---@class gameAggregationType
---@field AND gameAggregationType 0
---@field OR gameAggregationType 1
gameAggregationType = {}

---@class gameAlwaysSpawnedState
---@field default__false_ gameAlwaysSpawnedState 0
---@field true gameAlwaysSpawnedState 1
---@field false gameAlwaysSpawnedState 2
gameAlwaysSpawnedState = {}

---@class gameAppearanceSource
---@field EntityResource gameAppearanceSource 0
---@field PopulationSpawner gameAppearanceSource 1
---@field CommunityEntry gameAppearanceSource 2
---@field CommunityAppearancePicker gameAppearanceSource 3
---@field TweakDBRecord gameAppearanceSource 4
---@field VisualTag gameAppearanceSource 5
---@field Invalid gameAppearanceSource 7
gameAppearanceSource = {}

---@class gameBinkVideoAction
---@field Undefined gameBinkVideoAction 0
---@field Start gameBinkVideoAction 1
---@field Stop gameBinkVideoAction 2
gameBinkVideoAction = {}

---@class gameBoolSignalAction
---@field None gameBoolSignalAction 0
---@field TurnOn gameBoolSignalAction 1
---@field TurnOff gameBoolSignalAction 2
gameBoolSignalAction = {}

---@class gameCameraCurve
---@field CentricPitchOfSpeed gameCameraCurve 0
---@field CentricVerticalOffsetOfSpeed gameCameraCurve 1
---@field BoomLengthOfSpeed gameCameraCurve 2
---@field BoomLengthOfAcc gameCameraCurve 3
---@field BoomPitchOfSpeed gameCameraCurve 4
---@field BoomPitchOfGlobalVehiclePitch gameCameraCurve 5
---@field BoomYawOfTurnCoeff gameCameraCurve 6
---@field BoomYawRotateRateOfSpeed gameCameraCurve 7
---@field FOVOfSpeed gameCameraCurve 8
---@field PivotOffsetXOfTurnCoeff gameCameraCurve 9
---@field PivotOffsetZOfTurnCoeff gameCameraCurve 10
---@field COUNT gameCameraCurve 11
gameCameraCurve = {}

---@class gameCityAreaType
---@field Undefined gameCityAreaType 0
---@field PublicZone gameCityAreaType 1
---@field SafeZone gameCityAreaType 2
---@field RestrictedZone gameCityAreaType 3
---@field DangerousZone gameCityAreaType 4
gameCityAreaType = {}

---@class gameCombinedStatOperation
---@field Addition gameCombinedStatOperation 0
---@field Subtraction gameCombinedStatOperation 1
---@field Multiplication gameCombinedStatOperation 2
---@field Division gameCombinedStatOperation 3
---@field Modulo gameCombinedStatOperation 4
---@field Invert gameCombinedStatOperation 5
---@field Count gameCombinedStatOperation 6
---@field Invalid gameCombinedStatOperation 7
gameCombinedStatOperation = {}

---@class gameComparisonType
---@field EQUAL gameComparisonType 0
---@field NOT_EQUAL gameComparisonType 1
---@field LESS gameComparisonType 2
---@field GREATER gameComparisonType 3
---@field LESS_OR_EQUAL gameComparisonType 4
---@field GREATER_OR_EQUAL gameComparisonType 5
gameComparisonType = {}

---@class gameContactType
---@field Caller gameContactType 0
---@field Texter gameContactType 1
gameContactType = {}

---@class gameCoverHeight
---@field Invalid gameCoverHeight 0
---@field Low gameCoverHeight 1
---@field High gameCoverHeight 2
gameCoverHeight = {}

---@class gameCrowdCreationDataMergeMode
---@field Average gameCrowdCreationDataMergeMode 0
---@field Override gameCrowdCreationDataMergeMode 1
gameCrowdCreationDataMergeMode = {}

---@class gameCrowdEntryType
---@field Pedestrian gameCrowdEntryType 0
---@field Vehicle gameCrowdEntryType 1
---@field AV gameCrowdEntryType 2
gameCrowdEntryType = {}

---@class gameDamageCallbackType
---@field HitTriggered gameDamageCallbackType 0
---@field HitReceived gameDamageCallbackType 1
---@field PipelineProcessed gameDamageCallbackType 2
---@field COUNT gameDamageCallbackType 3
---@field INVALID gameDamageCallbackType 4
gameDamageCallbackType = {}

---@class gameDamageListenerPipelineType
---@field None gameDamageListenerPipelineType 0
---@field Damage gameDamageListenerPipelineType 1
---@field ProjectedDamage gameDamageListenerPipelineType 2
---@field All gameDamageListenerPipelineType -1
gameDamageListenerPipelineType = {}

---@class gameDamagePipelineStage
---@field PreProcess gameDamagePipelineStage 0
---@field Process gameDamagePipelineStage 1
---@field PostProcess gameDamagePipelineStage 2
---@field COUNT gameDamagePipelineStage 3
---@field INVALID gameDamagePipelineStage 4
gameDamagePipelineStage = {}

---@class gameDebugViewETextAlignment
---@field Left gameDebugViewETextAlignment -1
---@field Center gameDebugViewETextAlignment 0
---@field Right gameDebugViewETextAlignment 1
gameDebugViewETextAlignment = {}

---@class gameDelayContext
---@field Standard_TD gameDelayContext 1
---@field Standard_ND gameDelayContext 2
---@field Quest_TD gameDelayContext 4
---@field SpawnManager_ND gameDelayContext 8
gameDelayContext = {}

---@class gameDifficulty
---@field Easy gameDifficulty 0
---@field Hard gameDifficulty 1
---@field VeryHard gameDifficulty 2
---@field Story gameDifficulty 3
gameDifficulty = {}

---@class gameDismBodyPart
---@field LEFT_LEG gameDismBodyPart 896
---@field RIGHT_LEG gameDismBodyPart 7168
---@field LEFT_ARM gameDismBodyPart 14
---@field RIGHT_ARM gameDismBodyPart 112
---@field HEAD gameDismBodyPart 1
---@field BODY gameDismBodyPart 8192
gameDismBodyPart = {}

---@class gameDismWoundType
---@field CLEAN gameDismWoundType 1
---@field COARSE gameDismWoundType 2
---@field HOLE gameDismWoundType 64
gameDismWoundType = {}

---@class gameEActionFlags
---@field NONE gameEActionFlags 0
---@field USE_ANIMATION gameEActionFlags 1
---@field USE_MOVEMENT gameEActionFlags 2
gameEActionFlags = {}

---@class gameEActionStatus
---@field STATUS_INVALID gameEActionStatus 0
---@field STATUS_BOUND gameEActionStatus 1
---@field STATUS_READY gameEActionStatus 2
---@field STATUS_PROGRESS gameEActionStatus 3
---@field STATUS_COMPLETE gameEActionStatus 4
---@field STATUS_FAILURE gameEActionStatus 5
gameEActionStatus = {}

---@class gameEAreaShape
---@field NONE gameEAreaShape 0
---@field SPHERE gameEAreaShape 1
---@field CUBE gameEAreaShape 2
---@field COUNT gameEAreaShape 3
gameEAreaShape = {}

---@class gameEAreaType
---@field NONE gameEAreaType 0
---@field LOCATION gameEAreaType 1
---@field AFFILIATION gameEAreaType 2
---@field COUNT gameEAreaType 3
gameEAreaType = {}

---@class gameECharacterStance
---@field Stance_Stand gameECharacterStance 0
---@field Stance_Crouch gameECharacterStance 1
---@field Stance_Kneel gameECharacterStance 2
---@field Stance_Cover gameECharacterStance 3
---@field Stance_Standing_Cover gameECharacterStance 4
---@field Stance_Crouching_Cover gameECharacterStance 5
gameECharacterStance = {}

---@class gameEContinuousMode
---@field None gameEContinuousMode 0
---@field Start gameEContinuousMode 1
---@field Stop gameEContinuousMode 2
gameEContinuousMode = {}

---@class gameEEquipmentManagerState
---@field InfiniteAmmo gameEEquipmentManagerState 1
gameEEquipmentManagerState = {}

---@class gameEHotkey
---@field INVALID gameEHotkey -1
---@field DPAD_UP gameEHotkey 0
---@field DPAD_DOWN gameEHotkey 1
---@field DPAD_RIGHT gameEHotkey 2
---@field RB gameEHotkey 3
gameEHotkey = {}

---@class gameEInventoryFlags
---@field MustSave gameEInventoryFlags 1
gameEInventoryFlags = {}

---@class gameEItemIDFlag
---@field Preview gameEItemIDFlag 1
gameEItemIDFlag = {}

---@class gameELootGenerationType
---@field DropChance gameELootGenerationType 0
---@field NumberBased gameELootGenerationType 1
---@field Weights gameELootGenerationType 2
---@field Count gameELootGenerationType 3
gameELootGenerationType = {}

---@class gameEMaterialZone
---@field Zero gameEMaterialZone 0
---@field One gameEMaterialZone 1
---@field Two gameEMaterialZone 2
---@field Three gameEMaterialZone 3
gameEMaterialZone = {}

---@class gameEPrerequisiteType
---@field None gameEPrerequisiteType 0
---@field NestedPrereq gameEPrerequisiteType 1
---@field StatValue gameEPrerequisiteType 2
---@field StatPoolValue gameEPrerequisiteType 3
---@field HealthAbsolute gameEPrerequisiteType 4
---@field HealthPercent gameEPrerequisiteType 5
---@field ItemInInventory gameEPrerequisiteType 6
---@field ItemEquipped gameEPrerequisiteType 7
---@field ItemCount gameEPrerequisiteType 8
---@field QuestAchieved gameEPrerequisiteType 9
---@field WasScanned gameEPrerequisiteType 10
---@field Attitude gameEPrerequisiteType 11
---@field Count gameEPrerequisiteType 12
gameEPrerequisiteType = {}

---@class gameESlotState
---@field Taken gameESlotState 0
---@field Empty gameESlotState 1
---@field Available gameESlotState 2
gameESlotState = {}

---@class gameEStatFlags
---@field Bool gameEStatFlags 1
---@field EquipOnPlayer gameEStatFlags 2
---@field EquipOnNPC gameEStatFlags 4
---@field ExcludeRootCombination gameEStatFlags 8
gameEStatFlags = {}

---@class gameEStatProviderDataSource
---@field gameItemData gameEStatProviderDataSource 0
---@field InventoryItemData gameEStatProviderDataSource 1
---@field InnerItemData gameEStatProviderDataSource 2
---@field Invalid gameEStatProviderDataSource 3
gameEStatProviderDataSource = {}

---@class gameEffectAction_KillFXAction
---@field Stop gameEffectAction_KillFXAction 0
---@field BreakLoop gameEffectAction_KillFXAction 1
gameEffectAction_KillFXAction = {}

---@class gameEffectExecutor_AnimFeatureApplyTo
---@field Target gameEffectExecutor_AnimFeatureApplyTo 0
---@field Instigator gameEffectExecutor_AnimFeatureApplyTo 1
gameEffectExecutor_AnimFeatureApplyTo = {}

---@class gameEffectHitDataType
---@field Entity gameEffectHitDataType 0
---@field Node gameEffectHitDataType 1
---@field Static gameEffectHitDataType 2
gameEffectHitDataType = {}

---@class gameEffectObjectFilter_AxisRangeAxis
---@field X gameEffectObjectFilter_AxisRangeAxis 0
---@field Y gameEffectObjectFilter_AxisRangeAxis 1
---@field Z gameEffectObjectFilter_AxisRangeAxis 2
gameEffectObjectFilter_AxisRangeAxis = {}

---@class gameEffectObjectFilter_HitTypeAction
---@field Accept gameEffectObjectFilter_HitTypeAction 0
---@field Reject gameEffectObjectFilter_HitTypeAction 1
gameEffectObjectFilter_HitTypeAction = {}

---@class gameEffectTriggerPositioningType
---@field PlayerRoot gameEffectTriggerPositioningType 0
---@field CameraRoot gameEffectTriggerPositioningType 1
---@field AtSpawn gameEffectTriggerPositioningType 2
---@field XYCameraZPlayer gameEffectTriggerPositioningType 3
---@field XYPlayerZCamera gameEffectTriggerPositioningType 4
---@field XYCameraZTerrain gameEffectTriggerPositioningType 5
---@field XYPlayerZTerrain gameEffectTriggerPositioningType 6
gameEffectTriggerPositioningType = {}

---@class gameEffectTriggerRotationType
---@field None gameEffectTriggerRotationType 0
---@field AtSpawn gameEffectTriggerRotationType 1
---@field Continuous gameEffectTriggerRotationType 2
gameEffectTriggerRotationType = {}

---@class gameEnemyStealthAwarenessState
---@field Relaxed gameEnemyStealthAwarenessState 0
---@field Aware gameEnemyStealthAwarenessState 1
---@field Alerted gameEnemyStealthAwarenessState 2
---@field Combat gameEnemyStealthAwarenessState 3
gameEnemyStealthAwarenessState = {}

---@class gameEntityReferenceType
---@field EntityRef gameEntityReferenceType 0
---@field Tag gameEntityReferenceType 1
---@field SlotID gameEntityReferenceType 2
---@field SceneActorContextName gameEntityReferenceType 3
gameEntityReferenceType = {}

---@class gameEntitySpawnerEventType
---@field Spawn gameEntitySpawnerEventType 2
---@field Despawn gameEntitySpawnerEventType 3
---@field Death gameEntitySpawnerEventType 4
gameEntitySpawnerEventType = {}

---@class gameEquipAnimationType
---@field Default gameEquipAnimationType 0
---@field Instant gameEquipAnimationType 1
---@field FirstEquip gameEquipAnimationType 2
gameEquipAnimationType = {}

---@class gameEquipmentSetType
---@field Offensive gameEquipmentSetType 0
---@field Defensive gameEquipmentSetType 1
---@field Cyberware gameEquipmentSetType 2
gameEquipmentSetType = {}

---@class gameFearStage
---@field Relaxed gameFearStage 0
---@field Stressed gameFearStage 1
---@field Alarmed gameFearStage 2
---@field Panic gameFearStage 3
gameFearStage = {}

---@class gameGameVersion
---@field CP77_Initial gameGameVersion 0
---@field CP77_Development gameGameVersion 1
---@field CP77_GoldMaster gameGameVersion 2
---@field CP77_ActualGoldMaster gameGameVersion 3
---@field CP77_AlmostPatchDay0 gameGameVersion 4
---@field CP77_PatchDay0 gameGameVersion 5
---@field CP77_PatchDay0_Hotfix1 gameGameVersion 6
---@field CP77_PatchDay0_Hotfix2 gameGameVersion 7
---@field CP77_PatchDay0_Hotfix2_V2 gameGameVersion 8
---@field CP77_PatchDay0_Hotfix3 gameGameVersion 9
---@field CP77_PatchDay0_ChristmasHotfix gameGameVersion 10
---@field CP77_PatchDay0_Hotfix4_Internal gameGameVersion 11
---@field CP77_Patch_1_Internal gameGameVersion 12
---@field CP77_Patch_1_1 gameGameVersion 1100
---@field CP77_Patch_1_1_Hotfix1 gameGameVersion 1110
---@field CP77_Patch_1_1_Hotfix2 gameGameVersion 1120
---@field CP77_Patch_1_2 gameGameVersion 1200
---@field CP77_Patch_1_2_Hotfix1 gameGameVersion 1210
---@field CP77_Patch_1_2_Hotfix2 gameGameVersion 1220
---@field CP77_Patch_1_2_Hotfix3 gameGameVersion 1230
---@field CP77_Patch_1_2_Hotfix4_dlc1 gameGameVersion 1240
---@field CP77_Patch_1_3 gameGameVersion 1300
---@field CP77_Patch_1_3_Hotfix1 gameGameVersion 1301
---@field CP77_Patch_1_3_Development gameGameVersion 1399
---@field CP77_Patch_1_4 gameGameVersion 1310
---@field CP77_Patch_1_5 gameGameVersion 1500
---@field CP77_Patch_1_5_Hotfix1 gameGameVersion 1510
---@field CP77_Patch_1_5_Actual_Hotfix1 gameGameVersion 1520
---@field CP77_Patch_1_6 gameGameVersion 1600
---@field Current gameGameVersion 1600
gameGameVersion = {}

---@class gameGameplayEventFlag
---@field Ai gameGameplayEventFlag 1
---@field Trigger gameGameplayEventFlag 2
---@field Component gameGameplayEventFlag 4
---@field Script gameGameplayEventFlag 8
gameGameplayEventFlag = {}

---@class gameGlobalTierSubtype
---@field Quest gameGlobalTierSubtype 0
---@field Supervisor gameGlobalTierSubtype 1
gameGlobalTierSubtype = {}

---@class gameGodModeType
---@field Immortal gameGodModeType 1
---@field Invulnerable gameGodModeType 0
---@field Mortal gameGodModeType 2
gameGodModeType = {}

---@class gameGrenadeThrowStartType
---@field Invalid gameGrenadeThrowStartType 0
---@field LeftSide gameGrenadeThrowStartType 1
---@field RightSide gameGrenadeThrowStartType 2
---@field Top gameGrenadeThrowStartType 3
---@field Count gameGrenadeThrowStartType 4
gameGrenadeThrowStartType = {}

---@class gameInitalChoiceStage
---@field None gameInitalChoiceStage 0
---@field Difficulty gameInitalChoiceStage 1
---@field LifePath gameInitalChoiceStage 2
---@field Gender gameInitalChoiceStage 3
---@field Customizations gameInitalChoiceStage 4
---@field Attributes gameInitalChoiceStage 5
---@field Finished gameInitalChoiceStage 6
gameInitalChoiceStage = {}

---@class gameInventoryItemAttachmentType
---@field Generic gameInventoryItemAttachmentType 0
---@field Dedicated gameInventoryItemAttachmentType 1
gameInventoryItemAttachmentType = {}

---@class gameInventoryItemShape
---@field SingleSlot gameInventoryItemShape 0
---@field DoubleSlot gameInventoryItemShape 1
gameInventoryItemShape = {}

---@class gameItemComparisonState
---@field Default gameItemComparisonState 0
---@field NoChange gameItemComparisonState 1
---@field Better gameItemComparisonState 2
---@field Worse gameItemComparisonState 3
gameItemComparisonState = {}

---@class gameItemDisplayContext
---@field None gameItemDisplayContext 0
---@field Vendor gameItemDisplayContext 1
---@field Tooltip gameItemDisplayContext 2
---@field VendorPlayer gameItemDisplayContext 3
---@field GearPanel gameItemDisplayContext 4
---@field Backpack gameItemDisplayContext 5
---@field DPAD_RADIAL gameItemDisplayContext 6
---@field Attachment gameItemDisplayContext 7
---@field Ripperdoc gameItemDisplayContext 8
---@field Crafting gameItemDisplayContext 9
gameItemDisplayContext = {}

---@class gameItemEquipContexts
---@field LastWeaponEquipped gameItemEquipContexts 0
---@field LastUsedMeleeWeapon gameItemEquipContexts 1
---@field LastUsedRangedWeapon gameItemEquipContexts 2
---@field Gadget gameItemEquipContexts 3
---@field MeleeCyberware gameItemEquipContexts 4
---@field LauncherCyberware gameItemEquipContexts 5
---@field Fists gameItemEquipContexts 6
gameItemEquipContexts = {}

---@class gameItemIconGender
---@field Female gameItemIconGender 0
---@field Male gameItemIconGender 1
gameItemIconGender = {}

---@class gameItemUnequipContexts
---@field AllWeapons gameItemUnequipContexts 0
---@field HeadClothing gameItemUnequipContexts 1
---@field FaceClothing gameItemUnequipContexts 2
---@field OuterChestClothing gameItemUnequipContexts 3
---@field InnerChestClothing gameItemUnequipContexts 4
---@field LegClothing gameItemUnequipContexts 5
---@field FootClothing gameItemUnequipContexts 6
---@field AllClothing gameItemUnequipContexts 7
---@field RightHandWeapon gameItemUnequipContexts 8
---@field LeftHandWeapon gameItemUnequipContexts 9
---@field AllQuestItems gameItemUnequipContexts 10
---@field AllItems gameItemUnequipContexts 11
gameItemUnequipContexts = {}

---@class gameJournalBriefingContentType
---@field MapLocation gameJournalBriefingContentType 0
---@field VideoContent gameJournalBriefingContentType 1
---@field Paperdoll gameJournalBriefingContentType 2
gameJournalBriefingContentType = {}

---@class gameJournalCallbackOption
---@field DoNotFire gameJournalCallbackOption 0
---@field Fire gameJournalCallbackOption 1
gameJournalCallbackOption = {}

---@class gameJournalChangeType
---@field Undefined gameJournalChangeType 0
---@field Direct gameJournalChangeType 1
---@field Indirect gameJournalChangeType 2
---@field IndirectDependent gameJournalChangeType 3
gameJournalChangeType = {}

---@class gameJournalEntryState
---@field Undefined gameJournalEntryState 0
---@field Inactive gameJournalEntryState 1
---@field Active gameJournalEntryState 2
---@field Succeeded gameJournalEntryState 3
---@field Failed gameJournalEntryState 4
gameJournalEntryState = {}

---@class gameJournalEntryUserState
---@field Undefined gameJournalEntryUserState 0
---@field Inactive gameJournalEntryUserState 1
---@field Active gameJournalEntryUserState 2
---@field Succeeded gameJournalEntryUserState 3
---@field Failed gameJournalEntryUserState 4
---@field Read gameJournalEntryUserState 5
---@field Open gameJournalEntryUserState 6
gameJournalEntryUserState = {}

---@class gameJournalListenerType
---@field State gameJournalListenerType 0
---@field Visited gameJournalListenerType 1
---@field Tracked gameJournalListenerType 2
---@field Untracked gameJournalListenerType 3
---@field Counter gameJournalListenerType 4
gameJournalListenerType = {}

---@class gameJournalNotifyOption
---@field Undefined gameJournalNotifyOption 0
---@field DoNotNotify gameJournalNotifyOption 1
---@field Notify gameJournalNotifyOption 2
gameJournalNotifyOption = {}

---@class gameJournalQuestType
---@field MainQuest gameJournalQuestType 0
---@field SideQuest gameJournalQuestType 1
---@field MinorQuest gameJournalQuestType 2
---@field StreetStory gameJournalQuestType 3
---@field CyberPsycho gameJournalQuestType 4
---@field Contract gameJournalQuestType 5
---@field VehicleQuest gameJournalQuestType 6
---@field ApartmentQuest gameJournalQuestType 7
gameJournalQuestType = {}

---@class gameKillType
---@field Normal gameKillType 0
---@field Defeat gameKillType 1
gameKillType = {}

---@class gameLoSMode
---@field Invalid gameLoSMode 0
---@field Keep gameLoSMode 1
---@field Avoid gameLoSMode 2
gameLoSMode = {}

---@class gameLootItemType
---@field Default gameLootItemType 0
---@field Quest gameLootItemType 1
---@field Shard gameLootItemType 2
gameLootItemType = {}

---@class gameMessageSender
---@field NPC gameMessageSender 0
---@field Player gameMessageSender 1
gameMessageSender = {}

---@class gameMountDescriptorMountType
---@field Unmounted gameMountDescriptorMountType 0
---@field KeepState gameMountDescriptorMountType 1
---@field Vehicle gameMountDescriptorMountType 3
---@field MovingPlatform gameMountDescriptorMountType 4
gameMountDescriptorMountType = {}

---@class gameMountingObjectType
---@field Invalid gameMountingObjectType -1
---@field Object gameMountingObjectType 0
---@field Vehicle gameMountingObjectType 1
---@field Puppet gameMountingObjectType 2
---@field Platform gameMountingObjectType 3
gameMountingObjectType = {}

---@class gameMountingRelationshipType
---@field Invalid gameMountingRelationshipType -1
---@field Parent gameMountingRelationshipType 0
---@field Child gameMountingRelationshipType 1
gameMountingRelationshipType = {}

---@class gameMountingSlotRole
---@field Invalid gameMountingSlotRole -1
---@field Driver gameMountingSlotRole 0
---@field Passenger gameMountingSlotRole 1
---@field Passenger_FR gameMountingSlotRole 2
---@field Passenger_BL gameMountingSlotRole 3
---@field Passenger_BR gameMountingSlotRole 4
gameMountingSlotRole = {}

---@class gameMovingPlatformLoopType
---@field NoLooping gameMovingPlatformLoopType 0
---@field Bounce gameMovingPlatformLoopType 1
---@field Repeat gameMovingPlatformLoopType 2
gameMovingPlatformLoopType = {}

---@class gameMovingPlatformMovementInitializationType
---@field Time gameMovingPlatformMovementInitializationType 0
---@field Speed gameMovingPlatformMovementInitializationType 1
gameMovingPlatformMovementInitializationType = {}

---@class gameMuppetComparisonReportItemType
---@field Different gameMuppetComparisonReportItemType 0
---@field WithinTolerance gameMuppetComparisonReportItemType 1
---@field Equal gameMuppetComparisonReportItemType 2
gameMuppetComparisonReportItemType = {}

---@class gameMuppetDebugCommand
---@field None gameMuppetDebugCommand 0
---@field Kill gameMuppetDebugCommand 1
---@field KillAll gameMuppetDebugCommand 2
gameMuppetDebugCommand = {}

---@class gameMuppetInputActionType
---@field Unknown gameMuppetInputActionType 0
---@field Impulse gameMuppetInputActionType 1
---@field Press gameMuppetInputActionType 2
gameMuppetInputActionType = {}

---@class gameMuppetMoveStyle
---@field Invalid gameMuppetMoveStyle 0
---@field Walk gameMuppetMoveStyle 1
---@field Sprint gameMuppetMoveStyle 2
---@field Crouch gameMuppetMoveStyle 3
---@field WalkAim gameMuppetMoveStyle 4
---@field GravityOnly gameMuppetMoveStyle 5
gameMuppetMoveStyle = {}

---@class gameOnlineSystemErrors
---@field None gameOnlineSystemErrors 0
---@field RequestFailed gameOnlineSystemErrors 1
---@field TemporaryFailure gameOnlineSystemErrors 2
---@field NoInternetConnection gameOnlineSystemErrors 3
---@field NotSignedInGalaxy gameOnlineSystemErrors 4
---@field NotSignedInLauncher gameOnlineSystemErrors 5
---@field NotSignedInGame gameOnlineSystemErrors 6
gameOnlineSystemErrors = {}

---@class gameOnlineSystemStatus
---@field Uninitialized gameOnlineSystemStatus 0
---@field GeneratingCPID gameOnlineSystemStatus 1
---@field CheckingRegistrationStatus gameOnlineSystemStatus 2
---@field RegistrationPending gameOnlineSystemStatus 3
---@field Registered gameOnlineSystemStatus 4
---@field Error gameOnlineSystemStatus 5
gameOnlineSystemStatus = {}

---@class gamePSMBodyCarrying
---@field Any gamePSMBodyCarrying -1
---@field Default gamePSMBodyCarrying 0
---@field PickUp gamePSMBodyCarrying 1
---@field Carry gamePSMBodyCarrying 2
---@field Dispose gamePSMBodyCarrying 3
---@field Drop gamePSMBodyCarrying 4
gamePSMBodyCarrying = {}

---@class gamePSMBodyCarryingLocomotion
---@field Default gamePSMBodyCarryingLocomotion 0
---@field Jump gamePSMBodyCarryingLocomotion 1
---@field Crouch gamePSMBodyCarryingLocomotion 2
---@field Sprint gamePSMBodyCarryingLocomotion 3
---@field Fall gamePSMBodyCarryingLocomotion 4
---@field Land gamePSMBodyCarryingLocomotion 5
---@field DropBody gamePSMBodyCarryingLocomotion 6
gamePSMBodyCarryingLocomotion = {}

---@class gamePSMBodyCarryingStyle
---@field Any gamePSMBodyCarryingStyle 0
---@field Default gamePSMBodyCarryingStyle 1
---@field Friendly gamePSMBodyCarryingStyle 2
---@field Strong gamePSMBodyCarryingStyle 3
gamePSMBodyCarryingStyle = {}

---@class gamePSMCombat
---@field Any gamePSMCombat -1
---@field Default gamePSMCombat 0
---@field InCombat gamePSMCombat 1
---@field OutOfCombat gamePSMCombat 2
---@field Stealth gamePSMCombat 3
gamePSMCombat = {}

---@class gamePSMCombatGadget
---@field Default gamePSMCombatGadget 0
---@field EquipRequest gamePSMCombatGadget 1
---@field Equipped gamePSMCombatGadget 2
---@field Charging gamePSMCombatGadget 3
---@field Throwing gamePSMCombatGadget 4
---@field WaitForUnequip gamePSMCombatGadget 5
---@field QuickThrow gamePSMCombatGadget 6
gamePSMCombatGadget = {}

---@class gamePSMCover
---@field Any gamePSMCover -1
---@field Default gamePSMCover 0
---@field InCover gamePSMCover 1
---@field Peek gamePSMCover 2
---@field Lean gamePSMCover 3
---@field OutOfCover gamePSMCover 4
gamePSMCover = {}

---@class gamePSMCrosshairStates
---@field Default gamePSMCrosshairStates 0
---@field Safe gamePSMCrosshairStates 1
---@field Scanning gamePSMCrosshairStates 2
---@field GrenadeCharging gamePSMCrosshairStates 3
---@field Aim gamePSMCrosshairStates 4
---@field Reload gamePSMCrosshairStates 5
---@field Sprint gamePSMCrosshairStates 6
---@field HipFire gamePSMCrosshairStates 7
---@field LeftHandCyberware gamePSMCrosshairStates 8
---@field QuickHack gamePSMCrosshairStates 9
gamePSMCrosshairStates = {}

---@class gamePSMDetailedBodyDisposal
---@field Default gamePSMDetailedBodyDisposal 0
---@field Dispose gamePSMDetailedBodyDisposal 1
---@field Lethal gamePSMDetailedBodyDisposal 2
---@field NonLethal gamePSMDetailedBodyDisposal 3
gamePSMDetailedBodyDisposal = {}

---@class gamePSMDetailedLocomotionStates
---@field NotInBaseLocomotion gamePSMDetailedLocomotionStates 0
---@field Stand gamePSMDetailedLocomotionStates 1
---@field AimWalk gamePSMDetailedLocomotionStates 2
---@field Crouch gamePSMDetailedLocomotionStates 3
---@field Sprint gamePSMDetailedLocomotionStates 4
---@field Slide gamePSMDetailedLocomotionStates 5
---@field SlideFall gamePSMDetailedLocomotionStates 6
---@field Dodge gamePSMDetailedLocomotionStates 7
---@field Climb gamePSMDetailedLocomotionStates 8
---@field Vault gamePSMDetailedLocomotionStates 9
---@field Ladder gamePSMDetailedLocomotionStates 10
---@field LadderSprint gamePSMDetailedLocomotionStates 11
---@field LadderSlide gamePSMDetailedLocomotionStates 12
---@field LadderJump gamePSMDetailedLocomotionStates 13
---@field Fall gamePSMDetailedLocomotionStates 14
---@field AirThrusters gamePSMDetailedLocomotionStates 15
---@field AirHover gamePSMDetailedLocomotionStates 16
---@field SuperheroFall gamePSMDetailedLocomotionStates 17
---@field Jump gamePSMDetailedLocomotionStates 18
---@field DoubleJump gamePSMDetailedLocomotionStates 19
---@field ChargeJump gamePSMDetailedLocomotionStates 20
---@field HoverJump gamePSMDetailedLocomotionStates 21
---@field DodgeAir gamePSMDetailedLocomotionStates 22
---@field RegularLand gamePSMDetailedLocomotionStates 23
---@field HardLand gamePSMDetailedLocomotionStates 24
---@field VeryHardLand gamePSMDetailedLocomotionStates 25
---@field DeathLand gamePSMDetailedLocomotionStates 26
---@field SuperheroLand gamePSMDetailedLocomotionStates 27
---@field SuperheroLandRecovery gamePSMDetailedLocomotionStates 28
---@field Knockdown gamePSMDetailedLocomotionStates 29
gamePSMDetailedLocomotionStates = {}

---@class gamePSMFallStates
---@field Default gamePSMFallStates 0
---@field RegularFall gamePSMFallStates 1
---@field SafeFall gamePSMFallStates 2
---@field FastFall gamePSMFallStates 3
---@field VeryFastFall gamePSMFallStates 4
---@field DeathFall gamePSMFallStates 5
gamePSMFallStates = {}

---@class gamePSMHighLevel
---@field Any gamePSMHighLevel -1
---@field Default gamePSMHighLevel 0
---@field SceneTier1 gamePSMHighLevel 1
---@field SceneTier2 gamePSMHighLevel 2
---@field SceneTier3 gamePSMHighLevel 3
---@field SceneTier4 gamePSMHighLevel 4
---@field SceneTier5 gamePSMHighLevel 5
---@field Swimming gamePSMHighLevel 6
gamePSMHighLevel = {}

---@class gamePSMLandingState
---@field Default gamePSMLandingState 0
---@field RegularLand gamePSMLandingState 1
---@field HardLand gamePSMLandingState 2
---@field VeryHardLand gamePSMLandingState 3
---@field DeathLand gamePSMLandingState 4
---@field SuperheroLand gamePSMLandingState 5
---@field SuperheroLandRecovery gamePSMLandingState 6
gamePSMLandingState = {}

---@class gamePSMLeftHandCyberware
---@field Default gamePSMLeftHandCyberware 0
---@field Safe gamePSMLeftHandCyberware 1
---@field EquipRequest gamePSMLeftHandCyberware 2
---@field Idle gamePSMLeftHandCyberware 3
---@field Equipped gamePSMLeftHandCyberware 4
---@field Charge gamePSMLeftHandCyberware 5
---@field Loop gamePSMLeftHandCyberware 6
---@field Catch gamePSMLeftHandCyberware 7
---@field QuickAction gamePSMLeftHandCyberware 8
---@field ChargeAction gamePSMLeftHandCyberware 9
---@field CatchAction gamePSMLeftHandCyberware 10
---@field StartUnequip gamePSMLeftHandCyberware 11
---@field Unequip gamePSMLeftHandCyberware 12
gamePSMLeftHandCyberware = {}

---@class gamePSMLocomotionStates
---@field Any gamePSMLocomotionStates -1
---@field Default gamePSMLocomotionStates 0
---@field Crouch gamePSMLocomotionStates 1
---@field Sprint gamePSMLocomotionStates 2
---@field Kereznikov gamePSMLocomotionStates 3
---@field Jump gamePSMLocomotionStates 5
---@field Vault gamePSMLocomotionStates 6
---@field Dodge gamePSMLocomotionStates 7
---@field DodgeAir gamePSMLocomotionStates 8
---@field Workspot gamePSMLocomotionStates 9
---@field Slide gamePSMLocomotionStates 10
---@field SlideFall gamePSMLocomotionStates 11
gamePSMLocomotionStates = {}

---@class gamePSMMelee
---@field Any gamePSMMelee -1
---@field Default gamePSMMelee 0
---@field Attack gamePSMMelee 1
---@field Block gamePSMMelee 2
gamePSMMelee = {}

---@class gamePSMMeleeWeapon
---@field NotReady gamePSMMeleeWeapon 0
---@field Idle gamePSMMeleeWeapon 1
---@field Safe gamePSMMeleeWeapon 2
---@field PublicSafe gamePSMMeleeWeapon 3
---@field Parried gamePSMMeleeWeapon 4
---@field Hold gamePSMMeleeWeapon 5
---@field ChargedHold gamePSMMeleeWeapon 6
---@field Block gamePSMMeleeWeapon 7
---@field Targeting gamePSMMeleeWeapon 8
---@field Deflect gamePSMMeleeWeapon 9
---@field ComboAttack gamePSMMeleeWeapon 10
---@field FinalAttack gamePSMMeleeWeapon 11
---@field StrongAttack gamePSMMeleeWeapon 12
---@field SafeAttack gamePSMMeleeWeapon 13
---@field BlockAttack gamePSMMeleeWeapon 14
---@field SprintAttack gamePSMMeleeWeapon 15
---@field CrouchAttack gamePSMMeleeWeapon 16
---@field JumpAttack gamePSMMeleeWeapon 17
---@field ThrowAttack gamePSMMeleeWeapon 18
---@field DeflectAttack gamePSMMeleeWeapon 19
---@field EquipAttack gamePSMMeleeWeapon 20
---@field Default gamePSMMeleeWeapon 21
gamePSMMeleeWeapon = {}

---@class gamePSMNanoWireLaunchMode
---@field Default gamePSMNanoWireLaunchMode 0
---@field Primary gamePSMNanoWireLaunchMode 1
---@field Secondary gamePSMNanoWireLaunchMode 2
gamePSMNanoWireLaunchMode = {}

---@class gamePSMRangedWeaponStates
---@field Default gamePSMRangedWeaponStates 0
---@field Charging gamePSMRangedWeaponStates 1
---@field Reload gamePSMRangedWeaponStates 2
---@field QuickMelee gamePSMRangedWeaponStates 3
---@field NoAmmo gamePSMRangedWeaponStates 4
---@field Ready gamePSMRangedWeaponStates 5
---@field Safe gamePSMRangedWeaponStates 6
---@field Overheat gamePSMRangedWeaponStates 7
---@field Shoot gamePSMRangedWeaponStates 8
gamePSMRangedWeaponStates = {}

---@class gamePSMReaction
---@field Default gamePSMReaction 0
---@field Stagger gamePSMReaction 1
gamePSMReaction = {}

---@class gamePSMStamina
---@field Rested gamePSMStamina 0
---@field Exhausted gamePSMStamina 1
gamePSMStamina = {}

---@class gamePSMSwimming
---@field Any gamePSMSwimming -1
---@field Default gamePSMSwimming 0
---@field Surface gamePSMSwimming 1
---@field Diving gamePSMSwimming 2
gamePSMSwimming = {}

---@class gamePSMTakedown
---@field Any gamePSMTakedown -1
---@field Default gamePSMTakedown 0
---@field EnteringGrapple gamePSMTakedown 1
---@field Grapple gamePSMTakedown 2
---@field Leap gamePSMTakedown 3
---@field Takedown gamePSMTakedown 4
gamePSMTakedown = {}

---@class gamePSMTimeDilation
---@field Any gamePSMTimeDilation -1
---@field Default gamePSMTimeDilation 0
---@field Sandevistan gamePSMTimeDilation 1
gamePSMTimeDilation = {}

---@class gamePSMUIState
---@field None gamePSMUIState 0
---@field WeaponSelect gamePSMUIState 1
gamePSMUIState = {}

---@class gamePSMUpperBodyStates
---@field Any gamePSMUpperBodyStates -1
---@field Default gamePSMUpperBodyStates 0
---@field SwitchItems gamePSMUpperBodyStates 1
---@field SwitchCyberware gamePSMUpperBodyStates 2
---@field Reload gamePSMUpperBodyStates 3
---@field Aim gamePSMUpperBodyStates 6
---@field TemporaryUnequip gamePSMUpperBodyStates 4
---@field ForceEmptyHands gamePSMUpperBodyStates 5
gamePSMUpperBodyStates = {}

---@class gamePSMVehicle
---@field Any gamePSMVehicle -1
---@field Default gamePSMVehicle 0
---@field Driving gamePSMVehicle 1
---@field Combat gamePSMVehicle 2
---@field Passenger gamePSMVehicle 3
---@field Transition gamePSMVehicle 4
---@field Turret gamePSMVehicle 5
---@field DriverCombat gamePSMVehicle 6
---@field Scene gamePSMVehicle 7
gamePSMVehicle = {}

---@class gamePSMVision
---@field Any gamePSMVision -1
---@field Default gamePSMVision 0
---@field Focus gamePSMVision 1
gamePSMVision = {}

---@class gamePSMVisionDebug
---@field Default gamePSMVisionDebug 0
---@field VisionToggle gamePSMVisionDebug 1
gamePSMVisionDebug = {}

---@class gamePSMVitals
---@field Alive gamePSMVitals 0
---@field Dead gamePSMVitals 1
---@field Resurrecting gamePSMVitals 2
gamePSMVitals = {}

---@class gamePSMWeaponStates
---@field Any gamePSMWeaponStates -1
---@field Default gamePSMWeaponStates 0
---@field NoAmmo gamePSMWeaponStates 1
---@field Ready gamePSMWeaponStates 2
---@field Safe gamePSMWeaponStates 3
gamePSMWeaponStates = {}

---@class gamePSMWhip
---@field Default gamePSMWhip 0
---@field Charging gamePSMWhip 1
---@field Pulling gamePSMWhip 2
gamePSMWhip = {}

---@class gamePSMWorkspotState
---@field Default gamePSMWorkspotState 0
---@field Workspot gamePSMWorkspotState 1
gamePSMWorkspotState = {}

---@class gamePSMZones
---@field Any gamePSMZones -1
---@field Default gamePSMZones 0
---@field Public gamePSMZones 1
---@field Safe gamePSMZones 2
---@field Restricted gamePSMZones 3
---@field Dangerous gamePSMZones 4
gamePSMZones = {}

---@class gamePlatformMovementState
---@field Stopped gamePlatformMovementState 0
---@field Paused gamePlatformMovementState 1
---@field MovingUp gamePlatformMovementState 2
---@field MovingDown gamePlatformMovementState 3
gamePlatformMovementState = {}

---@class gamePlayerCoverDirection
---@field None gamePlayerCoverDirection -1
---@field Up gamePlayerCoverDirection 0
---@field Left gamePlayerCoverDirection 1
---@field Right gamePlayerCoverDirection 2
gamePlayerCoverDirection = {}

---@class gamePlayerCoverMode
---@field None gamePlayerCoverMode 0
---@field Auto gamePlayerCoverMode 1
---@field Manual gamePlayerCoverMode 2
gamePlayerCoverMode = {}

---@class gamePlayerObstacleSystemQueryType
---@field Climb_Vault gamePlayerObstacleSystemQueryType 0
---@field Covers gamePlayerObstacleSystemQueryType 1
---@field AverageNormal gamePlayerObstacleSystemQueryType 2
gamePlayerObstacleSystemQueryType = {}

---@class gamePlayerStateMachine
---@field Locomotion gamePlayerStateMachine 0
---@field UpperBody gamePlayerStateMachine 1
---@field Weapon gamePlayerStateMachine 2
---@field HighLevel gamePlayerStateMachine 3
---@field Projectile gamePlayerStateMachine 4
---@field Vision gamePlayerStateMachine 5
---@field TimeDilation gamePlayerStateMachine 6
---@field CoverAction gamePlayerStateMachine 7
---@field IconicItem gamePlayerStateMachine 8
---@field Combat gamePlayerStateMachine 9
---@field Vehicle gamePlayerStateMachine 10
---@field Takedown gamePlayerStateMachine 11
gamePlayerStateMachine = {}

---@class gamePopulationEntityPriority
---@field Quest gamePopulationEntityPriority 0
---@field Community gamePopulationEntityPriority 1
---@field Crowd gamePopulationEntityPriority 2
gamePopulationEntityPriority = {}

---@class gamePopupPosition
---@field Undefined gamePopupPosition 0
---@field UpperRight gamePopupPosition 1
---@field UpperLeft gamePopupPosition 2
---@field LowerLeft gamePopupPosition 3
---@field LowerRight gamePopupPosition 4
---@field Center gamePopupPosition 5
gamePopupPosition = {}

---@class gamePuppetVehicleState
---@field IdleMounted gamePuppetVehicleState 0
---@field IdleStand gamePuppetVehicleState 1
---@field CombatSeated gamePuppetVehicleState 3
---@field CombatWindowed gamePuppetVehicleState 2
---@field Turret gamePuppetVehicleState 4
---@field GunnerSlot gamePuppetVehicleState 5
gamePuppetVehicleState = {}

---@class gameQuestGuidanceMarkerPathfindingType
---@field Auto gameQuestGuidanceMarkerPathfindingType 0
---@field Navmesh gameQuestGuidanceMarkerPathfindingType 1
---@field Traffic gameQuestGuidanceMarkerPathfindingType 2
gameQuestGuidanceMarkerPathfindingType = {}

---@class gameRegular1v1FinisherScenarioPivotSetting
---@field AttackerSlidesAndRotates_TargetStandsStill gameRegular1v1FinisherScenarioPivotSetting 0
---@field AttackerStandsStill_TargetSlidesAndRotates gameRegular1v1FinisherScenarioPivotSetting 1
gameRegular1v1FinisherScenarioPivotSetting = {}

---@class gameReprimandMappinAnimationState
---@field None gameReprimandMappinAnimationState 0
---@field Normal gameReprimandMappinAnimationState 1
---@field Fast gameReprimandMappinAnimationState 2
gameReprimandMappinAnimationState = {}

---@class gameSaveLockReason
---@field Nothing gameSaveLockReason 0
---@field Combat gameSaveLockReason 1
---@field Scene gameSaveLockReason 2
---@field Quest gameSaveLockReason 3
---@field Script gameSaveLockReason 4
---@field Boundary gameSaveLockReason 5
---@field MainMenu gameSaveLockReason 6
---@field LoadingScreen gameSaveLockReason 7
---@field PlayerStateMachine gameSaveLockReason 8
---@field PlayerState gameSaveLockReason 9
---@field Tier gameSaveLockReason 10
---@field NotEnoughSlots gameSaveLockReason 11
---@field NotEnoughSpace gameSaveLockReason 12
---@field PlayerOnMovingPlatform gameSaveLockReason 13
gameSaveLockReason = {}

---@class gameScanningMode
---@field Inactive gameScanningMode 0
---@field Light gameScanningMode 1
---@field Heavy gameScanningMode 2
gameScanningMode = {}

---@class gameScanningState
---@field Default gameScanningState 0
---@field Started gameScanningState 1
---@field Stopped gameScanningState 2
---@field Complete gameScanningState 3
---@field ShallowComplete gameScanningState 4
---@field Reset gameScanningState 5
gameScanningState = {}

---@class gameSceneAnimationMotionActionParamsEasingType
---@field Linear gameSceneAnimationMotionActionParamsEasingType 0
---@field SinusoidalEaseInOut gameSceneAnimationMotionActionParamsEasingType 1
---@field QuadraticEaseIn gameSceneAnimationMotionActionParamsEasingType 2
---@field QuadraticEaseOut gameSceneAnimationMotionActionParamsEasingType 3
---@field CubicEaseInOut gameSceneAnimationMotionActionParamsEasingType 4
---@field CubicEaseIn gameSceneAnimationMotionActionParamsEasingType 5
---@field CubicEaseOut gameSceneAnimationMotionActionParamsEasingType 6
gameSceneAnimationMotionActionParamsEasingType = {}

---@class gameSceneAnimationMotionActionParamsMotionType
---@field Rid gameSceneAnimationMotionActionParamsMotionType 0
---@field Anim gameSceneAnimationMotionActionParamsMotionType 1
gameSceneAnimationMotionActionParamsMotionType = {}

---@class gameSceneAnimationMotionActionParamsPlacementMode
---@field Blend gameSceneAnimationMotionActionParamsPlacementMode 0
---@field TeleportToStart gameSceneAnimationMotionActionParamsPlacementMode 1
---@field PlayAtActorPosition gameSceneAnimationMotionActionParamsPlacementMode 2
gameSceneAnimationMotionActionParamsPlacementMode = {}

---@class gameScriptTaskExecutionStage
---@field Any gameScriptTaskExecutionStage 0
---@field PostPhysics gameScriptTaskExecutionStage 1
gameScriptTaskExecutionStage = {}

---@class gameScriptedBlackboardStorage
---@field Default gameScriptedBlackboardStorage 0
gameScriptedBlackboardStorage = {}

---@class gameSharedInventoryTag
---@field None gameSharedInventoryTag 0
---@field PlayerStash gameSharedInventoryTag 1000000
gameSharedInventoryTag = {}

---@class gameSmartObjectInstanceEntryType
---@field UseEntryAnimation gameSmartObjectInstanceEntryType 0
---@field UseLocomotion gameSmartObjectInstanceEntryType 1
gameSmartObjectInstanceEntryType = {}

---@class gameSmartObjectPointType
---@field Entry gameSmartObjectPointType 0
---@field Exit gameSmartObjectPointType 1
---@field Action gameSmartObjectPointType 2
gameSmartObjectPointType = {}

---@class gameSmartObjectType
---@field Default gameSmartObjectType 0
---@field LadderUp gameSmartObjectType 1
---@field LadderDown gameSmartObjectType 2
---@field JumpOnSameLevel gameSmartObjectType 3
---@field Jump3mUp gameSmartObjectType 4
---@field Jump3mDown gameSmartObjectType 5
---@field Climb110cmUp gameSmartObjectType 6
---@field Climb110cmDown gameSmartObjectType 7
---@field Climb200cmUp gameSmartObjectType 8
---@field Climb200cmDown gameSmartObjectType 9
---@field Climb300cmUp gameSmartObjectType 10
---@field Climb300cmDown gameSmartObjectType 11
---@field Vault10cm gameSmartObjectType 12
---@field Vault40cm gameSmartObjectType 13
---@field Vault100cm gameSmartObjectType 14
---@field ChargedJump400cmUp gameSmartObjectType 15
---@field ChargedJump400cmDown gameSmartObjectType 16
---@field ChargedJump600cmUp gameSmartObjectType 17
---@field ChargedJump600cmDown gameSmartObjectType 18
---@field ChargedJump800cmUp gameSmartObjectType 19
---@field ChargedJump800cmDown gameSmartObjectType 20
---@field ThrusterJumpUp gameSmartObjectType 21
---@field ThrusterJumpDown gameSmartObjectType 22
---@field Climb400cmDown gameSmartObjectType 23
gameSmartObjectType = {}

---@class gameSpawnInViewState
---@field default__true_ gameSpawnInViewState 0
---@field true gameSpawnInViewState 1
---@field false gameSpawnInViewState 2
gameSpawnInViewState = {}

---@class gameStatIDType
---@field EntityID gameStatIDType 0
---@field ItemID gameStatIDType 1
---@field Invalid gameStatIDType 2
gameStatIDType = {}

---@class gameStatModifierType
---@field Additive gameStatModifierType 0
---@field AdditiveMultiplier gameStatModifierType 1
---@field Multiplier gameStatModifierType 2
---@field Count gameStatModifierType 3
---@field Invalid gameStatModifierType 4
gameStatModifierType = {}

---@class gameStatObjectsRelation
---@field Self gameStatObjectsRelation 0
---@field Owner gameStatObjectsRelation 1
---@field Root gameStatObjectsRelation 2
---@field Parent gameStatObjectsRelation 3
---@field Target gameStatObjectsRelation 4
---@field Player gameStatObjectsRelation 5
---@field Instigator gameStatObjectsRelation 6
---@field Count gameStatObjectsRelation 7
---@field Invalid gameStatObjectsRelation 9
gameStatObjectsRelation = {}

---@class gameStatPoolDataBonusType
---@field None gameStatPoolDataBonusType 0
---@field Persistent gameStatPoolDataBonusType 1
---@field NonPersistent gameStatPoolDataBonusType 2
gameStatPoolDataBonusType = {}

---@class gameStatPoolDataStatPoolModificationStatus
---@field Regeneration gameStatPoolDataStatPoolModificationStatus 0
---@field Decay gameStatPoolDataStatPoolModificationStatus 1
---@field NoModification gameStatPoolDataStatPoolModificationStatus 2
gameStatPoolDataStatPoolModificationStatus = {}

---@class gameStatPoolDataValueChangeMode
---@field Normal gameStatPoolDataValueChangeMode 0
---@field IncreasingOnly gameStatPoolDataValueChangeMode 1
---@field DecreasingOnly gameStatPoolDataValueChangeMode 2
---@field NonZero gameStatPoolDataValueChangeMode 3
gameStatPoolDataValueChangeMode = {}

---@class gameStatPoolModificationTypes
---@field Regeneration gameStatPoolModificationTypes 0
---@field Decay gameStatPoolModificationTypes 1
gameStatPoolModificationTypes = {}

---@class gameStatPoolModifierProperty
---@field RangeBegin gameStatPoolModifierProperty 0
---@field RangeEnd gameStatPoolModifierProperty 1
---@field StartDelay gameStatPoolModifierProperty 2
---@field ValuePerSec gameStatPoolModifierProperty 3
---@field Enabled gameStatPoolModifierProperty 4
---@field DelayOnChange gameStatPoolModifierProperty 5
---@field Count gameStatPoolModifierProperty 6
gameStatPoolModifierProperty = {}

---@class gameStatsBundleOwnerType
---@field None gameStatsBundleOwnerType 0
---@field Cleared gameStatsBundleOwnerType 1
---@field UniqueItem gameStatsBundleOwnerType 2
---@field StackableItem gameStatsBundleOwnerType 3
---@field InnerItem gameStatsBundleOwnerType 4
---@field Entity gameStatsBundleOwnerType 5
---@field Stub gameStatsBundleOwnerType 6
---@field Reinitialized gameStatsBundleOwnerType 7
---@field Count gameStatsBundleOwnerType 8
---@field Invalid gameStatsBundleOwnerType 9
gameStatsBundleOwnerType = {}

---@class gameStoryTier
---@field Gameplay gameStoryTier 0
---@field Cinematic gameStoryTier 1
gameStoryTier = {}

---@class gameTargetingSet
---@field Visible gameTargetingSet 0
---@field Frustum gameTargetingSet 2
---@field Complete gameTargetingSet 3
---@field None gameTargetingSet 4
gameTargetingSet = {}

---@class gameTelemetryDamageSituation
---@field Irrelevant gameTelemetryDamageSituation 0
---@field EnemyToPlayer gameTelemetryDamageSituation 1
---@field EnemyToCompanion gameTelemetryDamageSituation 2
---@field PlayerToEnemy gameTelemetryDamageSituation 3
---@field CompanionToEnemy gameTelemetryDamageSituation 4
---@field PlayerToPlayer gameTelemetryDamageSituation 5
gameTelemetryDamageSituation = {}

---@class gameTelemetryHitDefenseType
---@field Block gameTelemetryHitDefenseType 0
---@field Deflect gameTelemetryHitDefenseType 1
gameTelemetryHitDefenseType = {}

---@class gameTelemetryMilestoneType
---@field StartFact gameTelemetryMilestoneType 0
---@field ImportantFact gameTelemetryMilestoneType 1
---@field Reward gameTelemetryMilestoneType 2
---@field EndFact gameTelemetryMilestoneType 4
---@field EndReward gameTelemetryMilestoneType 3
---@field Invalid gameTelemetryMilestoneType 5
gameTelemetryMilestoneType = {}

---@class gameTelemetryMovementType
---@field Jump gameTelemetryMovementType 0
---@field DoubleJump gameTelemetryMovementType 1
---@field ChargedJump gameTelemetryMovementType 2
---@field Dodge gameTelemetryMovementType 3
---@field AirDodge gameTelemetryMovementType 4
gameTelemetryMovementType = {}

---@class gameTickableEventState
---@field Idle gameTickableEventState 0
---@field FirstTick gameTickableEventState 1
---@field NormalTick gameTickableEventState 2
---@field LastTick gameTickableEventState 3
---@field Canceled gameTickableEventState 4
gameTickableEventState = {}

---@class gameTransformAnimation_MoveOnSplineRotationMode
---@field Disabled gameTransformAnimation_MoveOnSplineRotationMode 0
---@field Yaw gameTransformAnimation_MoveOnSplineRotationMode 1
---@field PitchAndYaw gameTransformAnimation_MoveOnSplineRotationMode 2
gameTransformAnimation_MoveOnSplineRotationMode = {}

---@class gameTransformAnimation_RotateOnAxisAxis
---@field X gameTransformAnimation_RotateOnAxisAxis 0
---@field Y gameTransformAnimation_RotateOnAxisAxis 1
---@field Z gameTransformAnimation_RotateOnAxisAxis 2
gameTransformAnimation_RotateOnAxisAxis = {}

---@class gameTutorialBracketType
---@field WidgetArea gameTutorialBracketType 0
---@field CustomArea gameTutorialBracketType 1
gameTutorialBracketType = {}

---@class gameVehicleCommonCurve
---@field RPMLimit gameVehicleCommonCurve 0
---@field ForcedBrakeForce gameVehicleCommonCurve 1
---@field COUNT gameVehicleCommonCurve 2
gameVehicleCommonCurve = {}

---@class gameVehicleCurve
---@field SpeedToWheelMaxTurn gameVehicleCurve 0
---@field InputToWheelMaxTurn gameVehicleCurve 1
---@field SpeedToWheelTurnSpeed gameVehicleCurve 2
---@field InputToWheelTurnSpeed gameVehicleCurve 3
---@field COUNT gameVehicleCurve 4
gameVehicleCurve = {}

---@class gameVideoType
---@field Tutorial_720x405 gameVideoType 0
---@field Tutorial_1024x576 gameVideoType 1
---@field Tutorial_1280x720 gameVideoType 2
---@field Tutorial_1360x768 gameVideoType 3
---@field Unknown gameVideoType 4
gameVideoType = {}

---@class gameVisionModePatternType
---@field Default gameVisionModePatternType 0
---@field Netrunner gameVisionModePatternType 1
gameVisionModePatternType = {}

---@class gameVisionModeType
---@field Default gameVisionModeType 0
---@field Focus gameVisionModeType 1
gameVisionModeType = {}

---@class gameWardrobeClothingSetIndex
---@field Slot1 gameWardrobeClothingSetIndex 0
---@field Slot2 gameWardrobeClothingSetIndex 1
---@field Slot3 gameWardrobeClothingSetIndex 2
---@field Slot4 gameWardrobeClothingSetIndex 3
---@field Slot5 gameWardrobeClothingSetIndex 4
---@field Slot6 gameWardrobeClothingSetIndex 5
---@field Slot7 gameWardrobeClothingSetIndex 6
---@field COUNT gameWardrobeClothingSetIndex 7
---@field INVALID gameWardrobeClothingSetIndex 8
gameWardrobeClothingSetIndex = {}

---@class gameWorkspotSlidingBehaviour
---@field PlayAtResourcePosition gameWorkspotSlidingBehaviour 1
---@field DontPlayAtResourcePosition gameWorkspotSlidingBehaviour 0
---@field SlideActorAndRotateDevice gameWorkspotSlidingBehaviour 2
gameWorkspotSlidingBehaviour = {}

---@class gameaudioeventsSurfaceDirection
---@field Normal gameaudioeventsSurfaceDirection 0
---@field WallLeft gameaudioeventsSurfaceDirection 1
---@field WallRight gameaudioeventsSurfaceDirection 2
gameaudioeventsSurfaceDirection = {}

---@class gamecheatsystemFlag
---@field God_Immortal gamecheatsystemFlag 1
---@field God_Invulnerable gamecheatsystemFlag 2
---@field Resurrect gamecheatsystemFlag 4
---@field IgnoreTimeDilation gamecheatsystemFlag 8
---@field BypassMagazine gamecheatsystemFlag 16
---@field InfiniteAmmo gamecheatsystemFlag 32
---@field Kill gamecheatsystemFlag 64
---@field Invisible gamecheatsystemFlag 128
gamecheatsystemFlag = {}

---@class gamedataAIActionSecurityAreaType
---@field DANGEROUS gamedataAIActionSecurityAreaType 0
---@field DISABLED gamedataAIActionSecurityAreaType 1
---@field RESTRICTED gamedataAIActionSecurityAreaType 2
---@field SAFE gamedataAIActionSecurityAreaType 3
---@field Count gamedataAIActionSecurityAreaType 4
---@field Invalid gamedataAIActionSecurityAreaType 5
gamedataAIActionSecurityAreaType = {}

---@class gamedataAIActionSecurityNotificationType
---@field COMBAT gamedataAIActionSecurityNotificationType 0
---@field DEESCALATE gamedataAIActionSecurityNotificationType 1
---@field DEFAULT gamedataAIActionSecurityNotificationType 2
---@field ILLEGAL_ACTION gamedataAIActionSecurityNotificationType 3
---@field REPRIMAND_ESCALATE gamedataAIActionSecurityNotificationType 4
---@field REPRIMAND_SUCCESSFUL gamedataAIActionSecurityNotificationType 5
---@field SECURITY_GATE gamedataAIActionSecurityNotificationType 6
---@field Count gamedataAIActionSecurityNotificationType 7
---@field Invalid gamedataAIActionSecurityNotificationType 8
gamedataAIActionSecurityNotificationType = {}

---@class gamedataAIActionTarget
---@field AssignedVehicle gamedataAIActionTarget 0
---@field CombatTarget gamedataAIActionTarget 1
---@field CommandCover gamedataAIActionTarget 2
---@field CommandMovementDestination gamedataAIActionTarget 3
---@field ConsideredCover gamedataAIActionTarget 4
---@field CurrentCover gamedataAIActionTarget 5
---@field CurrentNetrunnerProxy gamedataAIActionTarget 6
---@field CustomWorldPosition gamedataAIActionTarget 7
---@field DesiredCover gamedataAIActionTarget 8
---@field FriendlyTarget gamedataAIActionTarget 9
---@field FurthestNavigableSquadmate gamedataAIActionTarget 10
---@field FurthestSquadmate gamedataAIActionTarget 11
---@field FurthestThreat gamedataAIActionTarget 12
---@field HostileOfficer gamedataAIActionTarget 13
---@field MountedVehicle gamedataAIActionTarget 14
---@field MovementDestination gamedataAIActionTarget 15
---@field NearestDefeatedSquadmate gamedataAIActionTarget 16
---@field NearestNavigableSquadmate gamedataAIActionTarget 17
---@field NearestSquadmate gamedataAIActionTarget 18
---@field NearestThreat gamedataAIActionTarget 19
---@field NetrunnerProxy gamedataAIActionTarget 20
---@field ObjectOfInterest gamedataAIActionTarget 21
---@field Owner gamedataAIActionTarget 22
---@field Player gamedataAIActionTarget 23
---@field PointOfInterest gamedataAIActionTarget 24
---@field RingBackDestination gamedataAIActionTarget 25
---@field RingBackLeftDestination gamedataAIActionTarget 26
---@field RingBackRightDestination gamedataAIActionTarget 27
---@field RingFrontDestination gamedataAIActionTarget 28
---@field RingFrontLeftDestination gamedataAIActionTarget 29
---@field RingFrontRightDestination gamedataAIActionTarget 30
---@field RingLeftDestination gamedataAIActionTarget 31
---@field RingRightDestination gamedataAIActionTarget 32
---@field SelectedCover gamedataAIActionTarget 33
---@field SpawnPosition gamedataAIActionTarget 34
---@field SquadOfficer gamedataAIActionTarget 35
---@field StimSource gamedataAIActionTarget 36
---@field StimTarget gamedataAIActionTarget 37
---@field TargetDevice gamedataAIActionTarget 38
---@field TargetItem gamedataAIActionTarget 39
---@field TopFriendly gamedataAIActionTarget 40
---@field TopThreat gamedataAIActionTarget 41
---@field VisibleFurthestThreat gamedataAIActionTarget 42
---@field VisibleNearestThreat gamedataAIActionTarget 43
---@field VisibleTopThreat gamedataAIActionTarget 44
---@field Count gamedataAIActionTarget 45
---@field Invalid gamedataAIActionTarget 46
gamedataAIActionTarget = {}

---@class gamedataAIActionType
---@field BackUp gamedataAIActionType 0
---@field BattleCry gamedataAIActionType 1
---@field Block gamedataAIActionType 2
---@field CallOff gamedataAIActionType 3
---@field Charge gamedataAIActionType 4
---@field Crouch gamedataAIActionType 5
---@field Dash gamedataAIActionType 6
---@field GrenadeThrow gamedataAIActionType 7
---@field GroupReaction gamedataAIActionType 8
---@field Investigate gamedataAIActionType 9
---@field Melee gamedataAIActionType 10
---@field Peek gamedataAIActionType 11
---@field Quickhack gamedataAIActionType 12
---@field Reprimand gamedataAIActionType 13
---@field Search gamedataAIActionType 14
---@field Shoot gamedataAIActionType 15
---@field Sync gamedataAIActionType 16
---@field TakeCover gamedataAIActionType 17
---@field Takedown gamedataAIActionType 18
---@field Taunt gamedataAIActionType 19
---@field Count gamedataAIActionType 20
---@field Invalid gamedataAIActionType 21
gamedataAIActionType = {}

---@class gamedataAIAdditionalTraceType
---@field Chest gamedataAIAdditionalTraceType 0
---@field Hip gamedataAIAdditionalTraceType 1
---@field Knee gamedataAIAdditionalTraceType 2
---@field Undefined gamedataAIAdditionalTraceType 3
---@field Count gamedataAIAdditionalTraceType 4
---@field Invalid gamedataAIAdditionalTraceType 5
gamedataAIAdditionalTraceType = {}

---@class gamedataAIDirectorEntryStartType
---@field Default gamedataAIDirectorEntryStartType 0
---@field DespawnAllEnemies gamedataAIDirectorEntryStartType 1
---@field DespawnExcessedEnemies gamedataAIDirectorEntryStartType 2
---@field WaitUntilNoEnemies gamedataAIDirectorEntryStartType 3
---@field WaitUntilSameOrLessAmountOfEnemies gamedataAIDirectorEntryStartType 4
---@field Count gamedataAIDirectorEntryStartType 5
---@field Invalid gamedataAIDirectorEntryStartType 6
gamedataAIDirectorEntryStartType = {}

---@class gamedataAIExposureMethodType
---@field BlindFire gamedataAIExposureMethodType 0
---@field Lean gamedataAIExposureMethodType 1
---@field StepOut gamedataAIExposureMethodType 2
---@field Count gamedataAIExposureMethodType 3
---@field Invalid gamedataAIExposureMethodType 4
gamedataAIExposureMethodType = {}

---@class gamedataAIRingType
---@field Approach gamedataAIRingType 0
---@field Close gamedataAIRingType 1
---@field Default gamedataAIRingType 2
---@field Defend gamedataAIRingType 3
---@field Extreme gamedataAIRingType 4
---@field Far gamedataAIRingType 5
---@field LatestActive gamedataAIRingType 6
---@field Medium gamedataAIRingType 7
---@field Melee gamedataAIRingType 8
---@field Support gamedataAIRingType 9
---@field Undefined gamedataAIRingType 10
---@field Count gamedataAIRingType 11
---@field Invalid gamedataAIRingType 12
gamedataAIRingType = {}

---@class gamedataAIRole
---@field Follower gamedataAIRole 0
---@field Patrol gamedataAIRole 1
---@field Count gamedataAIRole 2
---@field Invalid gamedataAIRole 3
gamedataAIRole = {}

---@class gamedataAISmartCompositeType
---@field Selector gamedataAISmartCompositeType 0
---@field SelectorWithMemory gamedataAISmartCompositeType 1
---@field SelectorWithSmartMemory gamedataAISmartCompositeType 2
---@field Sequence gamedataAISmartCompositeType 3
---@field SequenceWithMemory gamedataAISmartCompositeType 4
---@field SequenceWithSmartMemory gamedataAISmartCompositeType 5
---@field Count gamedataAISmartCompositeType 6
---@field Invalid gamedataAISmartCompositeType 7
gamedataAISmartCompositeType = {}

---@class gamedataAISquadType
---@field Attitude gamedataAISquadType 0
---@field Community gamedataAISquadType 1
---@field Global gamedataAISquadType 2
---@field Security gamedataAISquadType 3
---@field Unknown gamedataAISquadType 4
---@field Count gamedataAISquadType 5
---@field Invalid gamedataAISquadType 6
gamedataAISquadType = {}

---@class gamedataAITacticType
---@field Assault gamedataAITacticType 0
---@field Defend gamedataAITacticType 1
---@field Flank gamedataAITacticType 2
---@field Medivac gamedataAITacticType 3
---@field Panic gamedataAITacticType 4
---@field Regroup gamedataAITacticType 5
---@field Retreat gamedataAITacticType 6
---@field Snipe gamedataAITacticType 7
---@field Suppress gamedataAITacticType 8
---@field Count gamedataAITacticType 9
---@field Invalid gamedataAITacticType 10
gamedataAITacticType = {}

---@class gamedataAIThreatPersistenceSource
---@field AddThreat gamedataAIThreatPersistenceSource 0
---@field CatchUp gamedataAIThreatPersistenceSource 1
---@field CommandAimWithWeapon gamedataAIThreatPersistenceSource 2
---@field CommandForceShoot gamedataAIThreatPersistenceSource 3
---@field CommandInjectCombatTarget gamedataAIThreatPersistenceSource 4
---@field CommandInjectThreat gamedataAIThreatPersistenceSource 5
---@field CommandMeleeAttack gamedataAIThreatPersistenceSource 6
---@field CommandShoot gamedataAIThreatPersistenceSource 7
---@field CommandThrowGrenade gamedataAIThreatPersistenceSource 8
---@field Default gamedataAIThreatPersistenceSource 9
---@field SetNewCombatTarget gamedataAIThreatPersistenceSource 10
---@field TrackedBySecuritySystemAgent gamedataAIThreatPersistenceSource 11
---@field Count gamedataAIThreatPersistenceSource 12
---@field Invalid gamedataAIThreatPersistenceSource 13
gamedataAIThreatPersistenceSource = {}

---@class gamedataAITicketType
---@field BackUp gamedataAITicketType 0
---@field BattleCry gamedataAITicketType 1
---@field Block gamedataAITicketType 2
---@field CallOff gamedataAITicketType 3
---@field CatchUp gamedataAITicketType 4
---@field Charge gamedataAITicketType 5
---@field CloseRing gamedataAITicketType 6
---@field CloseRing1stFilter gamedataAITicketType 7
---@field CloseRing2ndFilter gamedataAITicketType 8
---@field Crouch gamedataAITicketType 9
---@field DefaultRing gamedataAITicketType 10
---@field Dodge gamedataAITicketType 11
---@field Equip gamedataAITicketType 12
---@field EquipMelee gamedataAITicketType 13
---@field ExtremeRing gamedataAITicketType 14
---@field ExtremeRing1stFilter gamedataAITicketType 15
---@field ExtremeRing2ndFilter gamedataAITicketType 16
---@field FarRing gamedataAITicketType 17
---@field FarRing1stFilter gamedataAITicketType 18
---@field FarRing2ndFilter gamedataAITicketType 19
---@field GoToCover gamedataAITicketType 20
---@field GrenadeThrow gamedataAITicketType 21
---@field GroupReaction gamedataAITicketType 22
---@field Investigate gamedataAITicketType 23
---@field MediumRing gamedataAITicketType 24
---@field MediumRing1stFilter gamedataAITicketType 25
---@field MediumRing2ndFilter gamedataAITicketType 26
---@field Melee gamedataAITicketType 27
---@field MeleeApproach gamedataAITicketType 28
---@field MeleeRing gamedataAITicketType 29
---@field MeleeRing1stFilter gamedataAITicketType 30
---@field MeleeRing2ndFilter gamedataAITicketType 31
---@field MeleeSupport gamedataAITicketType 32
---@field Peek gamedataAITicketType 33
---@field QuickMelee gamedataAITicketType 34
---@field Quickhack gamedataAITicketType 35
---@field Reload gamedataAITicketType 36
---@field Reprimand gamedataAITicketType 37
---@field Search gamedataAITicketType 38
---@field Shoot gamedataAITicketType 39
---@field SimpleCombat gamedataAITicketType 40
---@field SimpleCombatMovement gamedataAITicketType 41
---@field Strafe gamedataAITicketType 42
---@field StrafeEvade gamedataAITicketType 43
---@field Sync gamedataAITicketType 44
---@field TakeCover gamedataAITicketType 45
---@field Takedown gamedataAITicketType 46
---@field Taunt gamedataAITicketType 47
---@field TauntBackground gamedataAITicketType 48
---@field Count gamedataAITicketType 49
---@field Invalid gamedataAITicketType 50
gamedataAITicketType = {}

---@class gamedataAchievement
---@field Bladerunner gamedataAchievement 0
---@field BornToBeWild gamedataAchievement 1
---@field Breathtaking gamedataAchievement 2
---@field BushidoAndChill gamedataAchievement 3
---@field Cyberjunkie gamedataAchievement 4
---@field Denied gamedataAchievement 5
---@field FollowingTheRiver gamedataAchievement 6
---@field Fortuneteller gamedataAchievement 7
---@field Gearhead gamedataAchievement 8
---@field GetMeThereScottie gamedataAchievement 9
---@field GunKata gamedataAchievement 10
---@field Gunslinger gamedataAchievement 11
---@field HandyMan gamedataAchievement 12
---@field IAmMaxTac gamedataAchievement 13
---@field LikeFatherLikeSon gamedataAchievement 14
---@field LittleTokyo gamedataAchievement 15
---@field MasterRunner gamedataAchievement 16
---@field MaxPain gamedataAchievement 17
---@field MustBeTheRats gamedataAchievement 18
---@field NeverFadeAway gamedataAchievement 19
---@field NoMansLand gamedataAchievement 20
---@field NotTheMobile gamedataAchievement 21
---@field QueenOfTheHighway gamedataAchievement 22
---@field Roleplayer gamedataAchievement 23
---@field Specialist gamedataAchievement 24
---@field Temperance gamedataAchievement 25
---@field ThatIsSoHardForTheKnees gamedataAchievement 26
---@field TheDevil gamedataAchievement 27
---@field TheFool gamedataAchievement 28
---@field TheHermit gamedataAchievement 29
---@field TheHightPriestess gamedataAchievement 30
---@field TheLovers gamedataAchievement 31
---@field TheStar gamedataAchievement 32
---@field TheSun gamedataAchievement 33
---@field TheWheelOfFortune gamedataAchievement 34
---@field TheWorld gamedataAchievement 35
---@field ThisIsPacifica gamedataAchievement 36
---@field TradeUnion gamedataAchievement 37
---@field TrueSoldier gamedataAchievement 38
---@field TrueWarrior gamedataAchievement 39
---@field TwoHeadsOneBullet gamedataAchievement 40
---@field UnderPressure gamedataAchievement 41
---@field VForVendetta gamedataAchievement 42
---@field YipMan gamedataAchievement 43
---@field YouKnowWhoIAm gamedataAchievement 44
---@field Count gamedataAchievement 45
---@field Invalid gamedataAchievement 46
gamedataAchievement = {}

---@class gamedataAffiliation
---@field AfterlifeMercs gamedataAffiliation 0
---@field Aldecaldos gamedataAffiliation 1
---@field Animals gamedataAffiliation 2
---@field Arasaka gamedataAffiliation 3
---@field Biotechnica gamedataAffiliation 4
---@field CityCouncil gamedataAffiliation 5
---@field Civilian gamedataAffiliation 6
---@field KangTao gamedataAffiliation 7
---@field Maelstrom gamedataAffiliation 8
---@field MaelstromAndroid gamedataAffiliation 9
---@field Militech gamedataAffiliation 10
---@field NCPD gamedataAffiliation 11
---@field NetWatch gamedataAffiliation 12
---@field News54 gamedataAffiliation 13
---@field RecordingAgency gamedataAffiliation 14
---@field SSI gamedataAffiliation 15
---@field Scavengers gamedataAffiliation 16
---@field ScavengersAndroid gamedataAffiliation 17
---@field SixthStreet gamedataAffiliation 18
---@field SixthStreetAndroid gamedataAffiliation 19
---@field SouthCalifornia gamedataAffiliation 20
---@field TheMox gamedataAffiliation 21
---@field TraumaTeam gamedataAffiliation 22
---@field TygerClaws gamedataAffiliation 23
---@field Unaffiliated gamedataAffiliation 24
---@field UnaffiliatedCorpo gamedataAffiliation 25
---@field Unknown gamedataAffiliation 26
---@field Valentinos gamedataAffiliation 27
---@field VoodooBoys gamedataAffiliation 28
---@field Wraiths gamedataAffiliation 29
---@field WraithsAndroid gamedataAffiliation 30
---@field Zetatech gamedataAffiliation 31
---@field Count gamedataAffiliation 32
---@field Invalid gamedataAffiliation 33
gamedataAffiliation = {}

---@class gamedataAimAssistType
---@field HeadTarget gamedataAimAssistType 0
---@field LegTarget gamedataAimAssistType 1
---@field MechanicalTarget gamedataAimAssistType 2
---@field Melee gamedataAimAssistType 3
---@field None gamedataAimAssistType 4
---@field QuickHack gamedataAimAssistType 5
---@field Scanning gamedataAimAssistType 6
---@field Shooting gamedataAimAssistType 7
---@field ShootingLimbCyber gamedataAimAssistType 8
---@field Count gamedataAimAssistType 9
---@field Invalid gamedataAimAssistType 10
gamedataAimAssistType = {}

---@class gamedataArchetypeType
---@field AndroidMeleeT1 gamedataArchetypeType 0
---@field AndroidMeleeT2 gamedataArchetypeType 1
---@field AndroidRangedT2 gamedataArchetypeType 2
---@field FastMeleeT2 gamedataArchetypeType 3
---@field FastMeleeT3 gamedataArchetypeType 4
---@field FastRangedT2 gamedataArchetypeType 5
---@field FastRangedT3 gamedataArchetypeType 6
---@field FastShotgunnerT2 gamedataArchetypeType 7
---@field FastShotgunnerT3 gamedataArchetypeType 8
---@field FastSniperT3 gamedataArchetypeType 9
---@field FriendlyGenericRangedT3 gamedataArchetypeType 10
---@field GenericMeleeT1 gamedataArchetypeType 11
---@field GenericMeleeT2 gamedataArchetypeType 12
---@field GenericRangedT1 gamedataArchetypeType 13
---@field GenericRangedT2 gamedataArchetypeType 14
---@field GenericRangedT3 gamedataArchetypeType 15
---@field HeavyMeleeT2 gamedataArchetypeType 16
---@field HeavyMeleeT3 gamedataArchetypeType 17
---@field HeavyRangedT2 gamedataArchetypeType 18
---@field HeavyRangedT3 gamedataArchetypeType 19
---@field NetrunnerT1 gamedataArchetypeType 20
---@field NetrunnerT2 gamedataArchetypeType 21
---@field NetrunnerT3 gamedataArchetypeType 22
---@field ShotgunnerT2 gamedataArchetypeType 23
---@field ShotgunnerT3 gamedataArchetypeType 24
---@field SniperT2 gamedataArchetypeType 25
---@field TechieT2 gamedataArchetypeType 26
---@field TechieT3 gamedataArchetypeType 27
---@field Count gamedataArchetypeType 28
---@field Invalid gamedataArchetypeType 29
gamedataArchetypeType = {}

---@class gamedataAttackSubtype
---@field BlockAttack gamedataAttackSubtype 0
---@field ComboAttack gamedataAttackSubtype 1
---@field CrouchAttack gamedataAttackSubtype 2
---@field DeflectAttack gamedataAttackSubtype 3
---@field EquipAttack gamedataAttackSubtype 4
---@field FinalAttack gamedataAttackSubtype 5
---@field JumpAttack gamedataAttackSubtype 6
---@field SafeAttack gamedataAttackSubtype 7
---@field SprintAttack gamedataAttackSubtype 8
---@field ThrowAttack gamedataAttackSubtype 9
---@field Count gamedataAttackSubtype 10
---@field Invalid gamedataAttackSubtype 11
gamedataAttackSubtype = {}

---@class gamedataAttackType
---@field ChargedWhipAttack gamedataAttackType 0
---@field Direct gamedataAttackType 1
---@field Effect gamedataAttackType 2
---@field Explosion gamedataAttackType 3
---@field GuardBreak gamedataAttackType 4
---@field Hack gamedataAttackType 5
---@field Melee gamedataAttackType 6
---@field PressureWave gamedataAttackType 7
---@field QuickMelee gamedataAttackType 8
---@field Ranged gamedataAttackType 9
---@field Reflect gamedataAttackType 10
---@field StrongMelee gamedataAttackType 11
---@field Thrown gamedataAttackType 12
---@field WhipAttack gamedataAttackType 13
---@field Count gamedataAttackType 14
---@field Invalid gamedataAttackType 15
gamedataAttackType = {}

---@class gamedataBuildType
---@field CombatNetrunner0 gamedataBuildType 0
---@field CombatNetrunner10 gamedataBuildType 1
---@field CombatNetrunner15 gamedataBuildType 2
---@field CombatNetrunner18 gamedataBuildType 3
---@field CombatNetrunner20 gamedataBuildType 4
---@field CombatNetrunner25 gamedataBuildType 5
---@field CombatNetrunner30 gamedataBuildType 6
---@field CombatNetrunner35 gamedataBuildType 7
---@field CombatNetrunner40 gamedataBuildType 8
---@field CombatNetrunner5 gamedataBuildType 9
---@field CombatNetrunner50 gamedataBuildType 10
---@field CorporateStarting gamedataBuildType 11
---@field E32019NetrunnerPhase1 gamedataBuildType 12
---@field E32019StrongSoloPhase1 gamedataBuildType 13
---@field FunctionalTestsProgressionBuildTest gamedataBuildType 14
---@field FunctionalTestsStartingBuild gamedataBuildType 15
---@field GYMcclBuild gamedataBuildType 16
---@field GymSmoketestMaxedBuild gamedataBuildType 17
---@field HandsOnStarting gamedataBuildType 18
---@field ItemPass_BaseBuild gamedataBuildType 19
---@field ItemPass_FactionMeleeMods gamedataBuildType 20
---@field ItemPass_FactionRangedMods gamedataBuildType 21
---@field ItemPass_IconicMods gamedataBuildType 22
---@field ItemPass_LegendaryMods gamedataBuildType 23
---@field ItemPass_PowerMods gamedataBuildType 24
---@field ItemPass_SmartMods gamedataBuildType 25
---@field ItemPass_StandardMods gamedataBuildType 26
---@field ItemPass_TechMods gamedataBuildType 27
---@field JohnnyQ101 gamedataBuildType 28
---@field JohnnyQ108 gamedataBuildType 29
---@field JohnnyQ204 gamedataBuildType 30
---@field MaxSkillsAllWeapons gamedataBuildType 31
---@field MeleeCombat0 gamedataBuildType 32
---@field MeleeCombat10 gamedataBuildType 33
---@field MeleeCombat15 gamedataBuildType 34
---@field MeleeCombat20 gamedataBuildType 35
---@field MeleeCombat25 gamedataBuildType 36
---@field MeleeCombat30 gamedataBuildType 37
---@field MeleeCombat35 gamedataBuildType 38
---@field MeleeCombat40 gamedataBuildType 39
---@field MeleeCombat45 gamedataBuildType 40
---@field MeleeCombat5 gamedataBuildType 41
---@field MeleeCombat50 gamedataBuildType 42
---@field NomadStarting gamedataBuildType 43
---@field RangedCombat0 gamedataBuildType 44
---@field RangedCombat10 gamedataBuildType 45
---@field RangedCombat15 gamedataBuildType 46
---@field RangedCombat20 gamedataBuildType 47
---@field RangedCombat25 gamedataBuildType 48
---@field RangedCombat30 gamedataBuildType 49
---@field RangedCombat35 gamedataBuildType 50
---@field RangedCombat40 gamedataBuildType 51
---@field RangedCombat45 gamedataBuildType 52
---@field RangedCombat5 gamedataBuildType 53
---@field RangedCombat50 gamedataBuildType 54
---@field StartingBuild gamedataBuildType 55
---@field StreetKidStarting gamedataBuildType 56
---@field UIStressTest gamedataBuildType 57
---@field mech_netrunner gamedataBuildType 58
---@field q003_royce_netrunner gamedataBuildType 59
---@field q003_royce_noBuild gamedataBuildType 60
---@field q003_royce_solo gamedataBuildType 61
---@field q110_sasquatch_netrunner gamedataBuildType 62
---@field q110_sasquatch_noBuild gamedataBuildType 63
---@field q110_sasquatch_solo gamedataBuildType 64
---@field q112_oda_netrunner gamedataBuildType 65
---@field q112_oda_noBuild gamedataBuildType 66
---@field q112_oda_solo gamedataBuildType 67
---@field q113_smasher_melee gamedataBuildType 68
---@field q113_smasher_netrunner gamedataBuildType 69
---@field q113_smasher_noBuild gamedataBuildType 70
---@field q113_smasher_solo gamedataBuildType 71
---@field CpoAssassinBuild gamedataBuildType 72
---@field CpoDefaultBuild gamedataBuildType 73
---@field CpoNetrunnerBuild gamedataBuildType 74
---@field CpoSoloBuild gamedataBuildType 75
---@field CpoTechieBuild gamedataBuildType 76
---@field Count gamedataBuildType 77
---@field Invalid gamedataBuildType 78
gamedataBuildType = {}

---@class gamedataChargeStep
---@field Idle gamedataChargeStep 0
---@field Charging gamedataChargeStep 1
---@field Charged gamedataChargeStep 2
---@field Overcharging gamedataChargeStep 3
---@field Discharging gamedataChargeStep 4
gamedataChargeStep = {}

---@class gamedataCheckType
---@field Category gamedataCheckType 0
---@field Evolution gamedataCheckType 1
---@field FullyModded gamedataCheckType 2
---@field None gamedataCheckType 3
---@field Record gamedataCheckType 4
---@field Tag gamedataCheckType 5
---@field Type gamedataCheckType 6
---@field Count gamedataCheckType 7
---@field Invalid gamedataCheckType 8
gamedataCheckType = {}

---@class gamedataChoiceCaptionPartType
---@field Blueline gamedataChoiceCaptionPartType 0
---@field Icon gamedataChoiceCaptionPartType 1
---@field QuickhackCost gamedataChoiceCaptionPartType 2
---@field Tag gamedataChoiceCaptionPartType 3
---@field Text gamedataChoiceCaptionPartType 4
---@field Count gamedataChoiceCaptionPartType 5
---@field Invalid gamedataChoiceCaptionPartType 6
gamedataChoiceCaptionPartType = {}

---@class gamedataCompanionDistancePreset
---@field Close gamedataCompanionDistancePreset 0
---@field Far gamedataCompanionDistancePreset 1
---@field Medium gamedataCompanionDistancePreset 2
---@field VeryFar gamedataCompanionDistancePreset 3
---@field Count gamedataCompanionDistancePreset 4
---@field Invalid gamedataCompanionDistancePreset 5
gamedataCompanionDistancePreset = {}

---@class gamedataConsumableBaseName
---@field Alcohol gamedataConsumableBaseName 0
---@field BonesMcCoy70 gamedataConsumableBaseName 1
---@field CarryCapacityBooster gamedataConsumableBaseName 2
---@field Drinkable gamedataConsumableBaseName 3
---@field Edible gamedataConsumableBaseName 4
---@field FirstAidWhiff gamedataConsumableBaseName 5
---@field HealthBooster gamedataConsumableBaseName 6
---@field MemoryBooster gamedataConsumableBaseName 7
---@field OxyBooster gamedataConsumableBaseName 8
---@field StaminaBooster gamedataConsumableBaseName 9
---@field Count gamedataConsumableBaseName 10
---@field Invalid gamedataConsumableBaseName 11
gamedataConsumableBaseName = {}

---@class gamedataConsumableType
---@field Drug gamedataConsumableType 0
---@field Medical gamedataConsumableType 1
---@field Count gamedataConsumableType 2
---@field Invalid gamedataConsumableType 3
gamedataConsumableType = {}

---@class gamedataDamageType
---@field Chemical gamedataDamageType 0
---@field Electric gamedataDamageType 1
---@field Physical gamedataDamageType 2
---@field Thermal gamedataDamageType 3
---@field Count gamedataDamageType 4
---@field Invalid gamedataDamageType 5
gamedataDamageType = {}

---@class gamedataDataNodeType
---@field File gamedataDataNodeType 0
---@field Group gamedataDataNodeType 1
---@field Variable gamedataDataNodeType 2
---@field Value gamedataDataNodeType 3
---@field SimpleValue gamedataDataNodeType 4
---@field ComplexValue gamedataDataNodeType 5
gamedataDataNodeType = {}

---@class gamedataDefenseMode
---@field DefendAll gamedataDefenseMode 0
---@field DefendMelee gamedataDefenseMode 1
---@field DefendRanged gamedataDefenseMode 2
---@field NoDefend gamedataDefenseMode 3
---@field Count gamedataDefenseMode 4
---@field Invalid gamedataDefenseMode 5
gamedataDefenseMode = {}

---@class gamedataDevelopmentPointType
---@field Attribute gamedataDevelopmentPointType 0
---@field Primary gamedataDevelopmentPointType 1
---@field Secondary gamedataDevelopmentPointType 2
---@field Count gamedataDevelopmentPointType 3
---@field Invalid gamedataDevelopmentPointType 4
gamedataDevelopmentPointType = {}

---@class gamedataDistrict
---@field ArasakaWaterfront gamedataDistrict 0
---@field ArasakaWaterfront_AbandonedWarehouse gamedataDistrict 1
---@field ArasakaWaterfront_KonpekiPlaza gamedataDistrict 2
---@field Arroyo gamedataDistrict 3
---@field Arroyo_Arasaka_Warehouse gamedataDistrict 4
---@field Arroyo_ClairesGarage gamedataDistrict 5
---@field Arroyo_CytechFactory gamedataDistrict 6
---@field Arroyo_Kendachi gamedataDistrict 7
---@field Arroyo_KenmoreCafe gamedataDistrict 8
---@field Arroyo_LasPalapas gamedataDistrict 9
---@field Arroyo_Red_Dirt gamedataDistrict 10
---@field Arroyo_TireEmpire gamedataDistrict 11
---@field Badlands gamedataDistrict 12
---@field Badlands_BiotechnicaFlats gamedataDistrict 13
---@field Badlands_DryCreek gamedataDistrict 14
---@field Badlands_JacksonPlains gamedataDistrict 15
---@field Badlands_LagunaBend gamedataDistrict 16
---@field Badlands_LasPalapas gamedataDistrict 17
---@field Badlands_NorthSunriseOilField gamedataDistrict 18
---@field Badlands_RattlesnakeCreek gamedataDistrict 19
---@field Badlands_RedPeaks gamedataDistrict 20
---@field Badlands_RockyRidge gamedataDistrict 21
---@field Badlands_SantaClara gamedataDistrict 22
---@field Badlands_SierraSonora gamedataDistrict 23
---@field Badlands_SoCalBorderCrossing gamedataDistrict 24
---@field Badlands_VasquezPass gamedataDistrict 25
---@field Badlands_Yucca gamedataDistrict 26
---@field Badlands_YuccaGarage gamedataDistrict 27
---@field Badlands_YuccaRadioTower gamedataDistrict 28
---@field CharterHill gamedataDistrict 29
---@field CharterHill_PowerPlant gamedataDistrict 30
---@field CityCenter gamedataDistrict 31
---@field Coastview gamedataDistrict 32
---@field Coastview_BattysHotel gamedataDistrict 33
---@field Coastview_ButcherShop gamedataDistrict 34
---@field Coastview_GrandImperialMall gamedataDistrict 35
---@field Coastview_RundownApartment gamedataDistrict 36
---@field Coastview_VDBChapel gamedataDistrict 37
---@field Coastview_VDBMaglev gamedataDistrict 38
---@field Coastview_q110Cyberspace gamedataDistrict 39
---@field CorpoPlaza gamedataDistrict 40
---@field CorpoPlaza_Apartment gamedataDistrict 41
---@field CorpoPlaza_ArasakaTowerAtrium gamedataDistrict 42
---@field CorpoPlaza_ArasakaTowerCEOFloor gamedataDistrict 43
---@field CorpoPlaza_ArasakaTowerJenkins gamedataDistrict 44
---@field CorpoPlaza_ArasakaTowerJungle gamedataDistrict 45
---@field CorpoPlaza_ArasakaTowerLobby gamedataDistrict 46
---@field CorpoPlaza_ArasakaTowerNest gamedataDistrict 47
---@field CorpoPlaza_ArasakaTowerSaburoOffice gamedataDistrict 48
---@field CorpoPlaza_ArasakaTowerUnlistedFloors gamedataDistrict 49
---@field CorpoPlaza_ArasakaTowerUpperAtrium gamedataDistrict 50
---@field CorpoPlaza_q201Cyberspace gamedataDistrict 51
---@field Downtown gamedataDistrict 52
---@field Downtown_Jinguji gamedataDistrict 53
---@field Downtown_TheHammer gamedataDistrict 54
---@field Glen gamedataDistrict 55
---@field Glen_Apartment gamedataDistrict 56
---@field Glen_Embers gamedataDistrict 57
---@field Glen_MusicStore gamedataDistrict 58
---@field Glen_NCPDLab gamedataDistrict 59
---@field Glen_WichedTires gamedataDistrict 60
---@field Heywood gamedataDistrict 61
---@field JapanTown gamedataDistrict 62
---@field JapanTown_Apartment gamedataDistrict 63
---@field JapanTown_Clouds gamedataDistrict 64
---@field JapanTown_DarkMatter gamedataDistrict 65
---@field JapanTown_Fingers gamedataDistrict 66
---@field JapanTown_FourthWallBdStudio gamedataDistrict 67
---@field JapanTown_HiromisApartment gamedataDistrict 68
---@field JapanTown_MegabuildingH8 gamedataDistrict 69
---@field JapanTown_VR_Tutorial gamedataDistrict 70
---@field JapanTown_Wakakos_Pachinko_Parlor gamedataDistrict 71
---@field Kabuki gamedataDistrict 72
---@field Kabuki_JudysApartment gamedataDistrict 73
---@field Kabuki_LizziesBar gamedataDistrict 74
---@field Kabuki_NoTellMotel gamedataDistrict 75
---@field LagunaBend_LakeHut gamedataDistrict 76
---@field LittleChina gamedataDistrict 77
---@field LittleChina_Afterlife gamedataDistrict 78
---@field LittleChina_MistysShop gamedataDistrict 79
---@field LittleChina_Q101Cyberspace gamedataDistrict 80
---@field LittleChina_RiotClub gamedataDistrict 81
---@field LittleChina_TomsDiner gamedataDistrict 82
---@field LittleChina_VApartment gamedataDistrict 83
---@field LittleChina_VictorsClinic gamedataDistrict 84
---@field NorthBadlands gamedataDistrict 85
---@field NorthOaks gamedataDistrict 86
---@field NorthOaks_Arasaka_Estate gamedataDistrict 87
---@field NorthOaks_Columbarium gamedataDistrict 88
---@field NorthOaks_Denny_Estate gamedataDistrict 89
---@field NorthOaks_Kerry_Estate gamedataDistrict 90
---@field Northside gamedataDistrict 91
---@field Northside_All_Foods gamedataDistrict 92
---@field Northside_Apartment gamedataDistrict 93
---@field Northside_CleanCut gamedataDistrict 94
---@field Northside_Totentaz gamedataDistrict 95
---@field Northside_WNS gamedataDistrict 96
---@field Pacifica gamedataDistrict 97
---@field RanchoCoronado gamedataDistrict 98
---@field RanchoCoronado_Caliente gamedataDistrict 99
---@field RanchoCoronado_GunORama gamedataDistrict 100
---@field RanchoCoronado_Piez gamedataDistrict 101
---@field RanchoCoronado_Softsys gamedataDistrict 102
---@field RanchoCoronado_Stylishly gamedataDistrict 103
---@field SantoDomingo gamedataDistrict 104
---@field SouthBadlands gamedataDistrict 105
---@field SouthBadlands_EdgewoodFarm gamedataDistrict 106
---@field SouthBadlands_PoppyFarm gamedataDistrict 107
---@field SouthBadlands_TrailerPark gamedataDistrict 108
---@field SouthBadlands_q201SpaceStation gamedataDistrict 109
---@field VistaDelRey gamedataDistrict 110
---@field Vista_del_Rey_Delamain gamedataDistrict 111
---@field Vista_del_Rey_LaCatrina gamedataDistrict 112
---@field Vista_del_rey_Abandoned_Apartment_Building gamedataDistrict 113
---@field Vista_del_rey_ElCoyoteCojo gamedataDistrict 114
---@field Watson gamedataDistrict 115
---@field Wellsprings gamedataDistrict 116
---@field WestWindEstate gamedataDistrict 117
---@field Westbrook gamedataDistrict 118
---@field Count gamedataDistrict 119
---@field Invalid gamedataDistrict 120
gamedataDistrict = {}

---@class gamedataEffectorTimeDilationDriver
---@field Source gamedataEffectorTimeDilationDriver 0
---@field Target gamedataEffectorTimeDilationDriver 1
---@field World gamedataEffectorTimeDilationDriver 2
---@field Count gamedataEffectorTimeDilationDriver 3
---@field Invalid gamedataEffectorTimeDilationDriver 4
gamedataEffectorTimeDilationDriver = {}

---@class gamedataEquipmentArea
---@field AbilityCW gamedataEquipmentArea 0
---@field ArmsCW gamedataEquipmentArea 1
---@field BaseFists gamedataEquipmentArea 2
---@field BotCPU gamedataEquipmentArea 3
---@field BotChassisModule gamedataEquipmentArea 4
---@field BotMainModule gamedataEquipmentArea 5
---@field BotSoftware gamedataEquipmentArea 6
---@field CardiovascularSystemCW gamedataEquipmentArea 7
---@field Consumable gamedataEquipmentArea 8
---@field CyberwareWheel gamedataEquipmentArea 9
---@field EyesCW gamedataEquipmentArea 10
---@field Face gamedataEquipmentArea 11
---@field Feet gamedataEquipmentArea 12
---@field FrontalCortexCW gamedataEquipmentArea 13
---@field Gadget gamedataEquipmentArea 14
---@field HandsCW gamedataEquipmentArea 15
---@field Head gamedataEquipmentArea 16
---@field ImmuneSystemCW gamedataEquipmentArea 17
---@field InnerChest gamedataEquipmentArea 18
---@field IntegumentarySystemCW gamedataEquipmentArea 19
---@field LeftArm gamedataEquipmentArea 20
---@field Legs gamedataEquipmentArea 21
---@field LegsCW gamedataEquipmentArea 22
---@field MusculoskeletalSystemCW gamedataEquipmentArea 23
---@field NervousSystemCW gamedataEquipmentArea 24
---@field OuterChest gamedataEquipmentArea 25
---@field Outfit gamedataEquipmentArea 26
---@field PersonalLink gamedataEquipmentArea 27
---@field PlayerTattoo gamedataEquipmentArea 28
---@field Quest gamedataEquipmentArea 29
---@field QuickSlot gamedataEquipmentArea 30
---@field QuickWheel gamedataEquipmentArea 31
---@field RightArm gamedataEquipmentArea 32
---@field SilverhandArm gamedataEquipmentArea 33
---@field Splinter gamedataEquipmentArea 34
---@field SystemReplacementCW gamedataEquipmentArea 35
---@field UnderwearBottom gamedataEquipmentArea 36
---@field UnderwearTop gamedataEquipmentArea 37
---@field VDefaultHandgun gamedataEquipmentArea 38
---@field Weapon gamedataEquipmentArea 39
---@field WeaponHeavy gamedataEquipmentArea 40
---@field WeaponLeft gamedataEquipmentArea 41
---@field WeaponWheel gamedataEquipmentArea 42
---@field Count gamedataEquipmentArea 43
---@field Invalid gamedataEquipmentArea 44
gamedataEquipmentArea = {}

---@class gamedataEthnicity
---@field African gamedataEthnicity 0
---@field AfricanAmerican gamedataEthnicity 1
---@field AmericanEnglish gamedataEthnicity 2
---@field Arabic gamedataEthnicity 3
---@field Brasilian gamedataEthnicity 4
---@field BritishEnglish gamedataEthnicity 5
---@field Caribbean gamedataEthnicity 6
---@field Chinese gamedataEthnicity 7
---@field Default gamedataEthnicity 8
---@field Indian gamedataEthnicity 9
---@field Japanese gamedataEthnicity 10
---@field Mexican gamedataEthnicity 11
---@field NativeAmerican gamedataEthnicity 12
---@field Russian gamedataEthnicity 13
---@field Count gamedataEthnicity 14
---@field Invalid gamedataEthnicity 15
gamedataEthnicity = {}

---@class gamedataFxAction
---@field EnterCharge gamedataFxAction 0
---@field EnterDischarge gamedataFxAction 1
---@field EnterLowAmmo gamedataFxAction 2
---@field EnterNoAmmo gamedataFxAction 3
---@field EnterOverheat gamedataFxAction 4
---@field EnterReload gamedataFxAction 5
---@field ExitCharge gamedataFxAction 6
---@field ExitDischarge gamedataFxAction 7
---@field ExitLowAmmo gamedataFxAction 8
---@field ExitNoAmmo gamedataFxAction 9
---@field ExitOverheat gamedataFxAction 10
---@field ExitReload gamedataFxAction 11
---@field ExitShoot gamedataFxAction 12
---@field MeleeBlock gamedataFxAction 13
---@field MeleeHit gamedataFxAction 14
---@field MuzzleBrakeShoot gamedataFxAction 15
---@field Shoot gamedataFxAction 16
---@field SilencedShoot gamedataFxAction 17
---@field Count gamedataFxAction 18
---@field Invalid gamedataFxAction 19
gamedataFxAction = {}

---@class gamedataFxActionType
---@field BreakLoop gamedataFxActionType 0
---@field Kill gamedataFxActionType 1
---@field Start gamedataFxActionType 2
---@field Count gamedataFxActionType 3
---@field Invalid gamedataFxActionType 4
gamedataFxActionType = {}

---@class gamedataGender
---@field Default gamedataGender 0
---@field Female gamedataGender 1
---@field Male gamedataGender 2
---@field Count gamedataGender 3
---@field Invalid gamedataGender 4
gamedataGender = {}

---@class gamedataGrenadeDeliveryMethodType
---@field Homing gamedataGrenadeDeliveryMethodType 0
---@field Regular gamedataGrenadeDeliveryMethodType 1
---@field Sticky gamedataGrenadeDeliveryMethodType 2
---@field Count gamedataGrenadeDeliveryMethodType 3
---@field Invalid gamedataGrenadeDeliveryMethodType 4
gamedataGrenadeDeliveryMethodType = {}

---@class gamedataGroupNodeGroupVariableDeriveInfo
---@field FullyDerived gamedataGroupNodeGroupVariableDeriveInfo 0
---@field TypeDerived gamedataGroupNodeGroupVariableDeriveInfo 1
---@field ValueChanged gamedataGroupNodeGroupVariableDeriveInfo 2
---@field NotDerived gamedataGroupNodeGroupVariableDeriveInfo 3
gamedataGroupNodeGroupVariableDeriveInfo = {}

---@class gamedataGroupNodeInheritanceState
---@field Unresolved gamedataGroupNodeInheritanceState 0
---@field Resolving gamedataGroupNodeInheritanceState 1
---@field Resolved gamedataGroupNodeInheritanceState 2
gamedataGroupNodeInheritanceState = {}

---@class gamedataHitPrereqConditionType
---@field AgentMoving gamedataHitPrereqConditionType 0
---@field AmmoState gamedataHitPrereqConditionType 1
---@field AttackSubType gamedataHitPrereqConditionType 2
---@field AttackType gamedataHitPrereqConditionType 3
---@field BodyPart gamedataHitPrereqConditionType 4
---@field DamageOverTimeType gamedataHitPrereqConditionType 5
---@field DamageType gamedataHitPrereqConditionType 6
---@field DistanceCovered gamedataHitPrereqConditionType 7
---@field HitFlag gamedataHitPrereqConditionType 8
---@field InstigatorType gamedataHitPrereqConditionType 9
---@field SameTarget gamedataHitPrereqConditionType 10
---@field SourceType gamedataHitPrereqConditionType 11
---@field StatPool gamedataHitPrereqConditionType 12
---@field StatPoolComparison gamedataHitPrereqConditionType 13
---@field StatusEffectPresent gamedataHitPrereqConditionType 14
---@field TargetKilled gamedataHitPrereqConditionType 15
---@field TargetNPCRarity gamedataHitPrereqConditionType 16
---@field TargetNPCType gamedataHitPrereqConditionType 17
---@field TargetType gamedataHitPrereqConditionType 18
---@field WeaponType gamedataHitPrereqConditionType 19
---@field WoundedTriggered gamedataHitPrereqConditionType 20
---@field Count gamedataHitPrereqConditionType 21
---@field Invalid gamedataHitPrereqConditionType 22
gamedataHitPrereqConditionType = {}

---@class gamedataImprovementRelation
---@field Direct gamedataImprovementRelation 0
---@field Inverse gamedataImprovementRelation 1
---@field None gamedataImprovementRelation 2
---@field Count gamedataImprovementRelation 3
---@field Invalid gamedataImprovementRelation 4
gamedataImprovementRelation = {}

---@class gamedataItemCategory
---@field Clothing gamedataItemCategory 0
---@field Consumable gamedataItemCategory 1
---@field Cyberware gamedataItemCategory 2
---@field Gadget gamedataItemCategory 3
---@field General gamedataItemCategory 4
---@field Part gamedataItemCategory 5
---@field Weapon gamedataItemCategory 6
---@field Count gamedataItemCategory 7
---@field Invalid gamedataItemCategory 8
gamedataItemCategory = {}

---@class gamedataItemStructure
---@field BlueprintStackable gamedataItemStructure 0
---@field Stackable gamedataItemStructure 1
---@field Unique gamedataItemStructure 2
---@field Count gamedataItemStructure 3
---@field Invalid gamedataItemStructure 4
gamedataItemStructure = {}

---@class gamedataItemType
---@field Clo_Face gamedataItemType 0
---@field Clo_Feet gamedataItemType 1
---@field Clo_Head gamedataItemType 2
---@field Clo_InnerChest gamedataItemType 3
---@field Clo_Legs gamedataItemType 4
---@field Clo_OuterChest gamedataItemType 5
---@field Clo_Outfit gamedataItemType 6
---@field Con_Ammo gamedataItemType 7
---@field Con_Edible gamedataItemType 8
---@field Con_Inhaler gamedataItemType 9
---@field Con_Injector gamedataItemType 10
---@field Con_LongLasting gamedataItemType 11
---@field Con_Skillbook gamedataItemType 12
---@field Cyb_Ability gamedataItemType 13
---@field Cyb_Launcher gamedataItemType 14
---@field Cyb_MantisBlades gamedataItemType 15
---@field Cyb_NanoWires gamedataItemType 16
---@field Cyb_StrongArms gamedataItemType 17
---@field Cyberware gamedataItemType 18
---@field Fla_Launcher gamedataItemType 19
---@field Fla_Rifle gamedataItemType 20
---@field Fla_Shock gamedataItemType 21
---@field Fla_Support gamedataItemType 22
---@field Gad_Grenade gamedataItemType 23
---@field Gen_CraftingMaterial gamedataItemType 24
---@field Gen_DataBank gamedataItemType 25
---@field Gen_Jewellery gamedataItemType 26
---@field Gen_Junk gamedataItemType 27
---@field Gen_Keycard gamedataItemType 28
---@field Gen_Misc gamedataItemType 29
---@field Gen_Readable gamedataItemType 30
---@field GrenadeDelivery gamedataItemType 31
---@field Grenade_Core gamedataItemType 32
---@field Prt_BootsFabricEnhancer gamedataItemType 33
---@field Prt_Capacitor gamedataItemType 34
---@field Prt_FabricEnhancer gamedataItemType 35
---@field Prt_FaceFabricEnhancer gamedataItemType 36
---@field Prt_Fragment gamedataItemType 37
---@field Prt_HandgunMuzzle gamedataItemType 38
---@field Prt_HeadFabricEnhancer gamedataItemType 39
---@field Prt_Magazine gamedataItemType 40
---@field Prt_Mod gamedataItemType 41
---@field Prt_Muzzle gamedataItemType 42
---@field Prt_OuterTorsoFabricEnhancer gamedataItemType 43
---@field Prt_PantsFabricEnhancer gamedataItemType 44
---@field Prt_Program gamedataItemType 45
---@field Prt_Receiver gamedataItemType 46
---@field Prt_RifleMuzzle gamedataItemType 47
---@field Prt_Scope gamedataItemType 48
---@field Prt_ScopeRail gamedataItemType 49
---@field Prt_Stock gamedataItemType 50
---@field Prt_TargetingSystem gamedataItemType 51
---@field Prt_TorsoFabricEnhancer gamedataItemType 52
---@field VendorToken gamedataItemType 53
---@field Wea_AssaultRifle gamedataItemType 54
---@field Wea_Axe gamedataItemType 55
---@field Wea_Chainsword gamedataItemType 56
---@field Wea_Fists gamedataItemType 57
---@field Wea_Hammer gamedataItemType 58
---@field Wea_Handgun gamedataItemType 59
---@field Wea_HeavyMachineGun gamedataItemType 60
---@field Wea_Katana gamedataItemType 61
---@field Wea_Knife gamedataItemType 62
---@field Wea_LightMachineGun gamedataItemType 63
---@field Wea_LongBlade gamedataItemType 64
---@field Wea_Machete gamedataItemType 65
---@field Wea_Melee gamedataItemType 66
---@field Wea_OneHandedClub gamedataItemType 67
---@field Wea_PrecisionRifle gamedataItemType 68
---@field Wea_Revolver gamedataItemType 69
---@field Wea_Rifle gamedataItemType 70
---@field Wea_ShortBlade gamedataItemType 71
---@field Wea_Shotgun gamedataItemType 72
---@field Wea_ShotgunDual gamedataItemType 73
---@field Wea_SniperRifle gamedataItemType 74
---@field Wea_SubmachineGun gamedataItemType 75
---@field Wea_TwoHandedClub gamedataItemType 76
---@field Count gamedataItemType 77
---@field Invalid gamedataItemType 78
gamedataItemType = {}

---@class gamedataLifePath
---@field Corporate gamedataLifePath 0
---@field Nomad gamedataLifePath 1
---@field StreetKid gamedataLifePath 2
---@field Count gamedataLifePath 3
---@field Invalid gamedataLifePath 4
gamedataLifePath = {}

---@class gamedataLocomotionMode
---@field Moving gamedataLocomotionMode 0
---@field Static gamedataLocomotionMode 1
---@field Count gamedataLocomotionMode 2
---@field Invalid gamedataLocomotionMode 3
gamedataLocomotionMode = {}

---@class gamedataMappinPhase
---@field CompletedPhase gamedataMappinPhase 0
---@field DefaultPhase gamedataMappinPhase 1
---@field DiscoveredPhase gamedataMappinPhase 2
---@field UndiscoveredPhase gamedataMappinPhase 3
---@field Count gamedataMappinPhase 4
---@field Invalid gamedataMappinPhase 5
gamedataMappinPhase = {}

---@class gamedataMappinVariant
---@field ActionDealDamageVariant gamedataMappinVariant 0
---@field ActionFastSoloVariant gamedataMappinVariant 1
---@field ActionGenericInteractionVariant gamedataMappinVariant 2
---@field ActionNetrunnerAccessPointVariant gamedataMappinVariant 3
---@field ActionNetrunnerVariant gamedataMappinVariant 4
---@field ActionScanVariant gamedataMappinVariant 5
---@field ActionSoloVariant gamedataMappinVariant 6
---@field ActionTechieVariant gamedataMappinVariant 7
---@field AimVariant gamedataMappinVariant 8
---@field AllowVariant gamedataMappinVariant 9
---@field ApartmentVariant gamedataMappinVariant 10
---@field ArrowVariant gamedataMappinVariant 11
---@field BackOutVariant gamedataMappinVariant 12
---@field BountyHuntVariant gamedataMappinVariant 13
---@field CallVariant gamedataMappinVariant 14
---@field ChangeToFriendlyVariant gamedataMappinVariant 15
---@field ClientInDistressVariant gamedataMappinVariant 16
---@field ConversationVariant gamedataMappinVariant 17
---@field ConvoyVariant gamedataMappinVariant 18
---@field CoolVariant gamedataMappinVariant 19
---@field CourierVariant gamedataMappinVariant 20
---@field CustomPositionVariant gamedataMappinVariant 21
---@field CyberspaceNPC gamedataMappinVariant 22
---@field CyberspaceObject gamedataMappinVariant 23
---@field DefaultInteractionVariant gamedataMappinVariant 24
---@field DefaultQuestVariant gamedataMappinVariant 25
---@field DefaultVariant gamedataMappinVariant 26
---@field DistractVariant gamedataMappinVariant 27
---@field DropboxVariant gamedataMappinVariant 28
---@field DynamicEventVariant gamedataMappinVariant 29
---@field EffectAlarmVariant gamedataMappinVariant 30
---@field EffectControlNetworkVariant gamedataMappinVariant 31
---@field EffectControlOtherDeviceVariant gamedataMappinVariant 32
---@field EffectControlSelfVariant gamedataMappinVariant 33
---@field EffectCutPowerVariant gamedataMappinVariant 34
---@field EffectDistractVariant gamedataMappinVariant 35
---@field EffectDropPointVariant gamedataMappinVariant 36
---@field EffectExplodeLethalVariant gamedataMappinVariant 37
---@field EffectExplodeNonLethalVariant gamedataMappinVariant 38
---@field EffectFallVariant gamedataMappinVariant 39
---@field EffectGrantInformationVariant gamedataMappinVariant 40
---@field EffectHideBodyVariant gamedataMappinVariant 41
---@field EffectLootVariant gamedataMappinVariant 42
---@field EffectOpenPathVariant gamedataMappinVariant 43
---@field EffectPushVariant gamedataMappinVariant 44
---@field EffectServicePointVariant gamedataMappinVariant 45
---@field EffectShootVariant gamedataMappinVariant 46
---@field EffectSpreadGasVariant gamedataMappinVariant 47
---@field EffectStoreItemsVariant gamedataMappinVariant 48
---@field ExclamationMarkVariant gamedataMappinVariant 49
---@field FailedCrossingVariant gamedataMappinVariant 50
---@field FastTravelVariant gamedataMappinVariant 51
---@field FixerVariant gamedataMappinVariant 52
---@field FocusClueVariant gamedataMappinVariant 53
---@field GPSForcedPathVariant gamedataMappinVariant 54
---@field GPSPortalVariant gamedataMappinVariant 55
---@field GangWatchVariant gamedataMappinVariant 56
---@field GenericRoleVariant gamedataMappinVariant 57
---@field GetInVariant gamedataMappinVariant 58
---@field GetUpVariant gamedataMappinVariant 59
---@field GrenadeVariant gamedataMappinVariant 60
---@field GunSuicideVariant gamedataMappinVariant 61
---@field HandVariant gamedataMappinVariant 62
---@field HazardWarningVariant gamedataMappinVariant 63
---@field HiddenStashVariant gamedataMappinVariant 64
---@field HitVariant gamedataMappinVariant 65
---@field HuntForPsychoVariant gamedataMappinVariant 66
---@field ImportantInteractionVariant gamedataMappinVariant 67
---@field InvalidVariant gamedataMappinVariant 68
---@field JackInVariant gamedataMappinVariant 69
---@field JamWeaponVariant gamedataMappinVariant 70
---@field LifepathCorpoVariant gamedataMappinVariant 71
---@field LifepathNomadVariant gamedataMappinVariant 72
---@field LifepathStreetKidVariant gamedataMappinVariant 73
---@field LootVariant gamedataMappinVariant 74
---@field MinorActivityVariant gamedataMappinVariant 75
---@field NPCVariant gamedataMappinVariant 76
---@field NetrunnerAccessPointVariant gamedataMappinVariant 77
---@field NetrunnerSoloTechieVariant gamedataMappinVariant 78
---@field NetrunnerSoloVariant gamedataMappinVariant 79
---@field NetrunnerTechieVariant gamedataMappinVariant 80
---@field NetrunnerVariant gamedataMappinVariant 81
---@field NonLethalTakedownVariant gamedataMappinVariant 82
---@field OffVariant gamedataMappinVariant 83
---@field OpenVendorVariant gamedataMappinVariant 84
---@field OutpostVariant gamedataMappinVariant 85
---@field PhoneCallVariant gamedataMappinVariant 86
---@field QuestGiverVariant gamedataMappinVariant 87
---@field QuestionMarkVariant gamedataMappinVariant 88
---@field QuickHackVariant gamedataMappinVariant 89
---@field ReflexesVariant gamedataMappinVariant 90
---@field ResourceVariant gamedataMappinVariant 91
---@field RetrievingVariant gamedataMappinVariant 92
---@field SOSsignalVariant gamedataMappinVariant 93
---@field SabotageVariant gamedataMappinVariant 94
---@field ServicePointBarVariant gamedataMappinVariant 95
---@field ServicePointClothesVariant gamedataMappinVariant 96
---@field ServicePointCyberwareVariant gamedataMappinVariant 97
---@field ServicePointDropPointVariant gamedataMappinVariant 98
---@field ServicePointFoodVariant gamedataMappinVariant 99
---@field ServicePointGunsVariant gamedataMappinVariant 100
---@field ServicePointJunkVariant gamedataMappinVariant 101
---@field ServicePointMedsVariant gamedataMappinVariant 102
---@field ServicePointMeleeTrainerVariant gamedataMappinVariant 103
---@field ServicePointNetTrainerVariant gamedataMappinVariant 104
---@field ServicePointProstituteVariant gamedataMappinVariant 105
---@field ServicePointRipperdocVariant gamedataMappinVariant 106
---@field ServicePointTechVariant gamedataMappinVariant 107
---@field SitVariant gamedataMappinVariant 108
---@field SmugglersDenVariant gamedataMappinVariant 109
---@field SoloTechieVariant gamedataMappinVariant 110
---@field SoloVariant gamedataMappinVariant 111
---@field SpeechVariant gamedataMappinVariant 112
---@field TakeControlVariant gamedataMappinVariant 113
---@field TakeDownVariant gamedataMappinVariant 114
---@field TarotVariant gamedataMappinVariant 115
---@field TechieVariant gamedataMappinVariant 116
---@field ThieveryVariant gamedataMappinVariant 117
---@field UseVariant gamedataMappinVariant 118
---@field VehicleVariant gamedataMappinVariant 119
---@field WanderingMerchantVariant gamedataMappinVariant 120
---@field Zzz01_CarForPurchaseVariant gamedataMappinVariant 121
---@field Zzz02_MotorcycleForPurchaseVariant gamedataMappinVariant 122
---@field Zzz03_MotorcycleVariant gamedataMappinVariant 123
---@field Zzz04_PreventionVehicleVariant gamedataMappinVariant 124
---@field Zzz05_ApartmentToPurchaseVariant gamedataMappinVariant 125
---@field Zzz06_NCPDGigVariant gamedataMappinVariant 126
---@field Zzz07_PlayerStashVariant gamedataMappinVariant 127
---@field Zzz08_WardrobeVariant gamedataMappinVariant 128
---@field CPO_PingDoorVariant gamedataMappinVariant 129
---@field CPO_PingGoHereVariant gamedataMappinVariant 130
---@field CPO_PingLootVariant gamedataMappinVariant 131
---@field CPO_RemotePlayerVariant gamedataMappinVariant 132
---@field Count gamedataMappinVariant 133
---@field Invalid gamedataMappinVariant 134
gamedataMappinVariant = {}

---@class gamedataMeleeAttackDirection
---@field Center gamedataMeleeAttackDirection 0
---@field DownToUp gamedataMeleeAttackDirection 1
---@field LeftDownToRightUp gamedataMeleeAttackDirection 2
---@field LeftToRight gamedataMeleeAttackDirection 3
---@field LeftUpToRightDown gamedataMeleeAttackDirection 4
---@field RightDownToLeftUp gamedataMeleeAttackDirection 5
---@field RightToLeft gamedataMeleeAttackDirection 6
---@field RightUpToLeftDown gamedataMeleeAttackDirection 7
---@field UpToDown gamedataMeleeAttackDirection 8
---@field Count gamedataMeleeAttackDirection 9
---@field Invalid gamedataMeleeAttackDirection 10
gamedataMeleeAttackDirection = {}

---@class gamedataMetaQuest
---@field MetaQuest1 gamedataMetaQuest 0
---@field MetaQuest2 gamedataMetaQuest 1
---@field MetaQuest3 gamedataMetaQuest 2
---@field Count gamedataMetaQuest 3
---@field Invalid gamedataMetaQuest 4
gamedataMetaQuest = {}

---@class gamedataMovementType
---@field Run gamedataMovementType 0
---@field Sprint gamedataMovementType 1
---@field Strafe gamedataMovementType 2
---@field Walk gamedataMovementType 3
---@field Count gamedataMovementType 4
---@field Invalid gamedataMovementType 5
gamedataMovementType = {}

---@class gamedataNPCBehaviorState
---@field State1 gamedataNPCBehaviorState 0
---@field State2 gamedataNPCBehaviorState 1
---@field State3 gamedataNPCBehaviorState 2
---@field State4 gamedataNPCBehaviorState 3
---@field State5 gamedataNPCBehaviorState 4
---@field Count gamedataNPCBehaviorState 5
---@field Invalid gamedataNPCBehaviorState 6
gamedataNPCBehaviorState = {}

---@class gamedataNPCHighLevelState
---@field Alerted gamedataNPCHighLevelState 0
---@field Any gamedataNPCHighLevelState 1
---@field Combat gamedataNPCHighLevelState 2
---@field Dead gamedataNPCHighLevelState 3
---@field Fear gamedataNPCHighLevelState 4
---@field Relaxed gamedataNPCHighLevelState 5
---@field Stealth gamedataNPCHighLevelState 6
---@field Unconscious gamedataNPCHighLevelState 7
---@field Wounded gamedataNPCHighLevelState 8
---@field Count gamedataNPCHighLevelState 9
---@field Invalid gamedataNPCHighLevelState 10
gamedataNPCHighLevelState = {}

---@class gamedataNPCQuestAffiliation
---@field General gamedataNPCQuestAffiliation 0
---@field MainQuest gamedataNPCQuestAffiliation 1
---@field MinorActivity gamedataNPCQuestAffiliation 2
---@field MinorQuest gamedataNPCQuestAffiliation 3
---@field SideQuest gamedataNPCQuestAffiliation 4
---@field StreetStory gamedataNPCQuestAffiliation 5
---@field Count gamedataNPCQuestAffiliation 6
---@field Invalid gamedataNPCQuestAffiliation 7
gamedataNPCQuestAffiliation = {}

---@class gamedataNPCRarity
---@field Boss gamedataNPCRarity 0
---@field Elite gamedataNPCRarity 1
---@field Normal gamedataNPCRarity 2
---@field Officer gamedataNPCRarity 3
---@field Rare gamedataNPCRarity 4
---@field Trash gamedataNPCRarity 5
---@field Weak gamedataNPCRarity 6
---@field Count gamedataNPCRarity 7
---@field Invalid gamedataNPCRarity 8
gamedataNPCRarity = {}

---@class gamedataNPCStanceState
---@field Any gamedataNPCStanceState 0
---@field Cover gamedataNPCStanceState 1
---@field Crouch gamedataNPCStanceState 2
---@field Stand gamedataNPCStanceState 3
---@field Swim gamedataNPCStanceState 4
---@field Vehicle gamedataNPCStanceState 5
---@field VehicleWindow gamedataNPCStanceState 6
---@field Count gamedataNPCStanceState 7
---@field Invalid gamedataNPCStanceState 8
gamedataNPCStanceState = {}

---@class gamedataNPCType
---@field Android gamedataNPCType 0
---@field Any gamedataNPCType 1
---@field Device gamedataNPCType 2
---@field Drone gamedataNPCType 3
---@field Human gamedataNPCType 4
---@field Mech gamedataNPCType 5
---@field Spiderbot gamedataNPCType 6
---@field Count gamedataNPCType 7
---@field Invalid gamedataNPCType 8
gamedataNPCType = {}

---@class gamedataNPCUpperBodyState
---@field Aim gamedataNPCUpperBodyState 0
---@field Any gamedataNPCUpperBodyState 1
---@field Attack gamedataNPCUpperBodyState 2
---@field ChargedAttack gamedataNPCUpperBodyState 3
---@field Defend gamedataNPCUpperBodyState 4
---@field Equip gamedataNPCUpperBodyState 5
---@field Normal gamedataNPCUpperBodyState 6
---@field Parry gamedataNPCUpperBodyState 7
---@field Reload gamedataNPCUpperBodyState 8
---@field Shoot gamedataNPCUpperBodyState 9
---@field Taunt gamedataNPCUpperBodyState 10
---@field Count gamedataNPCUpperBodyState 11
---@field Invalid gamedataNPCUpperBodyState 12
gamedataNPCUpperBodyState = {}

---@class gamedataObjectActionReference
---@field Instigator gamedataObjectActionReference 0
---@field Source gamedataObjectActionReference 1
---@field Target gamedataObjectActionReference 2
---@field Count gamedataObjectActionReference 3
---@field Invalid gamedataObjectActionReference 4
gamedataObjectActionReference = {}

---@class gamedataObjectActionType
---@field DeviceQuickHack gamedataObjectActionType 0
---@field Direct gamedataObjectActionType 1
---@field Item gamedataObjectActionType 2
---@field MinigameUpload gamedataObjectActionType 3
---@field Payment gamedataObjectActionType 4
---@field PuppetQuickHack gamedataObjectActionType 5
---@field Remote gamedataObjectActionType 6
---@field Count gamedataObjectActionType 7
---@field Invalid gamedataObjectActionType 8
gamedataObjectActionType = {}

---@class gamedataOutput
---@field AskToFollowOrder gamedataOutput 0
---@field AskToHolster gamedataOutput 1
---@field BackOff gamedataOutput 2
---@field BodyInvestigate gamedataOutput 3
---@field Bump gamedataOutput 4
---@field CallGuard gamedataOutput 5
---@field CallPolice gamedataOutput 6
---@field DeviceInvestigate gamedataOutput 7
---@field Dodge gamedataOutput 8
---@field DodgeToSide gamedataOutput 9
---@field FearInPlace gamedataOutput 10
---@field Flee gamedataOutput 11
---@field Ignore gamedataOutput 12
---@field Intruder gamedataOutput 13
---@field Investigate gamedataOutput 14
---@field LookAt gamedataOutput 15
---@field Panic gamedataOutput 16
---@field PlayerCall gamedataOutput 17
---@field Reprimand gamedataOutput 18
---@field SquadCall gamedataOutput 19
---@field Surrender gamedataOutput 20
---@field TurnAt gamedataOutput 21
---@field WalkAway gamedataOutput 22
---@field Count gamedataOutput 23
---@field Invalid gamedataOutput 24
gamedataOutput = {}

---@class gamedataParentAttachmentType
---@field Animated gamedataParentAttachmentType 0
---@field Skinned gamedataParentAttachmentType 1
---@field Slot gamedataParentAttachmentType 2
---@field Count gamedataParentAttachmentType 3
---@field Invalid gamedataParentAttachmentType 4
gamedataParentAttachmentType = {}

---@class gamedataPerkArea
---@field Assault_Area_01 gamedataPerkArea 0
---@field Assault_Area_02 gamedataPerkArea 1
---@field Assault_Area_03 gamedataPerkArea 2
---@field Assault_Area_04 gamedataPerkArea 3
---@field Assault_Area_05 gamedataPerkArea 4
---@field Assault_Area_06 gamedataPerkArea 5
---@field Assault_Area_07 gamedataPerkArea 6
---@field Assault_Area_08 gamedataPerkArea 7
---@field Assault_Area_09 gamedataPerkArea 8
---@field Assault_Area_10 gamedataPerkArea 9
---@field Athletics_Area_01 gamedataPerkArea 10
---@field Athletics_Area_02 gamedataPerkArea 11
---@field Athletics_Area_03 gamedataPerkArea 12
---@field Athletics_Area_04 gamedataPerkArea 13
---@field Athletics_Area_05 gamedataPerkArea 14
---@field Athletics_Area_06 gamedataPerkArea 15
---@field Athletics_Area_07 gamedataPerkArea 16
---@field Athletics_Area_08 gamedataPerkArea 17
---@field Athletics_Area_09 gamedataPerkArea 18
---@field Athletics_Area_10 gamedataPerkArea 19
---@field Brawling_Area_01 gamedataPerkArea 20
---@field Brawling_Area_02 gamedataPerkArea 21
---@field Brawling_Area_03 gamedataPerkArea 22
---@field Brawling_Area_04 gamedataPerkArea 23
---@field Brawling_Area_05 gamedataPerkArea 24
---@field Brawling_Area_06 gamedataPerkArea 25
---@field Brawling_Area_07 gamedataPerkArea 26
---@field Brawling_Area_08 gamedataPerkArea 27
---@field ColdBlood_Area_01 gamedataPerkArea 28
---@field ColdBlood_Area_02 gamedataPerkArea 29
---@field ColdBlood_Area_03 gamedataPerkArea 30
---@field ColdBlood_Area_04 gamedataPerkArea 31
---@field ColdBlood_Area_05 gamedataPerkArea 32
---@field ColdBlood_Area_06 gamedataPerkArea 33
---@field ColdBlood_Area_07 gamedataPerkArea 34
---@field ColdBlood_Area_08 gamedataPerkArea 35
---@field ColdBlood_Area_09 gamedataPerkArea 36
---@field ColdBlood_Area_10 gamedataPerkArea 37
---@field CombatHacking_Area_01 gamedataPerkArea 38
---@field CombatHacking_Area_02 gamedataPerkArea 39
---@field CombatHacking_Area_03 gamedataPerkArea 40
---@field CombatHacking_Area_04 gamedataPerkArea 41
---@field CombatHacking_Area_05 gamedataPerkArea 42
---@field CombatHacking_Area_06 gamedataPerkArea 43
---@field CombatHacking_Area_07 gamedataPerkArea 44
---@field CombatHacking_Area_08 gamedataPerkArea 45
---@field CombatHacking_Area_09 gamedataPerkArea 46
---@field CombatHacking_Area_10 gamedataPerkArea 47
---@field Crafting_Area_01 gamedataPerkArea 48
---@field Crafting_Area_02 gamedataPerkArea 49
---@field Crafting_Area_03 gamedataPerkArea 50
---@field Crafting_Area_04 gamedataPerkArea 51
---@field Crafting_Area_05 gamedataPerkArea 52
---@field Crafting_Area_06 gamedataPerkArea 53
---@field Crafting_Area_07 gamedataPerkArea 54
---@field Crafting_Area_08 gamedataPerkArea 55
---@field Crafting_Area_09 gamedataPerkArea 56
---@field Crafting_Area_10 gamedataPerkArea 57
---@field Demolition_Area_01 gamedataPerkArea 58
---@field Demolition_Area_02 gamedataPerkArea 59
---@field Demolition_Area_03 gamedataPerkArea 60
---@field Demolition_Area_04 gamedataPerkArea 61
---@field Demolition_Area_05 gamedataPerkArea 62
---@field Demolition_Area_06 gamedataPerkArea 63
---@field Demolition_Area_07 gamedataPerkArea 64
---@field Demolition_Area_08 gamedataPerkArea 65
---@field Demolition_Area_09 gamedataPerkArea 66
---@field Demolition_Area_10 gamedataPerkArea 67
---@field Engineering_Area_01 gamedataPerkArea 68
---@field Engineering_Area_02 gamedataPerkArea 69
---@field Engineering_Area_03 gamedataPerkArea 70
---@field Engineering_Area_04 gamedataPerkArea 71
---@field Engineering_Area_05 gamedataPerkArea 72
---@field Engineering_Area_06 gamedataPerkArea 73
---@field Engineering_Area_07 gamedataPerkArea 74
---@field Engineering_Area_08 gamedataPerkArea 75
---@field Engineering_Area_09 gamedataPerkArea 76
---@field Engineering_Area_10 gamedataPerkArea 77
---@field Gunslinger_Area_01 gamedataPerkArea 78
---@field Gunslinger_Area_02 gamedataPerkArea 79
---@field Gunslinger_Area_03 gamedataPerkArea 80
---@field Gunslinger_Area_04 gamedataPerkArea 81
---@field Gunslinger_Area_05 gamedataPerkArea 82
---@field Gunslinger_Area_06 gamedataPerkArea 83
---@field Gunslinger_Area_07 gamedataPerkArea 84
---@field Gunslinger_Area_08 gamedataPerkArea 85
---@field Gunslinger_Area_09 gamedataPerkArea 86
---@field Gunslinger_Area_10 gamedataPerkArea 87
---@field Hacking_Area_01 gamedataPerkArea 88
---@field Hacking_Area_02 gamedataPerkArea 89
---@field Hacking_Area_03 gamedataPerkArea 90
---@field Hacking_Area_04 gamedataPerkArea 91
---@field Hacking_Area_05 gamedataPerkArea 92
---@field Hacking_Area_06 gamedataPerkArea 93
---@field Hacking_Area_07 gamedataPerkArea 94
---@field Hacking_Area_08 gamedataPerkArea 95
---@field Hacking_Area_09 gamedataPerkArea 96
---@field Hacking_Area_10 gamedataPerkArea 97
---@field Kenjutsu_Area_01 gamedataPerkArea 98
---@field Kenjutsu_Area_02 gamedataPerkArea 99
---@field Kenjutsu_Area_03 gamedataPerkArea 100
---@field Kenjutsu_Area_04 gamedataPerkArea 101
---@field Kenjutsu_Area_05 gamedataPerkArea 102
---@field Kenjutsu_Area_06 gamedataPerkArea 103
---@field Kenjutsu_Area_07 gamedataPerkArea 104
---@field Kenjutsu_Area_08 gamedataPerkArea 105
---@field Stealth_Area_01 gamedataPerkArea 106
---@field Stealth_Area_02 gamedataPerkArea 107
---@field Stealth_Area_03 gamedataPerkArea 108
---@field Stealth_Area_04 gamedataPerkArea 109
---@field Stealth_Area_05 gamedataPerkArea 110
---@field Stealth_Area_06 gamedataPerkArea 111
---@field Stealth_Area_07 gamedataPerkArea 112
---@field Stealth_Area_08 gamedataPerkArea 113
---@field Stealth_Area_09 gamedataPerkArea 114
---@field Stealth_Area_10 gamedataPerkArea 115
---@field Count gamedataPerkArea 116
---@field Invalid gamedataPerkArea 117
gamedataPerkArea = {}

---@class gamedataPerkType
---@field Assault_Area_01_Perk_1 gamedataPerkType 0
---@field Assault_Area_01_Perk_2 gamedataPerkType 1
---@field Assault_Area_02_Perk_1 gamedataPerkType 2
---@field Assault_Area_02_Perk_2 gamedataPerkType 3
---@field Assault_Area_03_Perk_1 gamedataPerkType 4
---@field Assault_Area_03_Perk_2 gamedataPerkType 5
---@field Assault_Area_04_Perk_1 gamedataPerkType 6
---@field Assault_Area_04_Perk_2 gamedataPerkType 7
---@field Assault_Area_05_Perk_1 gamedataPerkType 8
---@field Assault_Area_05_Perk_2 gamedataPerkType 9
---@field Assault_Area_06_Perk_1 gamedataPerkType 10
---@field Assault_Area_06_Perk_2 gamedataPerkType 11
---@field Assault_Area_07_Perk_1 gamedataPerkType 12
---@field Assault_Area_07_Perk_2 gamedataPerkType 13
---@field Assault_Area_08_Perk_1 gamedataPerkType 14
---@field Assault_Area_08_Perk_2 gamedataPerkType 15
---@field Assault_Area_09_Perk_1 gamedataPerkType 16
---@field Assault_Area_09_Perk_2 gamedataPerkType 17
---@field Assault_Area_10_Perk_1 gamedataPerkType 18
---@field Athletics_Area_01_Perk_1 gamedataPerkType 19
---@field Athletics_Area_01_Perk_2 gamedataPerkType 20
---@field Athletics_Area_02_Perk_1 gamedataPerkType 21
---@field Athletics_Area_02_Perk_2 gamedataPerkType 22
---@field Athletics_Area_03_Perk_1 gamedataPerkType 23
---@field Athletics_Area_03_Perk_2 gamedataPerkType 24
---@field Athletics_Area_04_Perk_1 gamedataPerkType 25
---@field Athletics_Area_04_Perk_2 gamedataPerkType 26
---@field Athletics_Area_05_Perk_1 gamedataPerkType 27
---@field Athletics_Area_05_Perk_2 gamedataPerkType 28
---@field Athletics_Area_05_Perk_3 gamedataPerkType 29
---@field Athletics_Area_06_Perk_1 gamedataPerkType 30
---@field Athletics_Area_06_Perk_2 gamedataPerkType 31
---@field Athletics_Area_06_Perk_3 gamedataPerkType 32
---@field Athletics_Area_07_Perk_1 gamedataPerkType 33
---@field Athletics_Area_07_Perk_2 gamedataPerkType 34
---@field Athletics_Area_08_Perk_1 gamedataPerkType 35
---@field Athletics_Area_08_Perk_2 gamedataPerkType 36
---@field Athletics_Area_09_Perk_1 gamedataPerkType 37
---@field Athletics_Area_10_Perk_1 gamedataPerkType 38
---@field Athletics_Area_10_Perk_2 gamedataPerkType 39
---@field Brawling_Area_01_Perk_1 gamedataPerkType 40
---@field Brawling_Area_01_Perk_2 gamedataPerkType 41
---@field Brawling_Area_02_Perk_1 gamedataPerkType 42
---@field Brawling_Area_02_Perk_2 gamedataPerkType 43
---@field Brawling_Area_03_Perk_1 gamedataPerkType 44
---@field Brawling_Area_03_Perk_2 gamedataPerkType 45
---@field Brawling_Area_04_Perk_1 gamedataPerkType 46
---@field Brawling_Area_04_Perk_2 gamedataPerkType 47
---@field Brawling_Area_05_Perk_1 gamedataPerkType 48
---@field Brawling_Area_05_Perk_2 gamedataPerkType 49
---@field Brawling_Area_06_Perk_1 gamedataPerkType 50
---@field Brawling_Area_06_Perk_2 gamedataPerkType 51
---@field Brawling_Area_07_Perk_1 gamedataPerkType 52
---@field Brawling_Area_07_Perk_2 gamedataPerkType 53
---@field Brawling_Area_08_Perk_1 gamedataPerkType 54
---@field Brawling_Area_08_Perk_2 gamedataPerkType 55
---@field ColdBlood_Area_01_Perk_1 gamedataPerkType 56
---@field ColdBlood_Area_02_Perk_1 gamedataPerkType 57
---@field ColdBlood_Area_02_Perk_2 gamedataPerkType 58
---@field ColdBlood_Area_03_Perk_1 gamedataPerkType 59
---@field ColdBlood_Area_03_Perk_2 gamedataPerkType 60
---@field ColdBlood_Area_04_Perk_1 gamedataPerkType 61
---@field ColdBlood_Area_04_Perk_2 gamedataPerkType 62
---@field ColdBlood_Area_05_Perk_1 gamedataPerkType 63
---@field ColdBlood_Area_05_Perk_2 gamedataPerkType 64
---@field ColdBlood_Area_06_Perk_1 gamedataPerkType 65
---@field ColdBlood_Area_06_Perk_2 gamedataPerkType 66
---@field ColdBlood_Area_06_Perk_3 gamedataPerkType 67
---@field ColdBlood_Area_07_Perk_1 gamedataPerkType 68
---@field ColdBlood_Area_07_Perk_2 gamedataPerkType 69
---@field ColdBlood_Area_08_Perk_1 gamedataPerkType 70
---@field ColdBlood_Area_08_Perk_2 gamedataPerkType 71
---@field ColdBlood_Area_09_Perk_1 gamedataPerkType 72
---@field ColdBlood_Area_10_Perk_1 gamedataPerkType 73
---@field CombatHacking_Area_01_Perk_1 gamedataPerkType 74
---@field CombatHacking_Area_01_Perk_2 gamedataPerkType 75
---@field CombatHacking_Area_02_Perk_1 gamedataPerkType 76
---@field CombatHacking_Area_02_Perk_2 gamedataPerkType 77
---@field CombatHacking_Area_02_Perk_3 gamedataPerkType 78
---@field CombatHacking_Area_03_Perk_1 gamedataPerkType 79
---@field CombatHacking_Area_03_Perk_2 gamedataPerkType 80
---@field CombatHacking_Area_04_Perk_1 gamedataPerkType 81
---@field CombatHacking_Area_05_Perk_1 gamedataPerkType 82
---@field CombatHacking_Area_06_Perk_1 gamedataPerkType 83
---@field CombatHacking_Area_06_Perk_2 gamedataPerkType 84
---@field CombatHacking_Area_06_Perk_3 gamedataPerkType 85
---@field CombatHacking_Area_07_Perk_1 gamedataPerkType 86
---@field CombatHacking_Area_08_Perk_1 gamedataPerkType 87
---@field CombatHacking_Area_08_Perk_2 gamedataPerkType 88
---@field CombatHacking_Area_09_Perk_1 gamedataPerkType 89
---@field CombatHacking_Area_10_Perk_1 gamedataPerkType 90
---@field CombatHacking_Area_10_Perk_2 gamedataPerkType 91
---@field Crafting_Area_01_Perk_1 gamedataPerkType 92
---@field Crafting_Area_01_Perk_2 gamedataPerkType 93
---@field Crafting_Area_02_Perk_1 gamedataPerkType 94
---@field Crafting_Area_02_Perk_2 gamedataPerkType 95
---@field Crafting_Area_03_Perk_1 gamedataPerkType 96
---@field Crafting_Area_04_Perk_1 gamedataPerkType 97
---@field Crafting_Area_04_Perk_2 gamedataPerkType 98
---@field Crafting_Area_05_Perk_1 gamedataPerkType 99
---@field Crafting_Area_05_Perk_2 gamedataPerkType 100
---@field Crafting_Area_06_Perk_1 gamedataPerkType 101
---@field Crafting_Area_06_Perk_2 gamedataPerkType 102
---@field Crafting_Area_06_Perk_3 gamedataPerkType 103
---@field Crafting_Area_07_Perk_1 gamedataPerkType 104
---@field Crafting_Area_07_Perk_2 gamedataPerkType 105
---@field Crafting_Area_08_Perk_1 gamedataPerkType 106
---@field Crafting_Area_08_Perk_2 gamedataPerkType 107
---@field Crafting_Area_09_Perk_1 gamedataPerkType 108
---@field Crafting_Area_10_Perk_1 gamedataPerkType 109
---@field Demolition_Area_01_Perk_1 gamedataPerkType 110
---@field Demolition_Area_02_Perk_1 gamedataPerkType 111
---@field Demolition_Area_02_Perk_2 gamedataPerkType 112
---@field Demolition_Area_03_Perk_1 gamedataPerkType 113
---@field Demolition_Area_03_Perk_2 gamedataPerkType 114
---@field Demolition_Area_04_Perk_1 gamedataPerkType 115
---@field Demolition_Area_04_Perk_2 gamedataPerkType 116
---@field Demolition_Area_05_Perk_1 gamedataPerkType 117
---@field Demolition_Area_05_Perk_2 gamedataPerkType 118
---@field Demolition_Area_06_Perk_1 gamedataPerkType 119
---@field Demolition_Area_06_Perk_2 gamedataPerkType 120
---@field Demolition_Area_07_Perk_1 gamedataPerkType 121
---@field Demolition_Area_07_Perk_2 gamedataPerkType 122
---@field Demolition_Area_08_Perk_1 gamedataPerkType 123
---@field Demolition_Area_08_Perk_2 gamedataPerkType 124
---@field Demolition_Area_09_Perk_1 gamedataPerkType 125
---@field Demolition_Area_09_Perk_2 gamedataPerkType 126
---@field Demolition_Area_10_Perk_1 gamedataPerkType 127
---@field Demolition_Area_10_Perk_2 gamedataPerkType 128
---@field Engineering_Area_01_Perk_1 gamedataPerkType 129
---@field Engineering_Area_01_Perk_2 gamedataPerkType 130
---@field Engineering_Area_02_Perk_1 gamedataPerkType 131
---@field Engineering_Area_02_Perk_2 gamedataPerkType 132
---@field Engineering_Area_03_Perk_1 gamedataPerkType 133
---@field Engineering_Area_04_Perk_1 gamedataPerkType 134
---@field Engineering_Area_04_Perk_2 gamedataPerkType 135
---@field Engineering_Area_04_Perk_3 gamedataPerkType 136
---@field Engineering_Area_05_Perk_1 gamedataPerkType 137
---@field Engineering_Area_05_Perk_2 gamedataPerkType 138
---@field Engineering_Area_06_Perk_1 gamedataPerkType 139
---@field Engineering_Area_06_Perk_2 gamedataPerkType 140
---@field Engineering_Area_07_Perk_1 gamedataPerkType 141
---@field Engineering_Area_07_Perk_2 gamedataPerkType 142
---@field Engineering_Area_07_Perk_3 gamedataPerkType 143
---@field Engineering_Area_08_Perk_1 gamedataPerkType 144
---@field Engineering_Area_08_Perk_2 gamedataPerkType 145
---@field Engineering_Area_09_Perk_1 gamedataPerkType 146
---@field Engineering_Area_10_Perk_1 gamedataPerkType 147
---@field Engineering_Area_10_Perk_2 gamedataPerkType 148
---@field Gunslinger_Area_01_Perk_1 gamedataPerkType 149
---@field Gunslinger_Area_01_Perk_2 gamedataPerkType 150
---@field Gunslinger_Area_02_Perk_1 gamedataPerkType 151
---@field Gunslinger_Area_02_Perk_2 gamedataPerkType 152
---@field Gunslinger_Area_03_Perk_1 gamedataPerkType 153
---@field Gunslinger_Area_03_Perk_2 gamedataPerkType 154
---@field Gunslinger_Area_04_Perk_1 gamedataPerkType 155
---@field Gunslinger_Area_04_Perk_2 gamedataPerkType 156
---@field Gunslinger_Area_04_Perk_3 gamedataPerkType 157
---@field Gunslinger_Area_05_Perk_1 gamedataPerkType 158
---@field Gunslinger_Area_05_Perk_2 gamedataPerkType 159
---@field Gunslinger_Area_06_Perk_1 gamedataPerkType 160
---@field Gunslinger_Area_06_Perk_2 gamedataPerkType 161
---@field Gunslinger_Area_07_Perk_1 gamedataPerkType 162
---@field Gunslinger_Area_07_Perk_2 gamedataPerkType 163
---@field Gunslinger_Area_08_Perk_1 gamedataPerkType 164
---@field Gunslinger_Area_08_Perk_2 gamedataPerkType 165
---@field Gunslinger_Area_09_Perk_1 gamedataPerkType 166
---@field Gunslinger_Area_10_Perk_1 gamedataPerkType 167
---@field Hacking_Area_01_Perk_1 gamedataPerkType 168
---@field Hacking_Area_01_Perk_2 gamedataPerkType 169
---@field Hacking_Area_02_Perk_1 gamedataPerkType 170
---@field Hacking_Area_02_Perk_2 gamedataPerkType 171
---@field Hacking_Area_03_Perk_1 gamedataPerkType 172
---@field Hacking_Area_03_Perk_2 gamedataPerkType 173
---@field Hacking_Area_04_Perk_1 gamedataPerkType 174
---@field Hacking_Area_04_Perk_2 gamedataPerkType 175
---@field Hacking_Area_05_Perk_1 gamedataPerkType 176
---@field Hacking_Area_06_Perk_1 gamedataPerkType 177
---@field Hacking_Area_06_Perk_2 gamedataPerkType 178
---@field Hacking_Area_07_Perk_1 gamedataPerkType 179
---@field Hacking_Area_07_Perk_2 gamedataPerkType 180
---@field Hacking_Area_08_Perk_1 gamedataPerkType 181
---@field Hacking_Area_08_Perk_2 gamedataPerkType 182
---@field Hacking_Area_09_Perk_1 gamedataPerkType 183
---@field Hacking_Area_09_Perk_2 gamedataPerkType 184
---@field Hacking_Area_10_Perk_1 gamedataPerkType 185
---@field Hacking_Area_10_Perk_2 gamedataPerkType 186
---@field Kenjutsu_Area_01_Perk_1 gamedataPerkType 187
---@field Kenjutsu_Area_01_Perk_2 gamedataPerkType 188
---@field Kenjutsu_Area_02_Perk_1 gamedataPerkType 189
---@field Kenjutsu_Area_02_Perk_2 gamedataPerkType 190
---@field Kenjutsu_Area_03_Perk_1 gamedataPerkType 191
---@field Kenjutsu_Area_03_Perk_2 gamedataPerkType 192
---@field Kenjutsu_Area_04_Perk_1 gamedataPerkType 193
---@field Kenjutsu_Area_04_Perk_2 gamedataPerkType 194
---@field Kenjutsu_Area_05_Perk_1 gamedataPerkType 195
---@field Kenjutsu_Area_05_Perk_2 gamedataPerkType 196
---@field Kenjutsu_Area_06_Perk_1 gamedataPerkType 197
---@field Kenjutsu_Area_06_Perk_2 gamedataPerkType 198
---@field Kenjutsu_Area_07_Perk_1 gamedataPerkType 199
---@field Kenjutsu_Area_07_Perk_2 gamedataPerkType 200
---@field Kenjutsu_Area_08_Perk_1 gamedataPerkType 201
---@field Kenjutsu_Area_08_Perk_2 gamedataPerkType 202
---@field Stealth_Area_01_Perk_1 gamedataPerkType 203
---@field Stealth_Area_01_Perk_2 gamedataPerkType 204
---@field Stealth_Area_02_Perk_1 gamedataPerkType 205
---@field Stealth_Area_02_Perk_2 gamedataPerkType 206
---@field Stealth_Area_02_Perk_3 gamedataPerkType 207
---@field Stealth_Area_03_Perk_1 gamedataPerkType 208
---@field Stealth_Area_03_Perk_2 gamedataPerkType 209
---@field Stealth_Area_03_Perk_3 gamedataPerkType 210
---@field Stealth_Area_04_Perk_1 gamedataPerkType 211
---@field Stealth_Area_04_Perk_2 gamedataPerkType 212
---@field Stealth_Area_05_Perk_1 gamedataPerkType 213
---@field Stealth_Area_05_Perk_2 gamedataPerkType 214
---@field Stealth_Area_05_Perk_3 gamedataPerkType 215
---@field Stealth_Area_06_Perk_1 gamedataPerkType 216
---@field Stealth_Area_06_Perk_2 gamedataPerkType 217
---@field Stealth_Area_07_Perk_1 gamedataPerkType 218
---@field Stealth_Area_07_Perk_2 gamedataPerkType 219
---@field Stealth_Area_07_Perk_3 gamedataPerkType 220
---@field Stealth_Area_08_Perk_1 gamedataPerkType 221
---@field Stealth_Area_08_Perk_2 gamedataPerkType 222
---@field Stealth_Area_08_Perk_3 gamedataPerkType 223
---@field Stealth_Area_09_Perk_1 gamedataPerkType 224
---@field Stealth_Area_09_Perk_2 gamedataPerkType 225
---@field Stealth_Area_09_Perk_3 gamedataPerkType 226
---@field Stealth_Area_10_Perk_1 gamedataPerkType 227
---@field Count gamedataPerkType 228
---@field Invalid gamedataPerkType 229
gamedataPerkType = {}

---@class gamedataPerkUtility
---@field ActiveUtility gamedataPerkUtility 0
---@field PassiveUtility gamedataPerkUtility 1
---@field TriggeredUtility gamedataPerkUtility 2
---@field Count gamedataPerkUtility 3
---@field Invalid gamedataPerkUtility 4
gamedataPerkUtility = {}

---@class gamedataPingType
---@field Device gamedataPingType 0
---@field Door gamedataPingType 1
---@field Elevator gamedataPingType 2
---@field Junction gamedataPingType 3
---@field Location gamedataPingType 4
---@field Loot gamedataPingType 5
---@field Trap gamedataPingType 6
---@field Count gamedataPingType 7
---@field Invalid gamedataPingType 8
gamedataPingType = {}

---@class gamedataPlayerBuild
---@field Cool gamedataPlayerBuild 0
---@field Netrunner gamedataPlayerBuild 1
---@field Reflexes gamedataPlayerBuild 2
---@field Solo gamedataPlayerBuild 3
---@field Techie gamedataPlayerBuild 4
---@field Count gamedataPlayerBuild 5
---@field Invalid gamedataPlayerBuild 6
gamedataPlayerBuild = {}

---@class gamedataPlayerPossesion
---@field Default gamedataPlayerPossesion 0
---@field Johnny gamedataPlayerPossesion 1
---@field Count gamedataPlayerPossesion 2
---@field Invalid gamedataPlayerPossesion 3
gamedataPlayerPossesion = {}

---@class gamedataProficiencyType
---@field Assault gamedataProficiencyType 0
---@field Athletics gamedataProficiencyType 1
---@field Brawling gamedataProficiencyType 2
---@field ColdBlood gamedataProficiencyType 3
---@field CombatHacking gamedataProficiencyType 4
---@field Crafting gamedataProficiencyType 5
---@field Demolition gamedataProficiencyType 6
---@field Engineering gamedataProficiencyType 7
---@field Gunslinger gamedataProficiencyType 8
---@field Hacking gamedataProficiencyType 9
---@field Kenjutsu gamedataProficiencyType 10
---@field Level gamedataProficiencyType 11
---@field Stealth gamedataProficiencyType 12
---@field StreetCred gamedataProficiencyType 13
---@field Count gamedataProficiencyType 14
---@field Invalid gamedataProficiencyType 15
gamedataProficiencyType = {}

---@class gamedataProjectileLaunchMode
---@field Regular gamedataProjectileLaunchMode 0
---@field Tracking gamedataProjectileLaunchMode 1
---@field Count gamedataProjectileLaunchMode 2
---@field Invalid gamedataProjectileLaunchMode 3
gamedataProjectileLaunchMode = {}

---@class gamedataProjectileOnCollisionAction
---@field Bounce gamedataProjectileOnCollisionAction 0
---@field Pierce gamedataProjectileOnCollisionAction 1
---@field Stop gamedataProjectileOnCollisionAction 2
---@field StopAndStick gamedataProjectileOnCollisionAction 3
---@field StopAndStickPerpendicular gamedataProjectileOnCollisionAction 4
---@field Count gamedataProjectileOnCollisionAction 5
---@field Invalid gamedataProjectileOnCollisionAction 6
gamedataProjectileOnCollisionAction = {}

---@class gamedataQuality
---@field Common gamedataQuality 0
---@field Epic gamedataQuality 1
---@field Iconic gamedataQuality 2
---@field Legendary gamedataQuality 3
---@field Random gamedataQuality 4
---@field Rare gamedataQuality 5
---@field Uncommon gamedataQuality 6
---@field Count gamedataQuality 7
---@field Invalid gamedataQuality 8
gamedataQuality = {}

---@class gamedataReactionPresetType
---@field Child gamedataReactionPresetType 0
---@field Civilian_Guard gamedataReactionPresetType 1
---@field Civilian_Neutral gamedataReactionPresetType 2
---@field Civilian_Passive gamedataReactionPresetType 3
---@field Corpo_Aggressive gamedataReactionPresetType 4
---@field Corpo_Passive gamedataReactionPresetType 5
---@field Follower gamedataReactionPresetType 6
---@field Ganger_Aggressive gamedataReactionPresetType 7
---@field Ganger_Passive gamedataReactionPresetType 8
---@field InVehicle_Aggressive gamedataReactionPresetType 9
---@field InVehicle_Civilian gamedataReactionPresetType 10
---@field InVehicle_Passive gamedataReactionPresetType 11
---@field Lore_Aggressive gamedataReactionPresetType 12
---@field Lore_Civilian gamedataReactionPresetType 13
---@field Lore_Passive gamedataReactionPresetType 14
---@field Mechanical_Aggressive gamedataReactionPresetType 15
---@field Mechanical_NonCombat gamedataReactionPresetType 16
---@field Mechanical_Passive gamedataReactionPresetType 17
---@field NoReaction gamedataReactionPresetType 18
---@field Police_Aggressive gamedataReactionPresetType 19
---@field Police_Passive gamedataReactionPresetType 20
---@field Sleep_Aggressive gamedataReactionPresetType 21
---@field Sleep_Civilian gamedataReactionPresetType 22
---@field Sleep_Passive gamedataReactionPresetType 23
---@field Count gamedataReactionPresetType 24
---@field Invalid gamedataReactionPresetType 25
gamedataReactionPresetType = {}

---@class gamedataSenseObjectType
---@field Camera gamedataSenseObjectType 0
---@field Deadbody gamedataSenseObjectType 1
---@field Follower gamedataSenseObjectType 2
---@field Npc gamedataSenseObjectType 3
---@field Player gamedataSenseObjectType 4
---@field Turret gamedataSenseObjectType 5
---@field Undefined gamedataSenseObjectType 6
---@field Count gamedataSenseObjectType 7
---@field Invalid gamedataSenseObjectType 8
gamedataSenseObjectType = {}

---@class gamedataSimpleValueNodeValueType
---@field String gamedataSimpleValueNodeValueType 0
---@field Number gamedataSimpleValueNodeValueType 1
---@field Bool gamedataSimpleValueNodeValueType 2
---@field Ident gamedataSimpleValueNodeValueType 3
gamedataSimpleValueNodeValueType = {}

---@class gamedataSpawnableObjectPriority
---@field Crowd gamedataSpawnableObjectPriority 0
---@field Quest gamedataSpawnableObjectPriority 1
---@field Regular gamedataSpawnableObjectPriority 2
---@field Count gamedataSpawnableObjectPriority 3
---@field Invalid gamedataSpawnableObjectPriority 4
gamedataSpawnableObjectPriority = {}

---@class gamedataStatPoolType
---@field Adrenaline gamedataStatPoolType 0
---@field Aggressiveness gamedataStatPoolType 1
---@field Armor gamedataStatPoolType 2
---@field BleedingTrigger gamedataStatPoolType 3
---@field BurningTrigger gamedataStatPoolType 4
---@field CPUPower gamedataStatPoolType 5
---@field CallReinforcementProgress gamedataStatPoolType 6
---@field Durability gamedataStatPoolType 7
---@field E3_BossWeakSpotHealth gamedataStatPoolType 8
---@field ElectrocutedTrigger gamedataStatPoolType 9
---@field Fear gamedataStatPoolType 10
---@field Health gamedataStatPoolType 11
---@field HitShapeArmor gamedataStatPoolType 12
---@field LeftArmHealth gamedataStatPoolType 13
---@field LeftLegHealth gamedataStatPoolType 14
---@field Memory gamedataStatPoolType 15
---@field Oxygen gamedataStatPoolType 16
---@field PhoneCallDuration gamedataStatPoolType 17
---@field PoisonTrigger gamedataStatPoolType 18
---@field QuickHackDuration gamedataStatPoolType 19
---@field QuickHackUpload gamedataStatPoolType 20
---@field ReprimandEscalation gamedataStatPoolType 21
---@field RightLegHealth gamedataStatPoolType 22
---@field Stamina gamedataStatPoolType 23
---@field StunTrigger gamedataStatPoolType 24
---@field ThrowRecovery gamedataStatPoolType 25
---@field UnlockProgress gamedataStatPoolType 26
---@field WeakspotHealth gamedataStatPoolType 27
---@field WeaponCharge gamedataStatPoolType 28
---@field WeaponOverheat gamedataStatPoolType 29
---@field CPOShockedTrigger gamedataStatPoolType 30
---@field CPO_Armor gamedataStatPoolType 31
---@field CPO_NPC_Importance gamedataStatPoolType 32
---@field Count gamedataStatPoolType 33
---@field Invalid gamedataStatPoolType 34
gamedataStatPoolType = {}

---@class gamedataStatType
---@field Acceleration gamedataStatType 0
---@field Accuracy gamedataStatType 1
---@field Adrenaline gamedataStatType 2
---@field AimFOV gamedataStatType 3
---@field AimInTime gamedataStatType 4
---@field AimOffset gamedataStatType 5
---@field AimOutTime gamedataStatType 6
---@field AllowMovementInput gamedataStatType 7
---@field AllowRotation gamedataStatType 8
---@field AmmoPerQuickMelee gamedataStatType 9
---@field Armor gamedataStatType 10
---@field Assault gamedataStatType 11
---@field AssaultMastery gamedataStatType 12
---@field AssaultTrait01Stat gamedataStatType 13
---@field Athletics gamedataStatType 14
---@field AthleticsMastery gamedataStatType 15
---@field AthleticsTrait01Stat gamedataStatType 16
---@field AttackPenetration gamedataStatType 17
---@field AttackSpeed gamedataStatType 18
---@field AttackSpeedPercent gamedataStatType 19
---@field AttacksNumber gamedataStatType 20
---@field AttacksPerSecond gamedataStatType 21
---@field AttacksPerSecondBase gamedataStatType 22
---@field AudioLocomotionStimRangeMultiplier gamedataStatType 23
---@field AudioStimRangeMultiplier gamedataStatType 24
---@field AutoReveal gamedataStatType 25
---@field AutocraftDuration gamedataStatType 26
---@field AutomaticReplenishment gamedataStatType 27
---@field AutomaticUploadPerk gamedataStatType 28
---@field BaseChargeTime gamedataStatType 29
---@field BaseDamage gamedataStatType 30
---@field BaseDamageMax gamedataStatType 31
---@field BaseDamageMin gamedataStatType 32
---@field BaseKnockdownImpulse gamedataStatType 33
---@field BerserkArmorBonus gamedataStatType 34
---@field BerserkCooldownBase gamedataStatType 35
---@field BerserkCooldownReduction gamedataStatType 36
---@field BerserkDurationBase gamedataStatType 37
---@field BerserkHealthRegenBonus gamedataStatType 38
---@field BerserkMeleeDamageBonus gamedataStatType 39
---@field BerserkRecoilReduction gamedataStatType 40
---@field BerserkResistancesBonus gamedataStatType 41
---@field BerserkShockwaveDamage gamedataStatType 42
---@field BerserkShockwaveRangeBonus gamedataStatType 43
---@field BerserkSwayReduction gamedataStatType 44
---@field BleedingApplicationRate gamedataStatType 45
---@field BleedingImmunity gamedataStatType 46
---@field BlindImmunity gamedataStatType 47
---@field BlindResistance gamedataStatType 48
---@field BlockFactor gamedataStatType 49
---@field BlockLocomotionWhenLeaningOutOfCover gamedataStatType 50
---@field BlockReduction gamedataStatType 51
---@field BonusCarryCapacity gamedataStatType 52
---@field BonusChargeDamage gamedataStatType 53
---@field BonusDPS gamedataStatType 54
---@field BonusDamageAgainstBosses gamedataStatType 55
---@field BonusDamageAgainstElites gamedataStatType 56
---@field BonusDamageAgainstMechanicals gamedataStatType 57
---@field BonusDamageAgainstRares gamedataStatType 58
---@field BonusDamagePerHit gamedataStatType 59
---@field BonusDmgVsRaresAndElites gamedataStatType 60
---@field BonusHealth gamedataStatType 61
---@field BonusMemory gamedataStatType 62
---@field BonusQuickHackDamage gamedataStatType 63
---@field BonusRecoilKick gamedataStatType 64
---@field BonusRicochetDamage gamedataStatType 65
---@field BonusSpreadChange gamedataStatType 66
---@field BonusStamina gamedataStatType 67
---@field Brake gamedataStatType 68
---@field BrakeDot gamedataStatType 69
---@field Brawling gamedataStatType 70
---@field BrawlingMastery gamedataStatType 71
---@field BrawlingTrait01Stat gamedataStatType 72
---@field BufferSize gamedataStatType 73
---@field BulletMagnetismDefaultAngle gamedataStatType 74
---@field BulletMagnetismHighVelocityAngle gamedataStatType 75
---@field BulletPseudoPierceHitVFxChance gamedataStatType 76
---@field BulletSurroundingHitVFxChance gamedataStatType 77
---@field BurningApplicationRate gamedataStatType 78
---@field BurningImmunity gamedataStatType 79
---@field BurningRegenStamina gamedataStatType 80
---@field CPUPower gamedataStatType 81
---@field CallReinforcement gamedataStatType 82
---@field CameraShutdownExtension gamedataStatType 83
---@field CanAerialTakedown gamedataStatType 84
---@field CanAimWhileDodging gamedataStatType 85
---@field CanAskToFollowOrder gamedataStatType 86
---@field CanAskToHolsterWeapon gamedataStatType 87
---@field CanAutomaticallyDisassembleJunk gamedataStatType 88
---@field CanAutomaticallyRestoreKnives gamedataStatType 89
---@field CanBleedingCriticallyHit gamedataStatType 90
---@field CanBleedingSlowTarget gamedataStatType 91
---@field CanBlindQuickHack gamedataStatType 92
---@field CanBlock gamedataStatType 93
---@field CanBreatheUnderwater gamedataStatType 94
---@field CanBuffCamoQuickHack gamedataStatType 95
---@field CanBuffMechanicalsOnTakeControl gamedataStatType 96
---@field CanBuffSturdinessQuickHack gamedataStatType 97
---@field CanBurningCriticallyHit gamedataStatType 98
---@field CanCallDrones gamedataStatType 99
---@field CanCallReinforcements gamedataStatType 100
---@field CanCatchUp gamedataStatType 101
---@field CanCatchUpDistance gamedataStatType 102
---@field CanCharge gamedataStatType 103
---@field CanChargedShoot gamedataStatType 104
---@field CanCloseCombat gamedataStatType 105
---@field CanCommsCallInQuickHack gamedataStatType 106
---@field CanCommsCallOutQuickHack gamedataStatType 107
---@field CanCommsNoiseQuickHack gamedataStatType 108
---@field CanControlFullyChargedWeapon gamedataStatType 109
---@field CanCraftEpicItems gamedataStatType 110
---@field CanCraftFromInventory gamedataStatType 111
---@field CanCraftLegendaryItems gamedataStatType 112
---@field CanCraftRareItems gamedataStatType 113
---@field CanCraftTechAmmunition gamedataStatType 114
---@field CanCrouch gamedataStatType 115
---@field CanCyberwareMalfunctionQuickHack gamedataStatType 116
---@field CanDash gamedataStatType 117
---@field CanDataMineQuickHack gamedataStatType 118
---@field CanDealFullDamageToArmored gamedataStatType 119
---@field CanDeathQuickHack gamedataStatType 120
---@field CanDisassemble gamedataStatType 121
---@field CanDisassembleConsumables gamedataStatType 122
---@field CanDisassembleGadgets gamedataStatType 123
---@field CanDropWeapon gamedataStatType 124
---@field CanElectrocuteNullifyStats gamedataStatType 125
---@field CanElectrocuteRoot gamedataStatType 126
---@field CanExitWSOnSoundStimuli gamedataStatType 127
---@field CanExplodeQuickHack gamedataStatType 128
---@field CanFastTravelWhileEncumbered gamedataStatType 129
---@field CanForceDismbember gamedataStatType 130
---@field CanFullyChargeWeapon gamedataStatType 131
---@field CanGrab gamedataStatType 132
---@field CanGrappleAndroids gamedataStatType 133
---@field CanGrappleSilently gamedataStatType 134
---@field CanGrenadeLaunch gamedataStatType 135
---@field CanGrenadeQuickHack gamedataStatType 136
---@field CanGrenadesCriticallyHit gamedataStatType 137
---@field CanGrenadesDealExternalDamage gamedataStatType 138
---@field CanGuardBreak gamedataStatType 139
---@field CanHeartattackQuickHack gamedataStatType 140
---@field CanIgnoreArmorDamageReduction gamedataStatType 141
---@field CanIgnoreStamina gamedataStatType 142
---@field CanInstaKillNPCs gamedataStatType 143
---@field CanInstallTechMods gamedataStatType 144
---@field CanJamWeaponQuickHack gamedataStatType 145
---@field CanJump gamedataStatType 146
---@field CanLandSilently gamedataStatType 147
---@field CanLegendaryCraftedWeaponsBeBoosted gamedataStatType 148
---@field CanLegendaryCraftedWeaponsBeBoosted2 gamedataStatType 149
---@field CanLocomotionMalfunctionQuickHack gamedataStatType 150
---@field CanMadnessQuickHack gamedataStatType 151
---@field CanMalfunctionQuickHack gamedataStatType 152
---@field CanMeleeBerserk gamedataStatType 153
---@field CanMeleeDash gamedataStatType 154
---@field CanMeleeInfinitelyCombo gamedataStatType 155
---@field CanMeleeLeap gamedataStatType 156
---@field CanMeleeLeapTakedown gamedataStatType 157
---@field CanOverchargeWeapon gamedataStatType 158
---@field CanOverheatQuickHack gamedataStatType 159
---@field CanOverloadQuickHack gamedataStatType 160
---@field CanOverrideAttitudeQuickHack gamedataStatType 161
---@field CanOverrideAuthorizationQuickHack gamedataStatType 162
---@field CanParry gamedataStatType 163
---@field CanPickUpBodyAfterTakedown gamedataStatType 164
---@field CanPickUpWeapon gamedataStatType 165
---@field CanPingQuickHack gamedataStatType 166
---@field CanPlayerBoostConsumables gamedataStatType 167
---@field CanPlayerBoostGrenades gamedataStatType 168
---@field CanPlayerPiercePoisonImmunity gamedataStatType 169
---@field CanPoisonLowerArmor gamedataStatType 170
---@field CanPoisonSlow gamedataStatType 171
---@field CanPreciseShoot gamedataStatType 172
---@field CanPushBack gamedataStatType 173
---@field CanPushFromGrapple gamedataStatType 174
---@field CanQuickHackCriticallyHit gamedataStatType 175
---@field CanQuickMeleeStagger gamedataStatType 176
---@field CanQuickhack gamedataStatType 177
---@field CanQuickhackHealPuppet gamedataStatType 178
---@field CanQuickhackTransferBetweenEnemies gamedataStatType 179
---@field CanRegenInCombat gamedataStatType 180
---@field CanRemoveModsFromClothing gamedataStatType 181
---@field CanRemoveModsFromWeapons gamedataStatType 182
---@field CanResurrectAllies gamedataStatType 183
---@field CanRetrieveModsFromDisassemble gamedataStatType 184
---@field CanRunSilently gamedataStatType 185
---@field CanSandevistanSprintHarass gamedataStatType 186
---@field CanScrapPartsFromMechanicals gamedataStatType 187
---@field CanSeeGrenadeRadius gamedataStatType 188
---@field CanSeeRicochetVisuals gamedataStatType 189
---@field CanSeeThroughWalls gamedataStatType 190
---@field CanShareThreatsWithPlayer gamedataStatType 191
---@field CanShootWhileCarryingBody gamedataStatType 192
---@field CanShootWhileDodging gamedataStatType 193
---@field CanShootWhileGrappling gamedataStatType 194
---@field CanShootWhileMoving gamedataStatType 195
---@field CanShootWhileVaulting gamedataStatType 196
---@field CanSilentKill gamedataStatType 197
---@field CanSmartShoot gamedataStatType 198
---@field CanSprint gamedataStatType 199
---@field CanSprintHarass gamedataStatType 200
---@field CanSprintWhileCarryingBody gamedataStatType 201
---@field CanSuicideQuickHack gamedataStatType 202
---@field CanSwitchWeapon gamedataStatType 203
---@field CanTakeControlQuickHack gamedataStatType 204
---@field CanTakedownLethally gamedataStatType 205
---@field CanTakedownSilently gamedataStatType 206
---@field CanTaunt gamedataStatType 207
---@field CanThrowWeapon gamedataStatType 208
---@field CanUpgradeFromInventory gamedataStatType 209
---@field CanUpgradeToLegendaryQuality gamedataStatType 210
---@field CanUseAntiStun gamedataStatType 211
---@field CanUseBiohazardGrenades gamedataStatType 212
---@field CanUseCloseRing gamedataStatType 213
---@field CanUseCombatStims gamedataStatType 214
---@field CanUseConsumables gamedataStatType 215
---@field CanUseCoolingSystem gamedataStatType 216
---@field CanUseCovers gamedataStatType 217
---@field CanUseCuttingGrenades gamedataStatType 218
---@field CanUseEMPGrenades gamedataStatType 219
---@field CanUseExtremeRing gamedataStatType 220
---@field CanUseFarRing gamedataStatType 221
---@field CanUseFlashbangGrenades gamedataStatType 222
---@field CanUseFragGrenades gamedataStatType 223
---@field CanUseGrenades gamedataStatType 224
---@field CanUseHolographicCamo gamedataStatType 225
---@field CanUseIncendiaryGrenades gamedataStatType 226
---@field CanUseLeftHand gamedataStatType 227
---@field CanUseLegs gamedataStatType 228
---@field CanUseMantisBlades gamedataStatType 229
---@field CanUseMediumRing gamedataStatType 230
---@field CanUseMeleeRing gamedataStatType 231
---@field CanUseOpticalCamo gamedataStatType 232
---@field CanUsePainInhibitors gamedataStatType 233
---@field CanUsePersonalSoundSilencer gamedataStatType 234
---@field CanUsePhoneUnderWater gamedataStatType 235
---@field CanUseProjectileLauncher gamedataStatType 236
---@field CanUseReconGrenades gamedataStatType 237
---@field CanUseRetractableShield gamedataStatType 238
---@field CanUseRightHand gamedataStatType 239
---@field CanUseShootingSpots gamedataStatType 240
---@field CanUseStaticCamo gamedataStatType 241
---@field CanUseStrongArms gamedataStatType 242
---@field CanUseTakedowns gamedataStatType 243
---@field CanUseTerrainCamo gamedataStatType 244
---@field CanUseZoom gamedataStatType 245
---@field CanWalkSilently gamedataStatType 246
---@field CanWallStick gamedataStatType 247
---@field CanWeaponBlock gamedataStatType 248
---@field CanWeaponBlockAttack gamedataStatType 249
---@field CanWeaponComboAttack gamedataStatType 250
---@field CanWeaponCriticallyHit gamedataStatType 251
---@field CanWeaponCrouchAttack gamedataStatType 252
---@field CanWeaponDash gamedataStatType 253
---@field CanWeaponDeflect gamedataStatType 254
---@field CanWeaponIgnoreArmor gamedataStatType 255
---@field CanWeaponInfinitlyCombo gamedataStatType 256
---@field CanWeaponJumpAttack gamedataStatType 257
---@field CanWeaponLeap gamedataStatType 258
---@field CanWeaponMalfunctionQuickHack gamedataStatType 259
---@field CanWeaponReduceArmor gamedataStatType 260
---@field CanWeaponReload gamedataStatType 261
---@field CanWeaponReloadWhileInactive gamedataStatType 262
---@field CanWeaponReloadWhileSliding gamedataStatType 263
---@field CanWeaponReloadWhileSprinting gamedataStatType 264
---@field CanWeaponReloadWhileVaulting gamedataStatType 265
---@field CanWeaponSafeAttack gamedataStatType 266
---@field CanWeaponShoot gamedataStatType 267
---@field CanWeaponShootWhileSliding gamedataStatType 268
---@field CanWeaponShootWhileSprinting gamedataStatType 269
---@field CanWeaponShootWhileVaulting gamedataStatType 270
---@field CanWeaponSnapToLimbs gamedataStatType 271
---@field CanWeaponSprintAttack gamedataStatType 272
---@field CanWeaponStrongAttack gamedataStatType 273
---@field CanWeaponTriggerHeadshot gamedataStatType 274
---@field CannotBeDetectedWhileSubmerged gamedataStatType 275
---@field CannotBeHealed gamedataStatType 276
---@field CannotSprintHarass gamedataStatType 277
---@field CarryCapacity gamedataStatType 278
---@field CausingPanicReducesUltimateHacksCost gamedataStatType 279
---@field Charge gamedataStatType 280
---@field ChargeDischargeTime gamedataStatType 281
---@field ChargeFullMultiplier gamedataStatType 282
---@field ChargeMaxTimeInChargedState gamedataStatType 283
---@field ChargeMultiplier gamedataStatType 284
---@field ChargeReadyPercentage gamedataStatType 285
---@field ChargeShouldFireWhenReady gamedataStatType 286
---@field ChargeTime gamedataStatType 287
---@field ChemicalDamage gamedataStatType 288
---@field ChemicalDamageMax gamedataStatType 289
---@field ChemicalDamageMin gamedataStatType 290
---@field ChemicalDamagePercent gamedataStatType 291
---@field ChemicalResistance gamedataStatType 292
---@field ClimbSpeedModifier gamedataStatType 293
---@field ClipTimesCycle gamedataStatType 294
---@field ClipTimesCycleBase gamedataStatType 295
---@field ClipTimesCyclePlusReload gamedataStatType 296
---@field ClipTimesCyclePlusReloadBase gamedataStatType 297
---@field CloudComputingTraps gamedataStatType 298
---@field ColdBlood gamedataStatType 299
---@field ColdBloodBuffBonus gamedataStatType 300
---@field ColdBloodDurationReductor gamedataStatType 301
---@field ColdBloodMastery gamedataStatType 302
---@field ColdBloodMaxDuration gamedataStatType 303
---@field ColdBloodMaxStacks gamedataStatType 304
---@field ColdBloodTrait01 gamedataStatType 305
---@field CombatHacking gamedataStatType 306
---@field CombatHackingMastery gamedataStatType 307
---@field CommsNoiseJamOnQuickhack gamedataStatType 308
---@field ControlledRandomPower gamedataStatType 309
---@field Cool gamedataStatType 310
---@field CoolAlocated gamedataStatType 311
---@field CoolAvailable gamedataStatType 312
---@field Crafting gamedataStatType 313
---@field CraftingBonusArmorValue gamedataStatType 314
---@field CraftingBonusArmorValue2 gamedataStatType 315
---@field CraftingBonusConsumableDuration gamedataStatType 316
---@field CraftingBonusGrenadeDamage gamedataStatType 317
---@field CraftingBonusWeaponDamage gamedataStatType 318
---@field CraftingBonusWeaponDamage2 gamedataStatType 319
---@field CraftingCostReduction gamedataStatType 320
---@field CraftingItemLevelBoost gamedataStatType 321
---@field CraftingMastery gamedataStatType 322
---@field CraftingMaterialDropChance gamedataStatType 323
---@field CraftingMaterialRandomGrantChance gamedataStatType 324
---@field CraftingMaterialRetrieveChance gamedataStatType 325
---@field CraftingTrait01 gamedataStatType 326
---@field CritChance gamedataStatType 327
---@field CritChanceTimeCritDamage gamedataStatType 328
---@field CritDPSBonus gamedataStatType 329
---@field CritDamage gamedataStatType 330
---@field CyberwareCooldownReduction gamedataStatType 331
---@field CycleTime gamedataStatType 332
---@field CycleTimeAimBlockDuration gamedataStatType 333
---@field CycleTimeAimBlockStart gamedataStatType 334
---@field CycleTimeBase gamedataStatType 335
---@field CycleTimeBonus gamedataStatType 336
---@field CycleTimeShootingMult gamedataStatType 337
---@field CycleTimeShootingMultPeriod gamedataStatType 338
---@field CycleTime_Burst gamedataStatType 339
---@field CycleTime_BurstMaxCharge gamedataStatType 340
---@field CycleTime_BurstSecondary gamedataStatType 341
---@field CycleTriggerModeTime gamedataStatType 342
---@field DPS gamedataStatType 343
---@field DamageFalloffDisabled gamedataStatType 344
---@field DamageHackSpread gamedataStatType 345
---@field DamagePerHit gamedataStatType 346
---@field DamageReductionDamageOverTime gamedataStatType 347
---@field DamageReductionExplosion gamedataStatType 348
---@field DamageReductionMelee gamedataStatType 349
---@field DamageReductionQuickhacks gamedataStatType 350
---@field DashAttackStaminaCostReduction gamedataStatType 351
---@field DataLeakTraps gamedataStatType 352
---@field DealsChemicalDamage gamedataStatType 353
---@field DealsElectricDamage gamedataStatType 354
---@field DealsPhysicalDamage gamedataStatType 355
---@field DealsThermalDamage gamedataStatType 356
---@field Deceleration gamedataStatType 357
---@field DefeatedHeadDamageThreshold gamedataStatType 358
---@field DefeatedLArmDamageThreshold gamedataStatType 359
---@field DefeatedLLegDamageThreshold gamedataStatType 360
---@field DefeatedRArmDamageThreshold gamedataStatType 361
---@field DefeatedRLegDamageThreshold gamedataStatType 362
---@field DefeatingEnemiesReduceHacksCost gamedataStatType 363
---@field Demolition gamedataStatType 364
---@field DemolitionMastery gamedataStatType 365
---@field DemolitionTrait01Stat gamedataStatType 366
---@field Detection gamedataStatType 367
---@field DeviceMemoryCostReduction gamedataStatType 368
---@field DisableCyberwareOnBurning gamedataStatType 369
---@field DisassemblingIngredientsDoubleBonus gamedataStatType 370
---@field DisassemblingMaterialQualityObtainChance gamedataStatType 371
---@field DismHeadDamageThreshold gamedataStatType 372
---@field DismLArmDamageThreshold gamedataStatType 373
---@field DismLLegDamageThreshold gamedataStatType 374
---@field DismRArmDamageThreshold gamedataStatType 375
---@field DismRLegDamageThreshold gamedataStatType 376
---@field DoNotCheckFriendlyFireMadnessPassive gamedataStatType 377
---@field DummyResistanceStat gamedataStatType 378
---@field Durability gamedataStatType 379
---@field DurationBonusBleeding gamedataStatType 380
---@field DurationBonusBurning gamedataStatType 381
---@field DurationBonusElectrified gamedataStatType 382
---@field DurationBonusPoisoned gamedataStatType 383
---@field DurationBonusQuickhack gamedataStatType 384
---@field DurationBonusStun gamedataStatType 385
---@field DurationReductionDot gamedataStatType 386
---@field EMPImmunity gamedataStatType 387
---@field EffectiveDPS gamedataStatType 388
---@field EffectiveDamagePerHit gamedataStatType 389
---@field EffectiveDamagePerHitMax gamedataStatType 390
---@field EffectiveDamagePerHitMin gamedataStatType 391
---@field EffectiveDamagePerHitTimesAttacksPerSecond gamedataStatType 392
---@field EffectiveRange gamedataStatType 393
---@field ElectricDamage gamedataStatType 394
---@field ElectricDamageMax gamedataStatType 395
---@field ElectricDamageMin gamedataStatType 396
---@field ElectricDamagePercent gamedataStatType 397
---@field ElectricResistance gamedataStatType 398
---@field ElectrocuteImmunity gamedataStatType 399
---@field ElectrocutedApplicationRate gamedataStatType 400
---@field ElementalDamagePerHit gamedataStatType 401
---@field ElementalResistanceMultiplier gamedataStatType 402
---@field EmptyReloadTime gamedataStatType 403
---@field EnemyChemicalResistanceReduction gamedataStatType 404
---@field Engineering gamedataStatType 405
---@field EngineeringMastery gamedataStatType 406
---@field EngineeringTrait01 gamedataStatType 407
---@field EquipActionDuration_Corpo gamedataStatType 408
---@field EquipActionDuration_Gang gamedataStatType 409
---@field EquipAnimationDuration_Corpo gamedataStatType 410
---@field EquipAnimationDuration_Gang gamedataStatType 411
---@field EquipDuration gamedataStatType 412
---@field EquipDuration_First gamedataStatType 413
---@field EquipItemTime_Corpo gamedataStatType 414
---@field EquipItemTime_Gang gamedataStatType 415
---@field EvadeImpulse gamedataStatType 416
---@field Evasion gamedataStatType 417
---@field ExplosionKillsRecudeUltimateHacksCost gamedataStatType 418
---@field FFInputLock gamedataStatType 419
---@field FallDamageReduction gamedataStatType 420
---@field FearOnQuickHackKill gamedataStatType 421
---@field FullAutoOnFullCharge gamedataStatType 422
---@field GenericStatPrereqValue gamedataStatType 423
---@field Gunslinger gamedataStatType 424
---@field GunslingerMastery gamedataStatType 425
---@field GunslingerTrait01Stat gamedataStatType 426
---@field HackedEnemiesGetDamagedByFriendlyFire gamedataStatType 427
---@field HackedEnemyArmorReduction gamedataStatType 428
---@field Hacking gamedataStatType 429
---@field HackingMastery gamedataStatType 430
---@field HackingPenetration gamedataStatType 431
---@field HackingResistance gamedataStatType 432
---@field HackingResistanceUltimate gamedataStatType 433
---@field HasAdditionalSplinterSlot gamedataStatType 434
---@field HasAheadTargeting gamedataStatType 435
---@field HasAirHover gamedataStatType 436
---@field HasAirThrusters gamedataStatType 437
---@field HasAutoReloader gamedataStatType 438
---@field HasAutomaticReplenishment gamedataStatType 439
---@field HasAutomaticTagging gamedataStatType 440
---@field HasBerserk gamedataStatType 441
---@field HasBleedImmunity gamedataStatType 442
---@field HasBlindImmunity gamedataStatType 443
---@field HasBoostedCortex gamedataStatType 444
---@field HasBurningBuffs gamedataStatType 445
---@field HasCameraLinking gamedataStatType 446
---@field HasChargeJump gamedataStatType 447
---@field HasCritImmunity gamedataStatType 448
---@field HasCyberdeck gamedataStatType 449
---@field HasCybereye gamedataStatType 450
---@field HasDodge gamedataStatType 451
---@field HasDodgeAir gamedataStatType 452
---@field HasDoubleJump gamedataStatType 453
---@field HasElectricCoating gamedataStatType 454
---@field HasElectroPlating gamedataStatType 455
---@field HasExtendedHitReactionImmunity gamedataStatType 456
---@field HasFireproofSkin gamedataStatType 457
---@field HasGPS gamedataStatType 458
---@field HasGlowingTattoos gamedataStatType 459
---@field HasGraphiteTissue gamedataStatType 460
---@field HasHackingInteractions gamedataStatType 461
---@field HasHealingReapplication gamedataStatType 462
---@field HasHealthMonitorBomb gamedataStatType 463
---@field HasHostileHackImmunity gamedataStatType 464
---@field HasICELevelBooster gamedataStatType 465
---@field HasInfravision gamedataStatType 466
---@field HasJuiceInjector gamedataStatType 467
---@field HasKerenzikov gamedataStatType 468
---@field HasKerenzikovSlide gamedataStatType 469
---@field HasKers gamedataStatType 470
---@field HasLinkToBountySystem gamedataStatType 471
---@field HasLoweringPerception gamedataStatType 472
---@field HasMadnessLvl4Passive gamedataStatType 473
---@field HasMajorQuickhackResistance gamedataStatType 474
---@field HasMechanicalControl gamedataStatType 475
---@field HasMeleeImmunity gamedataStatType 476
---@field HasMeleeTargeting gamedataStatType 477
---@field HasMetabolicEnhancer gamedataStatType 478
---@field HasMuzzleBrake gamedataStatType 479
---@field HasPoisonHeal gamedataStatType 480
---@field HasPoisonImmunity gamedataStatType 481
---@field HasPowerGrip gamedataStatType 482
---@field HasQuickhackResistance gamedataStatType 483
---@field HasRemoteBotAccessPointBreach gamedataStatType 484
---@field HasSandevistan gamedataStatType 485
---@field HasSandevistanTier1 gamedataStatType 486
---@field HasSandevistanTier2 gamedataStatType 487
---@field HasSandevistanTier3 gamedataStatType 488
---@field HasSecondHeart gamedataStatType 489
---@field HasSelfHealingSkin gamedataStatType 490
---@field HasSmartLink gamedataStatType 491
---@field HasSpiderBotControl gamedataStatType 492
---@field HasStunImmunity gamedataStatType 493
---@field HasSubdermalArmor gamedataStatType 494
---@field HasSuperheroFall gamedataStatType 495
---@field HasThermovision gamedataStatType 496
---@field HasTimedImmunity gamedataStatType 497
---@field HasToxicCleanser gamedataStatType 498
---@field HasWallRunSkill gamedataStatType 499
---@field HeadshotDamageMultiplier gamedataStatType 500
---@field HeadshotImmunity gamedataStatType 501
---@field Health gamedataStatType 502
---@field HealthInCombatRegenDelayOnChange gamedataStatType 503
---@field HealthInCombatRegenEnabled gamedataStatType 504
---@field HealthInCombatRegenEndThreshold gamedataStatType 505
---@field HealthInCombatRegenRate gamedataStatType 506
---@field HealthInCombatRegenRateAdd gamedataStatType 507
---@field HealthInCombatRegenRateBase gamedataStatType 508
---@field HealthInCombatRegenRateMult gamedataStatType 509
---@field HealthInCombatRegenStartThreshold gamedataStatType 510
---@field HealthInCombatStartDelay gamedataStatType 511
---@field HealthMonitorCooldownDuration gamedataStatType 512
---@field HealthOutOfCombatRegenDelayOnChange gamedataStatType 513
---@field HealthOutOfCombatRegenEnabled gamedataStatType 514
---@field HealthOutOfCombatRegenEndThreshold gamedataStatType 515
---@field HealthOutOfCombatRegenRate gamedataStatType 516
---@field HealthOutOfCombatRegenRateAdd gamedataStatType 517
---@field HealthOutOfCombatRegenRateBase gamedataStatType 518
---@field HealthOutOfCombatRegenRateMult gamedataStatType 519
---@field HealthOutOfCombatRegenStartThreshold gamedataStatType 520
---@field Hearing gamedataStatType 521
---@field HeavyAttacksNumber gamedataStatType 522
---@field HighlightAccessPoint gamedataStatType 523
---@field HitDismembermentFactor gamedataStatType 524
---@field HitReactionDamageHealthFactor gamedataStatType 525
---@field HitReactionFactor gamedataStatType 526
---@field HitShapeArmor gamedataStatType 527
---@field HitTimerAfterDefeated gamedataStatType 528
---@field HitTimerAfterImpact gamedataStatType 529
---@field HitTimerAfterImpactMelee gamedataStatType 530
---@field HitTimerAfterKnockdown gamedataStatType 531
---@field HitTimerAfterPain gamedataStatType 532
---@field HitTimerAfterStagger gamedataStatType 533
---@field HitTimerAfterStaggerMelee gamedataStatType 534
---@field HitWoundsFactor gamedataStatType 535
---@field HoldDuration gamedataStatType 536
---@field HoldEnterDuration gamedataStatType 537
---@field HoldTimeoutDuration gamedataStatType 538
---@field HolographicSkinCooldownDuration gamedataStatType 539
---@field HolographicSkinDuration gamedataStatType 540
---@field HousingBuffsDurationBonus gamedataStatType 541
---@field IconicItemUpgraded gamedataStatType 542
---@field ImpactDamageThreshold gamedataStatType 543
---@field ImpactDamageThresholdImpulse gamedataStatType 544
---@field ImpactDamageThresholdInCover gamedataStatType 545
---@field Intelligence gamedataStatType 546
---@field IntelligenceAlocated gamedataStatType 547
---@field IntelligenceAvailable gamedataStatType 548
---@field IntelligenceSkillcheckBonus gamedataStatType 549
---@field IntrinsicQuickHackUploadBonus gamedataStatType 550
---@field IntrinsicReloadTimeBonus gamedataStatType 551
---@field IntrinsicZoomLevelBonus gamedataStatType 552
---@field IsAggressive gamedataStatType 553
---@field IsBalanced gamedataStatType 554
---@field IsBlocking gamedataStatType 555
---@field IsCautious gamedataStatType 556
---@field IsCrowd gamedataStatType 557
---@field IsDefensive gamedataStatType 558
---@field IsDeflecting gamedataStatType 559
---@field IsDodgeStaminaFree gamedataStatType 560
---@field IsDodging gamedataStatType 561
---@field IsFastMeleeArchetype gamedataStatType 562
---@field IsFastRangedArchetype gamedataStatType 563
---@field IsGenericMeleeArchetype gamedataStatType 564
---@field IsGenericRangedArchetype gamedataStatType 565
---@field IsHeavyRangedArchetype gamedataStatType 566
---@field IsInvulnerable gamedataStatType 567
---@field IsItemBroken gamedataStatType 568
---@field IsItemCracked gamedataStatType 569
---@field IsItemCrafted gamedataStatType 570
---@field IsItemIconic gamedataStatType 571
---@field IsItemUpgraded gamedataStatType 572
---@field IsManBig gamedataStatType 573
---@field IsManMassive gamedataStatType 574
---@field IsMechanical gamedataStatType 575
---@field IsNetrunnerArchetype gamedataStatType 576
---@field IsNotSlowedDuringADS gamedataStatType 577
---@field IsNotSlowedDuringBlock gamedataStatType 578
---@field IsNotSlowedDuringReload gamedataStatType 579
---@field IsReckless gamedataStatType 580
---@field IsShotgunnerArchetype gamedataStatType 581
---@field IsSniperArchetype gamedataStatType 582
---@field IsSprintStaminaFree gamedataStatType 583
---@field IsStrongMeleeArchetype gamedataStatType 584
---@field IsTechieArchetype gamedataStatType 585
---@field IsTier1Archetype gamedataStatType 586
---@field IsTier2Archetype gamedataStatType 587
---@field IsTier3Archetype gamedataStatType 588
---@field IsTier4Archetype gamedataStatType 589
---@field IsWeakspot gamedataStatType 590
---@field IsWeaponLethal gamedataStatType 591
---@field ItemArmor gamedataStatType 592
---@field ItemLevel gamedataStatType 593
---@field ItemRequiresElectroPlating gamedataStatType 594
---@field ItemRequiresPowerGrip gamedataStatType 595
---@field ItemRequiresSmartLink gamedataStatType 596
---@field JumpHeight gamedataStatType 597
---@field Kenjutsu gamedataStatType 598
---@field KenjutsuMastery gamedataStatType 599
---@field KenjutsuTrait01Stat gamedataStatType 600
---@field KnockdownDamageThreshold gamedataStatType 601
---@field KnockdownDamageThresholdImpulse gamedataStatType 602
---@field KnockdownDamageThresholdInCover gamedataStatType 603
---@field KnockdownImmunity gamedataStatType 604
---@field KnockdownImpulse gamedataStatType 605
---@field Level gamedataStatType 606
---@field Liberty_Padre_BurningApplicationRate gamedataStatType 607
---@field LimbHealth gamedataStatType 608
---@field LinearDirectionUpdateMax gamedataStatType 609
---@field LinearDirectionUpdateMaxADS gamedataStatType 610
---@field LinearDirectionUpdateMin gamedataStatType 611
---@field LinearDirectionUpdateMinADS gamedataStatType 612
---@field LowerActiveCooldownOnDefeat gamedataStatType 613
---@field LowerHackingResistanceOnHack gamedataStatType 614
---@field MagazineCapacity gamedataStatType 615
---@field MagazineCapacityBase gamedataStatType 616
---@field MagazineCapacityBonus gamedataStatType 617
---@field MaxDuration gamedataStatType 618
---@field MaxPercentDamageTakenPerHit gamedataStatType 619
---@field MaxSpeed gamedataStatType 620
---@field MaxStacks gamedataStatType 621
---@field MaxStacksBonusBleeding gamedataStatType 622
---@field MaxStacksBonusBurning gamedataStatType 623
---@field MaximumRange gamedataStatType 624
---@field MechanicalsBuffDPSBonus gamedataStatType 625
---@field MeleeAttackComboDuration gamedataStatType 626
---@field MeleeAttackDuration gamedataStatType 627
---@field MeleeBorgStaminaDrain gamedataStatType 628
---@field Memory gamedataStatType 629
---@field MemoryCostModifier gamedataStatType 630
---@field MemoryCostReduction gamedataStatType 631
---@field MemoryInCombatRegenDelayOnChange gamedataStatType 632
---@field MemoryInCombatRegenEnabled gamedataStatType 633
---@field MemoryInCombatRegenEndThreshold gamedataStatType 634
---@field MemoryInCombatRegenRate gamedataStatType 635
---@field MemoryInCombatRegenRateAdd gamedataStatType 636
---@field MemoryInCombatRegenRateBase gamedataStatType 637
---@field MemoryInCombatRegenRateMult gamedataStatType 638
---@field MemoryInCombatRegenStartThreshold gamedataStatType 639
---@field MemoryInCombatStartDelay gamedataStatType 640
---@field MemoryOutOfCombatRegenDelayOnChange gamedataStatType 641
---@field MemoryOutOfCombatRegenEnabled gamedataStatType 642
---@field MemoryOutOfCombatRegenEndThreshold gamedataStatType 643
---@field MemoryOutOfCombatRegenRate gamedataStatType 644
---@field MemoryOutOfCombatRegenRateAdd gamedataStatType 645
---@field MemoryOutOfCombatRegenRateBase gamedataStatType 646
---@field MemoryOutOfCombatRegenRateMult gamedataStatType 647
---@field MemoryOutOfCombatRegenStartThreshold gamedataStatType 648
---@field MemoryOutOfCombatStartDelay gamedataStatType 649
---@field MemoryTrackerCooldownDuration gamedataStatType 650
---@field MemoryWipeImmunity gamedataStatType 651
---@field MinSpeed gamedataStatType 652
---@field MinigameBufferExtension gamedataStatType 653
---@field MinigameMaterialsEarned gamedataStatType 654
---@field MinigameMemoryRegenPerk gamedataStatType 655
---@field MinigameMoneyMultiplier gamedataStatType 656
---@field MinigameNextInstanceBufferExtensionPerk gamedataStatType 657
---@field MinigameShardChanceMultiplier gamedataStatType 658
---@field MinigameTimeLimitExtension gamedataStatType 659
---@field MinigameTrapsPossibilityChance gamedataStatType 660
---@field MitigationChance gamedataStatType 661
---@field MitigationStrength gamedataStatType 662
---@field MuzzleBreakRicochetBonus gamedataStatType 663
---@field NPCAnimationTime gamedataStatType 664
---@field NPCCorpoEquipItemDuration gamedataStatType 665
---@field NPCCorpoUnequipItemDuration gamedataStatType 666
---@field NPCDamage gamedataStatType 667
---@field NPCEquipItemDuration gamedataStatType 668
---@field NPCGangEquipItemDuration gamedataStatType 669
---@field NPCGangUnequipItemDuration gamedataStatType 670
---@field NPCLoopDuration gamedataStatType 671
---@field NPCRecoverDuration gamedataStatType 672
---@field NPCStartupDuration gamedataStatType 673
---@field NPCUnequipItemDuration gamedataStatType 674
---@field NPCUploadTime gamedataStatType 675
---@field NoJam gamedataStatType 676
---@field NumShotsInBurst gamedataStatType 677
---@field NumShotsInBurstMaxCharge gamedataStatType 678
---@field NumShotsInBurstSecondary gamedataStatType 679
---@field NumShotsToFire gamedataStatType 680
---@field NumberIgnoredTraps gamedataStatType 681
---@field Overheat gamedataStatType 682
---@field Oxygen gamedataStatType 683
---@field PartArmor gamedataStatType 684
---@field PenetrationHealth gamedataStatType 685
---@field PersonalityAggressive gamedataStatType 686
---@field PersonalityCuriosity gamedataStatType 687
---@field PersonalityDisgust gamedataStatType 688
---@field PersonalityFear gamedataStatType 689
---@field PersonalityFunny gamedataStatType 690
---@field PersonalityJoy gamedataStatType 691
---@field PersonalitySad gamedataStatType 692
---@field PersonalityShock gamedataStatType 693
---@field PersonalitySurprise gamedataStatType 694
---@field PhoneCallDuration gamedataStatType 695
---@field PhysicalDamage gamedataStatType 696
---@field PhysicalDamageMax gamedataStatType 697
---@field PhysicalDamageMin gamedataStatType 698
---@field PhysicalDamagePercent gamedataStatType 699
---@field PhysicalImpulse gamedataStatType 700
---@field PhysicalResistance gamedataStatType 701
---@field PoisonImmunity gamedataStatType 702
---@field PoisonRegenHealth gamedataStatType 703
---@field PoisonedApplicationRate gamedataStatType 704
---@field PostLexWilsonBuyPrice gamedataStatType 705
---@field PostTutorialCyberwarePrice gamedataStatType 706
---@field PowerLevel gamedataStatType 707
---@field PreFireTime gamedataStatType 708
---@field PrefersCovers gamedataStatType 709
---@field PrefersShootingSpots gamedataStatType 710
---@field Price gamedataStatType 711
---@field ProjectilesPerShot gamedataStatType 712
---@field ProjectilesPerShotBase gamedataStatType 713
---@field ProjectilesPerShotBonus gamedataStatType 714
---@field Quality gamedataStatType 715
---@field Quantity gamedataStatType 716
---@field QuickHackDuration gamedataStatType 717
---@field QuickHackDurationExtension gamedataStatType 718
---@field QuickHackImmunity gamedataStatType 719
---@field QuickHackResistancesMod gamedataStatType 720
---@field QuickHackSpreadDistance gamedataStatType 721
---@field QuickHackSpreadNumber gamedataStatType 722
---@field QuickHackSuddenDeathChance gamedataStatType 723
---@field QuickHackUpload gamedataStatType 724
---@field QuickhackExtraDamageMultiplier gamedataStatType 725
---@field QuickhackShield gamedataStatType 726
---@field QuickhacksCooldownReduction gamedataStatType 727
---@field RandomCurveInput gamedataStatType 728
---@field Range gamedataStatType 729
---@field Recoil gamedataStatType 730
---@field RecoilAllowSway gamedataStatType 731
---@field RecoilAlternateDir gamedataStatType 732
---@field RecoilAlternateDirADS gamedataStatType 733
---@field RecoilAngle gamedataStatType 734
---@field RecoilAngleADS gamedataStatType 735
---@field RecoilAnimation gamedataStatType 736
---@field RecoilChargeMult gamedataStatType 737
---@field RecoilChargeMultADS gamedataStatType 738
---@field RecoilCycleSize gamedataStatType 739
---@field RecoilCycleSizeADS gamedataStatType 740
---@field RecoilCycleTime gamedataStatType 741
---@field RecoilCycleTimeADS gamedataStatType 742
---@field RecoilDelay gamedataStatType 743
---@field RecoilDir gamedataStatType 744
---@field RecoilDirADS gamedataStatType 745
---@field RecoilDirPlanCycleRandDir gamedataStatType 746
---@field RecoilDirPlanCycleRandDirADS gamedataStatType 747
---@field RecoilDirPlanCycleRandRangeDir gamedataStatType 748
---@field RecoilDirPlanCycleRandRangeDirADS gamedataStatType 749
---@field RecoilDirPlanSequence gamedataStatType 750
---@field RecoilDirPlanSequenceADS gamedataStatType 751
---@field RecoilDriftRandomRangeMax gamedataStatType 752
---@field RecoilDriftRandomRangeMin gamedataStatType 753
---@field RecoilEnableCycleX gamedataStatType 754
---@field RecoilEnableCycleXADS gamedataStatType 755
---@field RecoilEnableCycleY gamedataStatType 756
---@field RecoilEnableCycleYADS gamedataStatType 757
---@field RecoilEnableLinearX gamedataStatType 758
---@field RecoilEnableLinearXADS gamedataStatType 759
---@field RecoilEnableLinearY gamedataStatType 760
---@field RecoilEnableLinearYADS gamedataStatType 761
---@field RecoilEnableScaleX gamedataStatType 762
---@field RecoilEnableScaleXADS gamedataStatType 763
---@field RecoilEnableScaleY gamedataStatType 764
---@field RecoilEnableScaleYADS gamedataStatType 765
---@field RecoilFullChargeMult gamedataStatType 766
---@field RecoilFullChargeMultADS gamedataStatType 767
---@field RecoilHoldDuration gamedataStatType 768
---@field RecoilHoldDurationADS gamedataStatType 769
---@field RecoilKickMax gamedataStatType 770
---@field RecoilKickMaxADS gamedataStatType 771
---@field RecoilKickMin gamedataStatType 772
---@field RecoilKickMinADS gamedataStatType 773
---@field RecoilMagForFullDrift gamedataStatType 774
---@field RecoilMaxLength gamedataStatType 775
---@field RecoilMaxLengthADS gamedataStatType 776
---@field RecoilRecoveryMinSpeed gamedataStatType 777
---@field RecoilRecoveryMinSpeedADS gamedataStatType 778
---@field RecoilRecoverySpeed gamedataStatType 779
---@field RecoilRecoverySpeedADS gamedataStatType 780
---@field RecoilRecoveryTime gamedataStatType 781
---@field RecoilRecoveryTimeADS gamedataStatType 782
---@field RecoilScaleMax gamedataStatType 783
---@field RecoilScaleMaxADS gamedataStatType 784
---@field RecoilScaleTime gamedataStatType 785
---@field RecoilScaleTimeADS gamedataStatType 786
---@field RecoilSpeed gamedataStatType 787
---@field RecoilSpeedADS gamedataStatType 788
---@field RecoilTime gamedataStatType 789
---@field RecoilTimeADS gamedataStatType 790
---@field RecoilUseDifferentStatsInADS gamedataStatType 791
---@field Reflexes gamedataStatType 792
---@field ReflexesAlocated gamedataStatType 793
---@field ReflexesAvailable gamedataStatType 794
---@field RefreshesPingOnQuickhack gamedataStatType 795
---@field RegenerateHPMinigamePerk gamedataStatType 796
---@field ReloadAmount gamedataStatType 797
---@field ReloadEndTime gamedataStatType 798
---@field ReloadTime gamedataStatType 799
---@field ReloadTimeBase gamedataStatType 800
---@field ReloadTimeBonus gamedataStatType 801
---@field RemoveAllStacksWhenDurationEnds gamedataStatType 802
---@field RemoveColdBloodStacksOneByOne gamedataStatType 803
---@field RemoveSprintOnQuickhack gamedataStatType 804
---@field ReprimandEscalation gamedataStatType 805
---@field RestoreMemoryOnDefeat gamedataStatType 806
---@field RevealNetrunnerWhenHacked gamedataStatType 807
---@field RicochetChance gamedataStatType 808
---@field RicochetCount gamedataStatType 809
---@field RicochetMaxAngle gamedataStatType 810
---@field RicochetMinAngle gamedataStatType 811
---@field RicochetTargetSearchAngle gamedataStatType 812
---@field SandevistanDashShoot gamedataStatType 813
---@field ScalingBlocked gamedataStatType 814
---@field ScanDepth gamedataStatType 815
---@field ScanTimeReduction gamedataStatType 816
---@field ScopeFOV gamedataStatType 817
---@field ScopeOffset gamedataStatType 818
---@field ScrapItemChance gamedataStatType 819
---@field SharedCacheTraps gamedataStatType 820
---@field ShootingOffsetAI gamedataStatType 821
---@field ShortCircuitOnCriticalHit gamedataStatType 822
---@field ShortDistanceDamageIncrease gamedataStatType 823
---@field ShorterChains gamedataStatType 824
---@field ShotDelay gamedataStatType 825
---@field SimpleWeaponMod04 gamedataStatType 826
---@field SlideWhenLeaningOutOfCover gamedataStatType 827
---@field SmartGunAddSpiralTrajectory gamedataStatType 828
---@field SmartGunAdsLockingAnglePitch gamedataStatType 829
---@field SmartGunAdsLockingAngleYaw gamedataStatType 830
---@field SmartGunAdsMaxLockedTargets gamedataStatType 831
---@field SmartGunAdsTagLockAnglePitch gamedataStatType 832
---@field SmartGunAdsTagLockAngleYaw gamedataStatType 833
---@field SmartGunAdsTargetableAnglePitch gamedataStatType 834
---@field SmartGunAdsTargetableAngleYaw gamedataStatType 835
---@field SmartGunAdsTimeToLock gamedataStatType 836
---@field SmartGunAdsTimeToUnlock gamedataStatType 837
---@field SmartGunEvenDistributionPeriod gamedataStatType 838
---@field SmartGunHipLockingAnglePitch gamedataStatType 839
---@field SmartGunHipLockingAngleYaw gamedataStatType 840
---@field SmartGunHipMaxLockedTargets gamedataStatType 841
---@field SmartGunHipTagLockAnglePitch gamedataStatType 842
---@field SmartGunHipTagLockAngleYaw gamedataStatType 843
---@field SmartGunHipTargetableAnglePitch gamedataStatType 844
---@field SmartGunHipTargetableAngleYaw gamedataStatType 845
---@field SmartGunHipTimeToLock gamedataStatType 846
---@field SmartGunHipTimeToUnlock gamedataStatType 847
---@field SmartGunHitProbability gamedataStatType 848
---@field SmartGunHitProbabilityMultiplier gamedataStatType 849
---@field SmartGunMissDelay gamedataStatType 850
---@field SmartGunMissRadius gamedataStatType 851
---@field SmartGunNPCApplySpreadAtHitplane gamedataStatType 852
---@field SmartGunNPCLockOnTime gamedataStatType 853
---@field SmartGunNPCLockTimeout gamedataStatType 854
---@field SmartGunNPCLockingAnglePitch gamedataStatType 855
---@field SmartGunNPCLockingAngleYaw gamedataStatType 856
---@field SmartGunNPCProjectileStartingOrientationAngleOffset gamedataStatType 857
---@field SmartGunNPCProjectileVelocity gamedataStatType 858
---@field SmartGunNPCShootProjectilesOnlyStraight gamedataStatType 859
---@field SmartGunNPCSpreadMultiplier gamedataStatType 860
---@field SmartGunNPCTrajectoryCurvatureMultiplier gamedataStatType 861
---@field SmartGunPlayerProjectileVelocity gamedataStatType 862
---@field SmartGunProjectileVelocityVariance gamedataStatType 863
---@field SmartGunSpiralCycleTimeMax gamedataStatType 864
---@field SmartGunSpiralCycleTimeMin gamedataStatType 865
---@field SmartGunSpiralRadius gamedataStatType 866
---@field SmartGunSpiralRampDistanceEnd gamedataStatType 867
---@field SmartGunSpiralRampDistanceStart gamedataStatType 868
---@field SmartGunSpiralRandomizeDirection gamedataStatType 869
---@field SmartGunSpreadMultiplier gamedataStatType 870
---@field SmartGunStartingAccuracy gamedataStatType 871
---@field SmartGunTargetAcquisitionRange gamedataStatType 872
---@field SmartGunTimeToMaxAccuracy gamedataStatType 873
---@field SmartGunTimeToRemoveOccludedTarget gamedataStatType 874
---@field SmartGunTrackAllBodyparts gamedataStatType 875
---@field SmartGunTrackHeadComponents gamedataStatType 876
---@field SmartGunTrackLegComponents gamedataStatType 877
---@field SmartGunTrackMechanicalComponents gamedataStatType 878
---@field SmartGunTrackMultipleEntitiesInADS gamedataStatType 879
---@field SmartGunUseEvenDistributionTargeting gamedataStatType 880
---@field SmartGunUseTagLockTargeting gamedataStatType 881
---@field SmartGunUseTimeBasedAccuracy gamedataStatType 882
---@field SmartTargetingDisruptionProbability gamedataStatType 883
---@field SpecialDamage gamedataStatType 884
---@field SpeedBoost gamedataStatType 885
---@field SpeedBoostMaxSpeed gamedataStatType 886
---@field Spread gamedataStatType 887
---@field SpreadAdsChangePerShot gamedataStatType 888
---@field SpreadAdsChargeMult gamedataStatType 889
---@field SpreadAdsDefaultX gamedataStatType 890
---@field SpreadAdsDefaultY gamedataStatType 891
---@field SpreadAdsFastSpeedMax gamedataStatType 892
---@field SpreadAdsFastSpeedMaxAdd gamedataStatType 893
---@field SpreadAdsFastSpeedMin gamedataStatType 894
---@field SpreadAdsFastSpeedMinAdd gamedataStatType 895
---@field SpreadAdsFullChargeMult gamedataStatType 896
---@field SpreadAdsMaxX gamedataStatType 897
---@field SpreadAdsMaxY gamedataStatType 898
---@field SpreadAdsMinX gamedataStatType 899
---@field SpreadAdsMinY gamedataStatType 900
---@field SpreadAnimation gamedataStatType 901
---@field SpreadChangePerShot gamedataStatType 902
---@field SpreadChargeMult gamedataStatType 903
---@field SpreadCrouchDefaultMult gamedataStatType 904
---@field SpreadCrouchMaxMult gamedataStatType 905
---@field SpreadDefaultX gamedataStatType 906
---@field SpreadDefaultY gamedataStatType 907
---@field SpreadEvenDistributionJitterSize gamedataStatType 908
---@field SpreadEvenDistributionRowCount gamedataStatType 909
---@field SpreadFastSpeedMax gamedataStatType 910
---@field SpreadFastSpeedMaxAdd gamedataStatType 911
---@field SpreadFastSpeedMin gamedataStatType 912
---@field SpreadFastSpeedMinAdd gamedataStatType 913
---@field SpreadFullChargeMult gamedataStatType 914
---@field SpreadMaxAI gamedataStatType 915
---@field SpreadMaxX gamedataStatType 916
---@field SpreadMaxY gamedataStatType 917
---@field SpreadMinX gamedataStatType 918
---@field SpreadMinY gamedataStatType 919
---@field SpreadRandomizeOriginPoint gamedataStatType 920
---@field SpreadResetSpeed gamedataStatType 921
---@field SpreadResetTimeThreshold gamedataStatType 922
---@field SpreadUseCircularSpread gamedataStatType 923
---@field SpreadUseEvenDistribution gamedataStatType 924
---@field SpreadUseInAds gamedataStatType 925
---@field SpreadZeroOnFirstShot gamedataStatType 926
---@field StaggerDamageThreshold gamedataStatType 927
---@field StaggerDamageThresholdImpulse gamedataStatType 928
---@field StaggerDamageThresholdInCover gamedataStatType 929
---@field Stamina gamedataStatType 930
---@field StaminaCostReduction gamedataStatType 931
---@field StaminaCostToBlock gamedataStatType 932
---@field StaminaDamage gamedataStatType 933
---@field StaminaRegenDelayOnChange gamedataStatType 934
---@field StaminaRegenEnabled gamedataStatType 935
---@field StaminaRegenEndThrehold gamedataStatType 936
---@field StaminaRegenRate gamedataStatType 937
---@field StaminaRegenRateAdd gamedataStatType 938
---@field StaminaRegenRateBase gamedataStatType 939
---@field StaminaRegenRateMult gamedataStatType 940
---@field StaminaRegenStartDelay gamedataStatType 941
---@field StaminaRegenStartThreshold gamedataStatType 942
---@field StaminaSprintDecayRate gamedataStatType 943
---@field StatModifierGroupLimit gamedataStatType 944
---@field Stealth gamedataStatType 945
---@field StealthHacksCostReduction gamedataStatType 946
---@field StealthHitDamageMultiplier gamedataStatType 947
---@field StealthMastery gamedataStatType 948
---@field StealthTrait01Stat gamedataStatType 949
---@field StealthWeakspotDamageMultiplier gamedataStatType 950
---@field StreetCred gamedataStatType 951
---@field StreetCredXPBonusMultiplier gamedataStatType 952
---@field Strength gamedataStatType 953
---@field StrengthAlocated gamedataStatType 954
---@field StrengthAvailable gamedataStatType 955
---@field StrengthSkillcheckBonus gamedataStatType 956
---@field StunImmunity gamedataStatType 957
---@field StyleOverSubstanceCount gamedataStatType 958
---@field Sway gamedataStatType 959
---@field SwayCenterMaximumAngleOffset gamedataStatType 960
---@field SwayCurvatureMaximumFactor gamedataStatType 961
---@field SwayCurvatureMinimumFactor gamedataStatType 962
---@field SwayInitialOffsetRandomFactor gamedataStatType 963
---@field SwayResetOnAimStart gamedataStatType 964
---@field SwaySideBottomAngleLimit gamedataStatType 965
---@field SwaySideMaximumAngleDistance gamedataStatType 966
---@field SwaySideMinimumAngleDistance gamedataStatType 967
---@field SwaySideStepChangeMaximumFactor gamedataStatType 968
---@field SwaySideStepChangeMinimumFactor gamedataStatType 969
---@field SwaySideTopAngleLimit gamedataStatType 970
---@field SwayStartBlendTime gamedataStatType 971
---@field SwayStartDelay gamedataStatType 972
---@field SwayTraversalTime gamedataStatType 973
---@field SystemCollapseImmunity gamedataStatType 974
---@field TBHsBaseCoefficient gamedataStatType 975
---@field TBHsBaseSourceMultiplierCoefficient gamedataStatType 976
---@field TBHsCoverTraceLoSIncreaseSpeed gamedataStatType 977
---@field TBHsMinimumLineOfSightTime gamedataStatType 978
---@field TBHsSensesTraceLoSIncreaseSpeed gamedataStatType 979
---@field TBHsVisibilityCooldown gamedataStatType 980
---@field TechBaseChargeThreshold gamedataStatType 981
---@field TechMaxChargeThreshold gamedataStatType 982
---@field TechOverChargeThreshold gamedataStatType 983
---@field TechPierceChargeLevel gamedataStatType 984
---@field TechPierceDamageFactor gamedataStatType 985
---@field TechPierceEnabled gamedataStatType 986
---@field TechPierceScanAngle gamedataStatType 987
---@field TechnicalAbility gamedataStatType 988
---@field TechnicalAbilityAlocated gamedataStatType 989
---@field TechnicalAbilityAvailable gamedataStatType 990
---@field TechnicalAbilitySkillcheckBonus gamedataStatType 991
---@field ThermalDamage gamedataStatType 992
---@field ThermalDamageMax gamedataStatType 993
---@field ThermalDamageMin gamedataStatType 994
---@field ThermalDamagePercent gamedataStatType 995
---@field ThermalResistance gamedataStatType 996
---@field ThreeOrMoreProgramsCooldownRedPerk gamedataStatType 997
---@field ThreeOrMoreProgramsMemoryRegPerk gamedataStatType 998
---@field ThrowRecovery gamedataStatType 999
---@field TimeDilationGenericDuration gamedataStatType 1000
---@field TimeDilationGenericTimeScale gamedataStatType 1001
---@field TimeDilationKerenzikovDuration gamedataStatType 1002
---@field TimeDilationKerenzikovPlayerTimeScale gamedataStatType 1003
---@field TimeDilationKerenzikovTimeScale gamedataStatType 1004
---@field TimeDilationOnDodgesCooldownDuration gamedataStatType 1005
---@field TimeDilationOnDodgesDuration gamedataStatType 1006
---@field TimeDilationOnDodgesTimeScale gamedataStatType 1007
---@field TimeDilationOnHealthDropCooldownDuration gamedataStatType 1008
---@field TimeDilationOnHealthDropDuration gamedataStatType 1009
---@field TimeDilationOnHealthDropTimeScale gamedataStatType 1010
---@field TimeDilationSandevistanCooldownBase gamedataStatType 1011
---@field TimeDilationSandevistanCooldownReduction gamedataStatType 1012
---@field TimeDilationSandevistanDuration gamedataStatType 1013
---@field TimeDilationSandevistanTimeScale gamedataStatType 1014
---@field TimeDilationWhenEnteringCombatCooldownDuration gamedataStatType 1015
---@field TimeDilationWhenEnteringCombatDuration gamedataStatType 1016
---@field TimeDilationWhenEnteringCombatTimeScale gamedataStatType 1017
---@field TranquilizerImmunity gamedataStatType 1018
---@field TriggerDismembermentChance gamedataStatType 1019
---@field TriggerWoundedChance gamedataStatType 1020
---@field TurretFriendlyExtension gamedataStatType 1021
---@field TurretShutdownExtension gamedataStatType 1022
---@field UltimateHackSpread gamedataStatType 1023
---@field UltimateHacksCostReduction gamedataStatType 1024
---@field UltimateMemoryCostReduction gamedataStatType 1025
---@field UnconsciousImmunity gamedataStatType 1026
---@field UnequipAnimationDuration_Corpo gamedataStatType 1027
---@field UnequipAnimationDuration_Gang gamedataStatType 1028
---@field UnequipDuration gamedataStatType 1029
---@field UnequipDuration_Corpo gamedataStatType 1030
---@field UnequipDuration_Gang gamedataStatType 1031
---@field UnequipItemTime_Corpo gamedataStatType 1032
---@field UnequipItemTime_Gang gamedataStatType 1033
---@field UnlockProgress gamedataStatType 1034
---@field UpgradeCompensate gamedataStatType 1035
---@field UpgradeCount gamedataStatType 1036
---@field UpgradingCostReduction gamedataStatType 1037
---@field UpgradingMaterialDropChance gamedataStatType 1038
---@field UpgradingMaterialRandomGrantChance gamedataStatType 1039
---@field UpgradingMaterialRetrieveChance gamedataStatType 1040
---@field UploadQuickHackMod gamedataStatType 1041
---@field VendorBuyPriceDiscount gamedataStatType 1042
---@field VendorSellPriceDiscount gamedataStatType 1043
---@field Visibility gamedataStatType 1044
---@field VisualStimRangeMultiplier gamedataStatType 1045
---@field VulnerabilityExtension gamedataStatType 1046
---@field WallRunHorSpeedToEnterMin gamedataStatType 1047
---@field WallRunStrafeAngleMax gamedataStatType 1048
---@field WallRunTimeMax gamedataStatType 1049
---@field WallRunVertSpeedToEnterMax gamedataStatType 1050
---@field WasItemUpgraded gamedataStatType 1051
---@field WasQuickHacked gamedataStatType 1052
---@field WeakspotDamageMultiplier gamedataStatType 1053
---@field WeaponHasAutoloader gamedataStatType 1054
---@field WeaponNoise gamedataStatType 1055
---@field WeaponPosAdsX gamedataStatType 1056
---@field WeaponPosAdsY gamedataStatType 1057
---@field WeaponPosAdsZ gamedataStatType 1058
---@field WeaponPosX gamedataStatType 1059
---@field WeaponPosY gamedataStatType 1060
---@field WeaponPosZ gamedataStatType 1061
---@field WeaponRotAdsX gamedataStatType 1062
---@field WeaponRotAdsY gamedataStatType 1063
---@field WeaponRotAdsZ gamedataStatType 1064
---@field WeaponRotX gamedataStatType 1065
---@field WeaponRotY gamedataStatType 1066
---@field WeaponRotZ gamedataStatType 1067
---@field WeaponSwapDuration gamedataStatType 1068
---@field Weight gamedataStatType 1069
---@field WoundHeadDamageThreshold gamedataStatType 1070
---@field WoundLArmDamageThreshold gamedataStatType 1071
---@field WoundLLegDamageThreshold gamedataStatType 1072
---@field WoundRArmDamageThreshold gamedataStatType 1073
---@field WoundRLegDamageThreshold gamedataStatType 1074
---@field XPbonusMultiplier gamedataStatType 1075
---@field ZoomLevel gamedataStatType 1076
---@field CPO_Armor gamedataStatType 1077
---@field CPO_NPC_Importance gamedataStatType 1078
---@field Count gamedataStatType 1079
---@field Invalid gamedataStatType 1080
gamedataStatType = {}

---@class gamedataStatType_1300DEPRECATED
---@field Acceleration gamedataStatType_1300DEPRECATED 0
---@field Accuracy gamedataStatType_1300DEPRECATED 1
---@field Adrenaline gamedataStatType_1300DEPRECATED 2
---@field AimFOV gamedataStatType_1300DEPRECATED 3
---@field AimInTime gamedataStatType_1300DEPRECATED 4
---@field AimOffset gamedataStatType_1300DEPRECATED 5
---@field AimOutTime gamedataStatType_1300DEPRECATED 6
---@field AllowMovementInput gamedataStatType_1300DEPRECATED 7
---@field AllowRotation gamedataStatType_1300DEPRECATED 8
---@field Armor gamedataStatType_1300DEPRECATED 9
---@field Assault gamedataStatType_1300DEPRECATED 10
---@field AssaultMastery gamedataStatType_1300DEPRECATED 11
---@field AssaultTrait01Stat gamedataStatType_1300DEPRECATED 12
---@field Athletics gamedataStatType_1300DEPRECATED 13
---@field AthleticsMastery gamedataStatType_1300DEPRECATED 14
---@field AthleticsTrait01Stat gamedataStatType_1300DEPRECATED 15
---@field AttackPenetration gamedataStatType_1300DEPRECATED 16
---@field AttackSpeed gamedataStatType_1300DEPRECATED 17
---@field AttackSpeedPercent gamedataStatType_1300DEPRECATED 18
---@field AttacksNumber gamedataStatType_1300DEPRECATED 19
---@field AttacksPerSecond gamedataStatType_1300DEPRECATED 20
---@field AttacksPerSecondBase gamedataStatType_1300DEPRECATED 21
---@field AudioLocomotionStimRangeMultiplier gamedataStatType_1300DEPRECATED 22
---@field AudioStimRangeMultiplier gamedataStatType_1300DEPRECATED 23
---@field AutoReveal gamedataStatType_1300DEPRECATED 24
---@field AutocraftDuration gamedataStatType_1300DEPRECATED 25
---@field AutomaticReplenishment gamedataStatType_1300DEPRECATED 26
---@field AutomaticUploadPerk gamedataStatType_1300DEPRECATED 27
---@field BaseChargeTime gamedataStatType_1300DEPRECATED 28
---@field BaseDamage gamedataStatType_1300DEPRECATED 29
---@field BaseDamageMax gamedataStatType_1300DEPRECATED 30
---@field BaseDamageMin gamedataStatType_1300DEPRECATED 31
---@field BerserkArmorBonus gamedataStatType_1300DEPRECATED 32
---@field BerserkCooldownBase gamedataStatType_1300DEPRECATED 33
---@field BerserkCooldownReduction gamedataStatType_1300DEPRECATED 34
---@field BerserkDurationBase gamedataStatType_1300DEPRECATED 35
---@field BerserkHealthRegenBonus gamedataStatType_1300DEPRECATED 36
---@field BerserkMeleeDamageBonus gamedataStatType_1300DEPRECATED 37
---@field BerserkRecoilReduction gamedataStatType_1300DEPRECATED 38
---@field BerserkResistancesBonus gamedataStatType_1300DEPRECATED 39
---@field BerserkShockwaveDamage gamedataStatType_1300DEPRECATED 40
---@field BerserkShockwaveRangeBonus gamedataStatType_1300DEPRECATED 41
---@field BerserkSwayReduction gamedataStatType_1300DEPRECATED 42
---@field BleedingApplicationRate gamedataStatType_1300DEPRECATED 43
---@field BleedingImmunity gamedataStatType_1300DEPRECATED 44
---@field BlindImmunity gamedataStatType_1300DEPRECATED 45
---@field BlindResistance gamedataStatType_1300DEPRECATED 46
---@field BlockFactor gamedataStatType_1300DEPRECATED 47
---@field BlockLocomotionWhenLeaningOutOfCover gamedataStatType_1300DEPRECATED 48
---@field BlockReduction gamedataStatType_1300DEPRECATED 49
---@field BonusChargeDamage gamedataStatType_1300DEPRECATED 50
---@field BonusDPS gamedataStatType_1300DEPRECATED 51
---@field BonusDamageAgainstElites gamedataStatType_1300DEPRECATED 52
---@field BonusDamageAgainstMechanicals gamedataStatType_1300DEPRECATED 53
---@field BonusDamageAgainstRares gamedataStatType_1300DEPRECATED 54
---@field BonusQuickHackDamage gamedataStatType_1300DEPRECATED 55
---@field BonusRicochetDamage gamedataStatType_1300DEPRECATED 56
---@field Brake gamedataStatType_1300DEPRECATED 57
---@field BrakeDot gamedataStatType_1300DEPRECATED 58
---@field Brawling gamedataStatType_1300DEPRECATED 59
---@field BrawlingMastery gamedataStatType_1300DEPRECATED 60
---@field BrawlingTrait01Stat gamedataStatType_1300DEPRECATED 61
---@field BufferSize gamedataStatType_1300DEPRECATED 62
---@field BulletMagnetismDefaultAngle gamedataStatType_1300DEPRECATED 63
---@field BulletMagnetismHighVelocityAngle gamedataStatType_1300DEPRECATED 64
---@field BulletPseudoPierceHitVFxChance gamedataStatType_1300DEPRECATED 65
---@field BulletSurroundingHitVFxChance gamedataStatType_1300DEPRECATED 66
---@field BurningApplicationRate gamedataStatType_1300DEPRECATED 67
---@field BurningImmunity gamedataStatType_1300DEPRECATED 68
---@field BurningRegenStamina gamedataStatType_1300DEPRECATED 69
---@field CPUPower gamedataStatType_1300DEPRECATED 70
---@field CallReinforcement gamedataStatType_1300DEPRECATED 71
---@field CameraShutdownExtension gamedataStatType_1300DEPRECATED 72
---@field CanAerialTakedown gamedataStatType_1300DEPRECATED 73
---@field CanAimWhileDodging gamedataStatType_1300DEPRECATED 74
---@field CanAskToFollowOrder gamedataStatType_1300DEPRECATED 75
---@field CanAskToHolsterWeapon gamedataStatType_1300DEPRECATED 76
---@field CanAutomaticallyDisassembleJunk gamedataStatType_1300DEPRECATED 77
---@field CanAutomaticallyRestoreKnives gamedataStatType_1300DEPRECATED 78
---@field CanBleedingCriticallyHit gamedataStatType_1300DEPRECATED 79
---@field CanBleedingSlowTarget gamedataStatType_1300DEPRECATED 80
---@field CanBlindQuickHack gamedataStatType_1300DEPRECATED 81
---@field CanBlock gamedataStatType_1300DEPRECATED 82
---@field CanBreatheUnderwater gamedataStatType_1300DEPRECATED 83
---@field CanBuffCamoQuickHack gamedataStatType_1300DEPRECATED 84
---@field CanBuffMechanicalsOnTakeControl gamedataStatType_1300DEPRECATED 85
---@field CanBuffSturdinessQuickHack gamedataStatType_1300DEPRECATED 86
---@field CanBurningCriticallyHit gamedataStatType_1300DEPRECATED 87
---@field CanCallDrones gamedataStatType_1300DEPRECATED 88
---@field CanCallReinforcements gamedataStatType_1300DEPRECATED 89
---@field CanCatchUp gamedataStatType_1300DEPRECATED 90
---@field CanCatchUpDistance gamedataStatType_1300DEPRECATED 91
---@field CanCharge gamedataStatType_1300DEPRECATED 92
---@field CanChargedShoot gamedataStatType_1300DEPRECATED 93
---@field CanCloseCombat gamedataStatType_1300DEPRECATED 94
---@field CanCommsCallInQuickHack gamedataStatType_1300DEPRECATED 95
---@field CanCommsCallOutQuickHack gamedataStatType_1300DEPRECATED 96
---@field CanCommsNoiseQuickHack gamedataStatType_1300DEPRECATED 97
---@field CanControlFullyChargedWeapon gamedataStatType_1300DEPRECATED 98
---@field CanCraftEpicItems gamedataStatType_1300DEPRECATED 99
---@field CanCraftFromInventory gamedataStatType_1300DEPRECATED 100
---@field CanCraftLegendaryItems gamedataStatType_1300DEPRECATED 101
---@field CanCraftRareItems gamedataStatType_1300DEPRECATED 102
---@field CanCraftTechAmmunition gamedataStatType_1300DEPRECATED 103
---@field CanCrouch gamedataStatType_1300DEPRECATED 104
---@field CanCyberwareMalfunctionQuickHack gamedataStatType_1300DEPRECATED 105
---@field CanDash gamedataStatType_1300DEPRECATED 106
---@field CanDataMineQuickHack gamedataStatType_1300DEPRECATED 107
---@field CanDealFullDamageToArmored gamedataStatType_1300DEPRECATED 108
---@field CanDeathQuickHack gamedataStatType_1300DEPRECATED 109
---@field CanDisassemble gamedataStatType_1300DEPRECATED 110
---@field CanDisassembleConsumables gamedataStatType_1300DEPRECATED 111
---@field CanDisassembleGadgets gamedataStatType_1300DEPRECATED 112
---@field CanDropWeapon gamedataStatType_1300DEPRECATED 113
---@field CanElectrocuteNullifyStats gamedataStatType_1300DEPRECATED 114
---@field CanElectrocuteRoot gamedataStatType_1300DEPRECATED 115
---@field CanExitWSOnSoundStimuli gamedataStatType_1300DEPRECATED 116
---@field CanExplodeQuickHack gamedataStatType_1300DEPRECATED 117
---@field CanFastTravelWhileEncumbered gamedataStatType_1300DEPRECATED 118
---@field CanFullyChargeWeapon gamedataStatType_1300DEPRECATED 119
---@field CanGrab gamedataStatType_1300DEPRECATED 120
---@field CanGrappleAndroids gamedataStatType_1300DEPRECATED 121
---@field CanGrappleSilently gamedataStatType_1300DEPRECATED 122
---@field CanGrenadeLaunch gamedataStatType_1300DEPRECATED 123
---@field CanGrenadeQuickHack gamedataStatType_1300DEPRECATED 124
---@field CanGrenadesCriticallyHit gamedataStatType_1300DEPRECATED 125
---@field CanGrenadesDealExternalDamage gamedataStatType_1300DEPRECATED 126
---@field CanGuardBreak gamedataStatType_1300DEPRECATED 127
---@field CanHeartattackQuickHack gamedataStatType_1300DEPRECATED 128
---@field CanIgnoreArmorDamageReduction gamedataStatType_1300DEPRECATED 129
---@field CanIgnoreStamina gamedataStatType_1300DEPRECATED 130
---@field CanInstallTechMods gamedataStatType_1300DEPRECATED 131
---@field CanJamWeaponQuickHack gamedataStatType_1300DEPRECATED 132
---@field CanJump gamedataStatType_1300DEPRECATED 133
---@field CanLandSilently gamedataStatType_1300DEPRECATED 134
---@field CanLegendaryCraftedWeaponsBeBoosted gamedataStatType_1300DEPRECATED 135
---@field CanLocomotionMalfunctionQuickHack gamedataStatType_1300DEPRECATED 136
---@field CanMadnessQuickHack gamedataStatType_1300DEPRECATED 137
---@field CanMalfunctionQuickHack gamedataStatType_1300DEPRECATED 138
---@field CanMeleeBerserk gamedataStatType_1300DEPRECATED 139
---@field CanMeleeDash gamedataStatType_1300DEPRECATED 140
---@field CanMeleeInfinitelyCombo gamedataStatType_1300DEPRECATED 141
---@field CanMeleeLeap gamedataStatType_1300DEPRECATED 142
---@field CanMeleeLeapTakedown gamedataStatType_1300DEPRECATED 143
---@field CanOverchargeWeapon gamedataStatType_1300DEPRECATED 144
---@field CanOverheatQuickHack gamedataStatType_1300DEPRECATED 145
---@field CanOverloadQuickHack gamedataStatType_1300DEPRECATED 146
---@field CanOverrideAttitudeQuickHack gamedataStatType_1300DEPRECATED 147
---@field CanOverrideAuthorizationQuickHack gamedataStatType_1300DEPRECATED 148
---@field CanParry gamedataStatType_1300DEPRECATED 149
---@field CanPickUpBodyAfterTakedown gamedataStatType_1300DEPRECATED 150
---@field CanPickUpWeapon gamedataStatType_1300DEPRECATED 151
---@field CanPingQuickHack gamedataStatType_1300DEPRECATED 152
---@field CanPlayerBoostConsumables gamedataStatType_1300DEPRECATED 153
---@field CanPlayerBoostGrenades gamedataStatType_1300DEPRECATED 154
---@field CanPoisonLowerArmor gamedataStatType_1300DEPRECATED 155
---@field CanPoisonSlow gamedataStatType_1300DEPRECATED 156
---@field CanPreciseShoot gamedataStatType_1300DEPRECATED 157
---@field CanPushBack gamedataStatType_1300DEPRECATED 158
---@field CanPushFromGrapple gamedataStatType_1300DEPRECATED 159
---@field CanQuickHackCriticallyHit gamedataStatType_1300DEPRECATED 160
---@field CanQuickMeleeStagger gamedataStatType_1300DEPRECATED 161
---@field CanQuickhack gamedataStatType_1300DEPRECATED 162
---@field CanQuickhackHealPuppet gamedataStatType_1300DEPRECATED 163
---@field CanQuickhackTransferBetweenEnemies gamedataStatType_1300DEPRECATED 164
---@field CanRegenInCombat gamedataStatType_1300DEPRECATED 165
---@field CanRemoveModsFromClothing gamedataStatType_1300DEPRECATED 166
---@field CanRemoveModsFromWeapons gamedataStatType_1300DEPRECATED 167
---@field CanResurrectAllies gamedataStatType_1300DEPRECATED 168
---@field CanRetrieveModsFromDisassemble gamedataStatType_1300DEPRECATED 169
---@field CanRunSilently gamedataStatType_1300DEPRECATED 170
---@field CanSandevistanSprintHarass gamedataStatType_1300DEPRECATED 171
---@field CanScrapPartsFromMechanicals gamedataStatType_1300DEPRECATED 172
---@field CanSeeGrenadeRadius gamedataStatType_1300DEPRECATED 173
---@field CanSeeRicochetVisuals gamedataStatType_1300DEPRECATED 174
---@field CanSeeThroughWalls gamedataStatType_1300DEPRECATED 175
---@field CanShareThreatsWithPlayer gamedataStatType_1300DEPRECATED 176
---@field CanShootWhileCarryingBody gamedataStatType_1300DEPRECATED 177
---@field CanShootWhileDodging gamedataStatType_1300DEPRECATED 178
---@field CanShootWhileGrappling gamedataStatType_1300DEPRECATED 179
---@field CanShootWhileMoving gamedataStatType_1300DEPRECATED 180
---@field CanShootWhileVaulting gamedataStatType_1300DEPRECATED 181
---@field CanSilentKill gamedataStatType_1300DEPRECATED 182
---@field CanSmartShoot gamedataStatType_1300DEPRECATED 183
---@field CanSprint gamedataStatType_1300DEPRECATED 184
---@field CanSprintHarass gamedataStatType_1300DEPRECATED 185
---@field CanSprintWhileCarryingBody gamedataStatType_1300DEPRECATED 186
---@field CanSuicideQuickHack gamedataStatType_1300DEPRECATED 187
---@field CanSwitchWeapon gamedataStatType_1300DEPRECATED 188
---@field CanTakeControlQuickHack gamedataStatType_1300DEPRECATED 189
---@field CanTakedownLethally gamedataStatType_1300DEPRECATED 190
---@field CanTakedownSilently gamedataStatType_1300DEPRECATED 191
---@field CanTaunt gamedataStatType_1300DEPRECATED 192
---@field CanThrowWeapon gamedataStatType_1300DEPRECATED 193
---@field CanUpgradeFromInventory gamedataStatType_1300DEPRECATED 194
---@field CanUpgradeToLegendaryQuality gamedataStatType_1300DEPRECATED 195
---@field CanUseAntiStun gamedataStatType_1300DEPRECATED 196
---@field CanUseBiohazardGrenades gamedataStatType_1300DEPRECATED 197
---@field CanUseCloseRing gamedataStatType_1300DEPRECATED 198
---@field CanUseCombatStims gamedataStatType_1300DEPRECATED 199
---@field CanUseConsumables gamedataStatType_1300DEPRECATED 200
---@field CanUseCoolingSystem gamedataStatType_1300DEPRECATED 201
---@field CanUseCovers gamedataStatType_1300DEPRECATED 202
---@field CanUseCuttingGrenades gamedataStatType_1300DEPRECATED 203
---@field CanUseEMPGrenades gamedataStatType_1300DEPRECATED 204
---@field CanUseExtremeRing gamedataStatType_1300DEPRECATED 205
---@field CanUseFarRing gamedataStatType_1300DEPRECATED 206
---@field CanUseFlashbangGrenades gamedataStatType_1300DEPRECATED 207
---@field CanUseFragGrenades gamedataStatType_1300DEPRECATED 208
---@field CanUseGrenades gamedataStatType_1300DEPRECATED 209
---@field CanUseHolographicCamo gamedataStatType_1300DEPRECATED 210
---@field CanUseIncendiaryGrenades gamedataStatType_1300DEPRECATED 211
---@field CanUseLeftHand gamedataStatType_1300DEPRECATED 212
---@field CanUseLegs gamedataStatType_1300DEPRECATED 213
---@field CanUseMantisBlades gamedataStatType_1300DEPRECATED 214
---@field CanUseMediumRing gamedataStatType_1300DEPRECATED 215
---@field CanUseMeleeRing gamedataStatType_1300DEPRECATED 216
---@field CanUseOpticalCamo gamedataStatType_1300DEPRECATED 217
---@field CanUsePainInhibitors gamedataStatType_1300DEPRECATED 218
---@field CanUsePersonalSoundSilencer gamedataStatType_1300DEPRECATED 219
---@field CanUseProjectileLauncher gamedataStatType_1300DEPRECATED 220
---@field CanUseReconGrenades gamedataStatType_1300DEPRECATED 221
---@field CanUseRetractableShield gamedataStatType_1300DEPRECATED 222
---@field CanUseRightHand gamedataStatType_1300DEPRECATED 223
---@field CanUseShootingSpots gamedataStatType_1300DEPRECATED 224
---@field CanUseStaticCamo gamedataStatType_1300DEPRECATED 225
---@field CanUseStrongArms gamedataStatType_1300DEPRECATED 226
---@field CanUseTakedowns gamedataStatType_1300DEPRECATED 227
---@field CanUseTerrainCamo gamedataStatType_1300DEPRECATED 228
---@field CanUseZoom gamedataStatType_1300DEPRECATED 229
---@field CanWalkSilently gamedataStatType_1300DEPRECATED 230
---@field CanWallStick gamedataStatType_1300DEPRECATED 231
---@field CanWeaponBlock gamedataStatType_1300DEPRECATED 232
---@field CanWeaponBlockAttack gamedataStatType_1300DEPRECATED 233
---@field CanWeaponComboAttack gamedataStatType_1300DEPRECATED 234
---@field CanWeaponCriticallyHit gamedataStatType_1300DEPRECATED 235
---@field CanWeaponCrouchAttack gamedataStatType_1300DEPRECATED 236
---@field CanWeaponDash gamedataStatType_1300DEPRECATED 237
---@field CanWeaponDeflect gamedataStatType_1300DEPRECATED 238
---@field CanWeaponIgnoreArmor gamedataStatType_1300DEPRECATED 239
---@field CanWeaponInfinitlyCombo gamedataStatType_1300DEPRECATED 240
---@field CanWeaponJumpAttack gamedataStatType_1300DEPRECATED 241
---@field CanWeaponLeap gamedataStatType_1300DEPRECATED 242
---@field CanWeaponMalfunctionQuickHack gamedataStatType_1300DEPRECATED 243
---@field CanWeaponReload gamedataStatType_1300DEPRECATED 244
---@field CanWeaponReloadWhileInactive gamedataStatType_1300DEPRECATED 245
---@field CanWeaponReloadWhileSliding gamedataStatType_1300DEPRECATED 246
---@field CanWeaponReloadWhileSprinting gamedataStatType_1300DEPRECATED 247
---@field CanWeaponReloadWhileVaulting gamedataStatType_1300DEPRECATED 248
---@field CanWeaponSafeAttack gamedataStatType_1300DEPRECATED 249
---@field CanWeaponShoot gamedataStatType_1300DEPRECATED 250
---@field CanWeaponShootWhileSliding gamedataStatType_1300DEPRECATED 251
---@field CanWeaponShootWhileSprinting gamedataStatType_1300DEPRECATED 252
---@field CanWeaponShootWhileVaulting gamedataStatType_1300DEPRECATED 253
---@field CanWeaponSnapToLimbs gamedataStatType_1300DEPRECATED 254
---@field CanWeaponSprintAttack gamedataStatType_1300DEPRECATED 255
---@field CanWeaponStrongAttack gamedataStatType_1300DEPRECATED 256
---@field CanWeaponTriggerHeadshot gamedataStatType_1300DEPRECATED 257
---@field CannotBeDetectedWhileSubmerged gamedataStatType_1300DEPRECATED 258
---@field CannotBeHealed gamedataStatType_1300DEPRECATED 259
---@field CannotSprintHarass gamedataStatType_1300DEPRECATED 260
---@field CarryCapacity gamedataStatType_1300DEPRECATED 261
---@field CausingPanicReducesUltimateHacksCost gamedataStatType_1300DEPRECATED 262
---@field Charge gamedataStatType_1300DEPRECATED 263
---@field ChargeDischargeTime gamedataStatType_1300DEPRECATED 264
---@field ChargeFullMultiplier gamedataStatType_1300DEPRECATED 265
---@field ChargeMaxTimeInChargedState gamedataStatType_1300DEPRECATED 266
---@field ChargeMultiplier gamedataStatType_1300DEPRECATED 267
---@field ChargeReadyPercentage gamedataStatType_1300DEPRECATED 268
---@field ChargeShouldFireWhenReady gamedataStatType_1300DEPRECATED 269
---@field ChargeTime gamedataStatType_1300DEPRECATED 270
---@field ChemicalDamage gamedataStatType_1300DEPRECATED 271
---@field ChemicalDamageMax gamedataStatType_1300DEPRECATED 272
---@field ChemicalDamageMin gamedataStatType_1300DEPRECATED 273
---@field ChemicalDamagePercent gamedataStatType_1300DEPRECATED 274
---@field ChemicalResistance gamedataStatType_1300DEPRECATED 275
---@field ClimbSpeedModifier gamedataStatType_1300DEPRECATED 276
---@field ClipTimesCycle gamedataStatType_1300DEPRECATED 277
---@field ClipTimesCycleBase gamedataStatType_1300DEPRECATED 278
---@field ClipTimesCyclePlusReload gamedataStatType_1300DEPRECATED 279
---@field ClipTimesCyclePlusReloadBase gamedataStatType_1300DEPRECATED 280
---@field CloudComputingTraps gamedataStatType_1300DEPRECATED 281
---@field ColdBlood gamedataStatType_1300DEPRECATED 282
---@field ColdBloodBuffBonus gamedataStatType_1300DEPRECATED 283
---@field ColdBloodMastery gamedataStatType_1300DEPRECATED 284
---@field ColdBloodMaxDuration gamedataStatType_1300DEPRECATED 285
---@field ColdBloodMaxStacks gamedataStatType_1300DEPRECATED 286
---@field ColdBloodTrait01 gamedataStatType_1300DEPRECATED 287
---@field CombatHacking gamedataStatType_1300DEPRECATED 288
---@field CombatHackingMastery gamedataStatType_1300DEPRECATED 289
---@field CommsNoiseJamOnQuickhack gamedataStatType_1300DEPRECATED 290
---@field Cool gamedataStatType_1300DEPRECATED 291
---@field Crafting gamedataStatType_1300DEPRECATED 292
---@field CraftingBonusArmorValue gamedataStatType_1300DEPRECATED 293
---@field CraftingBonusConsumableDuration gamedataStatType_1300DEPRECATED 294
---@field CraftingBonusGrenadeDamage gamedataStatType_1300DEPRECATED 295
---@field CraftingBonusWeaponDamage gamedataStatType_1300DEPRECATED 296
---@field CraftingCostReduction gamedataStatType_1300DEPRECATED 297
---@field CraftingItemLevelBoost gamedataStatType_1300DEPRECATED 298
---@field CraftingMastery gamedataStatType_1300DEPRECATED 299
---@field CraftingMaterialDropChance gamedataStatType_1300DEPRECATED 300
---@field CraftingMaterialRandomGrantChance gamedataStatType_1300DEPRECATED 301
---@field CraftingMaterialRetrieveChance gamedataStatType_1300DEPRECATED 302
---@field CraftingTrait01 gamedataStatType_1300DEPRECATED 303
---@field CritChance gamedataStatType_1300DEPRECATED 304
---@field CritChanceTimeCritDamage gamedataStatType_1300DEPRECATED 305
---@field CritDPSBonus gamedataStatType_1300DEPRECATED 306
---@field CritDamage gamedataStatType_1300DEPRECATED 307
---@field CyberwareCooldownReduction gamedataStatType_1300DEPRECATED 308
---@field CycleTime gamedataStatType_1300DEPRECATED 309
---@field CycleTimeAimBlockDuration gamedataStatType_1300DEPRECATED 310
---@field CycleTimeAimBlockStart gamedataStatType_1300DEPRECATED 311
---@field CycleTimeBase gamedataStatType_1300DEPRECATED 312
---@field CycleTimeBonus gamedataStatType_1300DEPRECATED 313
---@field CycleTimeShootingMult gamedataStatType_1300DEPRECATED 314
---@field CycleTimeShootingMultPeriod gamedataStatType_1300DEPRECATED 315
---@field CycleTime_Burst gamedataStatType_1300DEPRECATED 316
---@field CycleTime_BurstMaxCharge gamedataStatType_1300DEPRECATED 317
---@field CycleTime_BurstSecondary gamedataStatType_1300DEPRECATED 318
---@field CycleTriggerModeTime gamedataStatType_1300DEPRECATED 319
---@field DPS gamedataStatType_1300DEPRECATED 320
---@field DamageFalloffDisabled gamedataStatType_1300DEPRECATED 321
---@field DamageHackSpread gamedataStatType_1300DEPRECATED 322
---@field DamagePerHit gamedataStatType_1300DEPRECATED 323
---@field DamageReductionDamageOverTime gamedataStatType_1300DEPRECATED 324
---@field DamageReductionExplosion gamedataStatType_1300DEPRECATED 325
---@field DashAttackStaminaCostReduction gamedataStatType_1300DEPRECATED 326
---@field DataLeakTraps gamedataStatType_1300DEPRECATED 327
---@field DealsChemicalDamage gamedataStatType_1300DEPRECATED 328
---@field DealsElectricDamage gamedataStatType_1300DEPRECATED 329
---@field DealsPhysicalDamage gamedataStatType_1300DEPRECATED 330
---@field DealsThermalDamage gamedataStatType_1300DEPRECATED 331
---@field Deceleration gamedataStatType_1300DEPRECATED 332
---@field DefeatedHeadDamageThreshold gamedataStatType_1300DEPRECATED 333
---@field DefeatedLArmDamageThreshold gamedataStatType_1300DEPRECATED 334
---@field DefeatedLLegDamageThreshold gamedataStatType_1300DEPRECATED 335
---@field DefeatedRArmDamageThreshold gamedataStatType_1300DEPRECATED 336
---@field DefeatedRLegDamageThreshold gamedataStatType_1300DEPRECATED 337
---@field DefeatingEnemiesReduceHacksCost gamedataStatType_1300DEPRECATED 338
---@field Demolition gamedataStatType_1300DEPRECATED 339
---@field DemolitionMastery gamedataStatType_1300DEPRECATED 340
---@field DemolitionTrait01Stat gamedataStatType_1300DEPRECATED 341
---@field Detection gamedataStatType_1300DEPRECATED 342
---@field DeviceMemoryCostReduction gamedataStatType_1300DEPRECATED 343
---@field DisableCyberwareOnBurning gamedataStatType_1300DEPRECATED 344
---@field DisassemblingIngredientsDoubleBonus gamedataStatType_1300DEPRECATED 345
---@field DisassemblingMaterialQualityObtainChance gamedataStatType_1300DEPRECATED 346
---@field DismHeadDamageThreshold gamedataStatType_1300DEPRECATED 347
---@field DismLArmDamageThreshold gamedataStatType_1300DEPRECATED 348
---@field DismLLegDamageThreshold gamedataStatType_1300DEPRECATED 349
---@field DismRArmDamageThreshold gamedataStatType_1300DEPRECATED 350
---@field DismRLegDamageThreshold gamedataStatType_1300DEPRECATED 351
---@field DoNotCheckFriendlyFireMadnessPassive gamedataStatType_1300DEPRECATED 352
---@field DummyResistanceStat gamedataStatType_1300DEPRECATED 353
---@field Durability gamedataStatType_1300DEPRECATED 354
---@field DurationBonusBleeding gamedataStatType_1300DEPRECATED 355
---@field DurationBonusBurning gamedataStatType_1300DEPRECATED 356
---@field DurationBonusElectrified gamedataStatType_1300DEPRECATED 357
---@field DurationBonusPoisoned gamedataStatType_1300DEPRECATED 358
---@field DurationBonusQuickhack gamedataStatType_1300DEPRECATED 359
---@field DurationBonusStun gamedataStatType_1300DEPRECATED 360
---@field EMPImmunity gamedataStatType_1300DEPRECATED 361
---@field EffectiveDPS gamedataStatType_1300DEPRECATED 362
---@field EffectiveDamagePerHit gamedataStatType_1300DEPRECATED 363
---@field EffectiveDamagePerHitMax gamedataStatType_1300DEPRECATED 364
---@field EffectiveDamagePerHitMin gamedataStatType_1300DEPRECATED 365
---@field EffectiveDamagePerHitTimesAttacksPerSecond gamedataStatType_1300DEPRECATED 366
---@field EffectiveRange gamedataStatType_1300DEPRECATED 367
---@field ElectricDamage gamedataStatType_1300DEPRECATED 368
---@field ElectricDamageMax gamedataStatType_1300DEPRECATED 369
---@field ElectricDamageMin gamedataStatType_1300DEPRECATED 370
---@field ElectricDamagePercent gamedataStatType_1300DEPRECATED 371
---@field ElectricResistance gamedataStatType_1300DEPRECATED 372
---@field ElectrocuteImmunity gamedataStatType_1300DEPRECATED 373
---@field ElectrocutedApplicationRate gamedataStatType_1300DEPRECATED 374
---@field ElementalDamagePerHit gamedataStatType_1300DEPRECATED 375
---@field ElementalResistanceMultiplier gamedataStatType_1300DEPRECATED 376
---@field EmptyReloadTime gamedataStatType_1300DEPRECATED 377
---@field Engineering gamedataStatType_1300DEPRECATED 378
---@field EngineeringMastery gamedataStatType_1300DEPRECATED 379
---@field EngineeringTrait01 gamedataStatType_1300DEPRECATED 380
---@field EquipActionDuration_Corpo gamedataStatType_1300DEPRECATED 381
---@field EquipActionDuration_Gang gamedataStatType_1300DEPRECATED 382
---@field EquipAnimationDuration_Corpo gamedataStatType_1300DEPRECATED 383
---@field EquipAnimationDuration_Gang gamedataStatType_1300DEPRECATED 384
---@field EquipDuration gamedataStatType_1300DEPRECATED 385
---@field EquipDuration_First gamedataStatType_1300DEPRECATED 386
---@field EquipItemTime_Corpo gamedataStatType_1300DEPRECATED 387
---@field EquipItemTime_Gang gamedataStatType_1300DEPRECATED 388
---@field Evasion gamedataStatType_1300DEPRECATED 389
---@field ExplosionKillsRecudeUltimateHacksCost gamedataStatType_1300DEPRECATED 390
---@field FFInputLock gamedataStatType_1300DEPRECATED 391
---@field FallDamageReduction gamedataStatType_1300DEPRECATED 392
---@field FearOnQuickHackKill gamedataStatType_1300DEPRECATED 393
---@field FullAutoOnFullCharge gamedataStatType_1300DEPRECATED 394
---@field Gunslinger gamedataStatType_1300DEPRECATED 395
---@field GunslingerMastery gamedataStatType_1300DEPRECATED 396
---@field GunslingerTrait01Stat gamedataStatType_1300DEPRECATED 397
---@field HackedEnemiesGetDamagedByFriendlyFire gamedataStatType_1300DEPRECATED 398
---@field HackedEnemyArmorReduction gamedataStatType_1300DEPRECATED 399
---@field Hacking gamedataStatType_1300DEPRECATED 400
---@field HackingMastery gamedataStatType_1300DEPRECATED 401
---@field HackingPenetration gamedataStatType_1300DEPRECATED 402
---@field HackingResistance gamedataStatType_1300DEPRECATED 403
---@field HackingResistanceUltimate gamedataStatType_1300DEPRECATED 404
---@field HasAdditionalSplinterSlot gamedataStatType_1300DEPRECATED 405
---@field HasAheadTargeting gamedataStatType_1300DEPRECATED 406
---@field HasAirHover gamedataStatType_1300DEPRECATED 407
---@field HasAirThrusters gamedataStatType_1300DEPRECATED 408
---@field HasAutoReloader gamedataStatType_1300DEPRECATED 409
---@field HasAutomaticReplenishment gamedataStatType_1300DEPRECATED 410
---@field HasAutomaticTagging gamedataStatType_1300DEPRECATED 411
---@field HasBerserk gamedataStatType_1300DEPRECATED 412
---@field HasBleedImmunity gamedataStatType_1300DEPRECATED 413
---@field HasBlindImmunity gamedataStatType_1300DEPRECATED 414
---@field HasBoostedCortex gamedataStatType_1300DEPRECATED 415
---@field HasBurningBuffs gamedataStatType_1300DEPRECATED 416
---@field HasCameraLinking gamedataStatType_1300DEPRECATED 417
---@field HasChargeJump gamedataStatType_1300DEPRECATED 418
---@field HasCritImmunity gamedataStatType_1300DEPRECATED 419
---@field HasCyberdeck gamedataStatType_1300DEPRECATED 420
---@field HasCybereye gamedataStatType_1300DEPRECATED 421
---@field HasDodge gamedataStatType_1300DEPRECATED 422
---@field HasDodgeAir gamedataStatType_1300DEPRECATED 423
---@field HasDoubleJump gamedataStatType_1300DEPRECATED 424
---@field HasElectricCoating gamedataStatType_1300DEPRECATED 425
---@field HasElectroPlating gamedataStatType_1300DEPRECATED 426
---@field HasExtendedHitReactionImmunity gamedataStatType_1300DEPRECATED 427
---@field HasFireproofSkin gamedataStatType_1300DEPRECATED 428
---@field HasGPS gamedataStatType_1300DEPRECATED 429
---@field HasGlowingTattoos gamedataStatType_1300DEPRECATED 430
---@field HasGraphiteTissue gamedataStatType_1300DEPRECATED 431
---@field HasHackingInteractions gamedataStatType_1300DEPRECATED 432
---@field HasHealingReapplication gamedataStatType_1300DEPRECATED 433
---@field HasHealthMonitorBomb gamedataStatType_1300DEPRECATED 434
---@field HasHostileHackImmunity gamedataStatType_1300DEPRECATED 435
---@field HasICELevelBooster gamedataStatType_1300DEPRECATED 436
---@field HasInfravision gamedataStatType_1300DEPRECATED 437
---@field HasJuiceInjector gamedataStatType_1300DEPRECATED 438
---@field HasKerenzikov gamedataStatType_1300DEPRECATED 439
---@field HasKerenzikovSlide gamedataStatType_1300DEPRECATED 440
---@field HasKers gamedataStatType_1300DEPRECATED 441
---@field HasLinkToBountySystem gamedataStatType_1300DEPRECATED 442
---@field HasLoweringPerception gamedataStatType_1300DEPRECATED 443
---@field HasMadnessLvl4Passive gamedataStatType_1300DEPRECATED 444
---@field HasMajorQuickhackResistance gamedataStatType_1300DEPRECATED 445
---@field HasMechanicalControl gamedataStatType_1300DEPRECATED 446
---@field HasMeleeImmunity gamedataStatType_1300DEPRECATED 447
---@field HasMeleeTargeting gamedataStatType_1300DEPRECATED 448
---@field HasMetabolicEnhancer gamedataStatType_1300DEPRECATED 449
---@field HasPoisonHeal gamedataStatType_1300DEPRECATED 450
---@field HasPoisonImmunity gamedataStatType_1300DEPRECATED 451
---@field HasPowerGrip gamedataStatType_1300DEPRECATED 452
---@field HasQuickhackResistance gamedataStatType_1300DEPRECATED 453
---@field HasRemoteBotAccessPointBreach gamedataStatType_1300DEPRECATED 454
---@field HasSandevistan gamedataStatType_1300DEPRECATED 455
---@field HasSandevistanTier1 gamedataStatType_1300DEPRECATED 456
---@field HasSandevistanTier2 gamedataStatType_1300DEPRECATED 457
---@field HasSandevistanTier3 gamedataStatType_1300DEPRECATED 458
---@field HasSecondHeart gamedataStatType_1300DEPRECATED 459
---@field HasSelfHealingSkin gamedataStatType_1300DEPRECATED 460
---@field HasSmartLink gamedataStatType_1300DEPRECATED 461
---@field HasSpiderBotControl gamedataStatType_1300DEPRECATED 462
---@field HasStunImmunity gamedataStatType_1300DEPRECATED 463
---@field HasSubdermalArmor gamedataStatType_1300DEPRECATED 464
---@field HasSuperheroFall gamedataStatType_1300DEPRECATED 465
---@field HasThermovision gamedataStatType_1300DEPRECATED 466
---@field HasTimedImmunity gamedataStatType_1300DEPRECATED 467
---@field HasToxicCleanser gamedataStatType_1300DEPRECATED 468
---@field HasWallRunSkill gamedataStatType_1300DEPRECATED 469
---@field HeadshotDamageMultiplier gamedataStatType_1300DEPRECATED 470
---@field HeadshotImmunity gamedataStatType_1300DEPRECATED 471
---@field Health gamedataStatType_1300DEPRECATED 472
---@field HealthInCombatRegenDelayOnChange gamedataStatType_1300DEPRECATED 473
---@field HealthInCombatRegenEnabled gamedataStatType_1300DEPRECATED 474
---@field HealthInCombatRegenEndThreshold gamedataStatType_1300DEPRECATED 475
---@field HealthInCombatRegenRate gamedataStatType_1300DEPRECATED 476
---@field HealthInCombatRegenRateAdd gamedataStatType_1300DEPRECATED 477
---@field HealthInCombatRegenRateBase gamedataStatType_1300DEPRECATED 478
---@field HealthInCombatRegenRateMult gamedataStatType_1300DEPRECATED 479
---@field HealthInCombatRegenStartThreshold gamedataStatType_1300DEPRECATED 480
---@field HealthInCombatStartDelay gamedataStatType_1300DEPRECATED 481
---@field HealthMonitorCooldownDuration gamedataStatType_1300DEPRECATED 482
---@field HealthOutOfCombatRegenDelayOnChange gamedataStatType_1300DEPRECATED 483
---@field HealthOutOfCombatRegenEnabled gamedataStatType_1300DEPRECATED 484
---@field HealthOutOfCombatRegenEndThreshold gamedataStatType_1300DEPRECATED 485
---@field HealthOutOfCombatRegenRate gamedataStatType_1300DEPRECATED 486
---@field HealthOutOfCombatRegenRateAdd gamedataStatType_1300DEPRECATED 487
---@field HealthOutOfCombatRegenRateBase gamedataStatType_1300DEPRECATED 488
---@field HealthOutOfCombatRegenRateMult gamedataStatType_1300DEPRECATED 489
---@field HealthOutOfCombatRegenStartThreshold gamedataStatType_1300DEPRECATED 490
---@field Hearing gamedataStatType_1300DEPRECATED 491
---@field HeavyAttacksNumber gamedataStatType_1300DEPRECATED 492
---@field HighlightAccessPoint gamedataStatType_1300DEPRECATED 493
---@field HitDismembermentFactor gamedataStatType_1300DEPRECATED 494
---@field HitReactionDamageHealthFactor gamedataStatType_1300DEPRECATED 495
---@field HitReactionFactor gamedataStatType_1300DEPRECATED 496
---@field HitTimerAfterDefeated gamedataStatType_1300DEPRECATED 497
---@field HitTimerAfterImpact gamedataStatType_1300DEPRECATED 498
---@field HitTimerAfterImpactMelee gamedataStatType_1300DEPRECATED 499
---@field HitTimerAfterKnockdown gamedataStatType_1300DEPRECATED 500
---@field HitTimerAfterPain gamedataStatType_1300DEPRECATED 501
---@field HitTimerAfterStagger gamedataStatType_1300DEPRECATED 502
---@field HitTimerAfterStaggerMelee gamedataStatType_1300DEPRECATED 503
---@field HitWoundsFactor gamedataStatType_1300DEPRECATED 504
---@field HoldDuration gamedataStatType_1300DEPRECATED 505
---@field HoldEnterDuration gamedataStatType_1300DEPRECATED 506
---@field HoldTimeoutDuration gamedataStatType_1300DEPRECATED 507
---@field HolographicSkinCooldownDuration gamedataStatType_1300DEPRECATED 508
---@field HolographicSkinDuration gamedataStatType_1300DEPRECATED 509
---@field IconicItemUpgraded gamedataStatType_1300DEPRECATED 510
---@field ImpactDamageThreshold gamedataStatType_1300DEPRECATED 511
---@field ImpactDamageThresholdImpulse gamedataStatType_1300DEPRECATED 512
---@field ImpactDamageThresholdInCover gamedataStatType_1300DEPRECATED 513
---@field Intelligence gamedataStatType_1300DEPRECATED 514
---@field IsAggressive gamedataStatType_1300DEPRECATED 515
---@field IsBalanced gamedataStatType_1300DEPRECATED 516
---@field IsBlocking gamedataStatType_1300DEPRECATED 517
---@field IsCautious gamedataStatType_1300DEPRECATED 518
---@field IsDefensive gamedataStatType_1300DEPRECATED 519
---@field IsDeflecting gamedataStatType_1300DEPRECATED 520
---@field IsDodgeStaminaFree gamedataStatType_1300DEPRECATED 521
---@field IsDodging gamedataStatType_1300DEPRECATED 522
---@field IsFastMeleeArchetype gamedataStatType_1300DEPRECATED 523
---@field IsFastRangedArchetype gamedataStatType_1300DEPRECATED 524
---@field IsGenericMeleeArchetype gamedataStatType_1300DEPRECATED 525
---@field IsGenericRangedArchetype gamedataStatType_1300DEPRECATED 526
---@field IsHeavyRangedArchetype gamedataStatType_1300DEPRECATED 527
---@field IsInvulnerable gamedataStatType_1300DEPRECATED 528
---@field IsItemBroken gamedataStatType_1300DEPRECATED 529
---@field IsItemCracked gamedataStatType_1300DEPRECATED 530
---@field IsItemCrafted gamedataStatType_1300DEPRECATED 531
---@field IsItemIconic gamedataStatType_1300DEPRECATED 532
---@field IsItemUpgraded gamedataStatType_1300DEPRECATED 533
---@field IsManBig gamedataStatType_1300DEPRECATED 534
---@field IsManMassive gamedataStatType_1300DEPRECATED 535
---@field IsMechanical gamedataStatType_1300DEPRECATED 536
---@field IsNetrunnerArchetype gamedataStatType_1300DEPRECATED 537
---@field IsNotSlowedDuringADS gamedataStatType_1300DEPRECATED 538
---@field IsNotSlowedDuringBlock gamedataStatType_1300DEPRECATED 539
---@field IsNotSlowedDuringReload gamedataStatType_1300DEPRECATED 540
---@field IsReckless gamedataStatType_1300DEPRECATED 541
---@field IsShotgunnerArchetype gamedataStatType_1300DEPRECATED 542
---@field IsSniperArchetype gamedataStatType_1300DEPRECATED 543
---@field IsSprintStaminaFree gamedataStatType_1300DEPRECATED 544
---@field IsStrongMeleeArchetype gamedataStatType_1300DEPRECATED 545
---@field IsTechieArchetype gamedataStatType_1300DEPRECATED 546
---@field IsTier1Archetype gamedataStatType_1300DEPRECATED 547
---@field IsTier2Archetype gamedataStatType_1300DEPRECATED 548
---@field IsTier3Archetype gamedataStatType_1300DEPRECATED 549
---@field IsTier4Archetype gamedataStatType_1300DEPRECATED 550
---@field IsWeakspot gamedataStatType_1300DEPRECATED 551
---@field IsWeaponLethal gamedataStatType_1300DEPRECATED 552
---@field ItemArmor gamedataStatType_1300DEPRECATED 553
---@field ItemLevel gamedataStatType_1300DEPRECATED 554
---@field ItemRequiresElectroPlating gamedataStatType_1300DEPRECATED 555
---@field ItemRequiresPowerGrip gamedataStatType_1300DEPRECATED 556
---@field ItemRequiresSmartLink gamedataStatType_1300DEPRECATED 557
---@field JumpHeight gamedataStatType_1300DEPRECATED 558
---@field Kenjutsu gamedataStatType_1300DEPRECATED 559
---@field KenjutsuMastery gamedataStatType_1300DEPRECATED 560
---@field KenjutsuTrait01Stat gamedataStatType_1300DEPRECATED 561
---@field KnockdownDamageThreshold gamedataStatType_1300DEPRECATED 562
---@field KnockdownDamageThresholdImpulse gamedataStatType_1300DEPRECATED 563
---@field KnockdownDamageThresholdInCover gamedataStatType_1300DEPRECATED 564
---@field KnockdownImmunity gamedataStatType_1300DEPRECATED 565
---@field KnockdownImpulse gamedataStatType_1300DEPRECATED 566
---@field Level gamedataStatType_1300DEPRECATED 567
---@field LimbHealth gamedataStatType_1300DEPRECATED 568
---@field LinearDirectionUpdateMax gamedataStatType_1300DEPRECATED 569
---@field LinearDirectionUpdateMaxADS gamedataStatType_1300DEPRECATED 570
---@field LinearDirectionUpdateMin gamedataStatType_1300DEPRECATED 571
---@field LinearDirectionUpdateMinADS gamedataStatType_1300DEPRECATED 572
---@field LowerActiveCooldownOnDefeat gamedataStatType_1300DEPRECATED 573
---@field LowerHackingResistanceOnHack gamedataStatType_1300DEPRECATED 574
---@field MagazineCapacity gamedataStatType_1300DEPRECATED 575
---@field MagazineCapacityBase gamedataStatType_1300DEPRECATED 576
---@field MagazineCapacityBonus gamedataStatType_1300DEPRECATED 577
---@field MaxDuration gamedataStatType_1300DEPRECATED 578
---@field MaxPercentDamageTakenPerHit gamedataStatType_1300DEPRECATED 579
---@field MaxSpeed gamedataStatType_1300DEPRECATED 580
---@field MaxStacks gamedataStatType_1300DEPRECATED 581
---@field MaxStacksBonusBleeding gamedataStatType_1300DEPRECATED 582
---@field MaxStacksBonusBurning gamedataStatType_1300DEPRECATED 583
---@field MaximumRange gamedataStatType_1300DEPRECATED 584
---@field MechanicalsBuffDPSBonus gamedataStatType_1300DEPRECATED 585
---@field MeleeAttackDuration gamedataStatType_1300DEPRECATED 586
---@field Memory gamedataStatType_1300DEPRECATED 587
---@field MemoryCostModifier gamedataStatType_1300DEPRECATED 588
---@field MemoryCostReduction gamedataStatType_1300DEPRECATED 589
---@field MemoryInCombatRegenDelayOnChange gamedataStatType_1300DEPRECATED 590
---@field MemoryInCombatRegenEnabled gamedataStatType_1300DEPRECATED 591
---@field MemoryInCombatRegenEndThreshold gamedataStatType_1300DEPRECATED 592
---@field MemoryInCombatRegenRate gamedataStatType_1300DEPRECATED 593
---@field MemoryInCombatRegenRateAdd gamedataStatType_1300DEPRECATED 594
---@field MemoryInCombatRegenRateBase gamedataStatType_1300DEPRECATED 595
---@field MemoryInCombatRegenRateMult gamedataStatType_1300DEPRECATED 596
---@field MemoryInCombatRegenStartThreshold gamedataStatType_1300DEPRECATED 597
---@field MemoryInCombatStartDelay gamedataStatType_1300DEPRECATED 598
---@field MemoryOutOfCombatRegenDelayOnChange gamedataStatType_1300DEPRECATED 599
---@field MemoryOutOfCombatRegenEnabled gamedataStatType_1300DEPRECATED 600
---@field MemoryOutOfCombatRegenEndThreshold gamedataStatType_1300DEPRECATED 601
---@field MemoryOutOfCombatRegenRate gamedataStatType_1300DEPRECATED 602
---@field MemoryOutOfCombatRegenRateAdd gamedataStatType_1300DEPRECATED 603
---@field MemoryOutOfCombatRegenRateBase gamedataStatType_1300DEPRECATED 604
---@field MemoryOutOfCombatRegenRateMult gamedataStatType_1300DEPRECATED 605
---@field MemoryOutOfCombatRegenStartThreshold gamedataStatType_1300DEPRECATED 606
---@field MemoryOutOfCombatStartDelay gamedataStatType_1300DEPRECATED 607
---@field MemoryTrackerCooldownDuration gamedataStatType_1300DEPRECATED 608
---@field MemoryWipeImmunity gamedataStatType_1300DEPRECATED 609
---@field MinSpeed gamedataStatType_1300DEPRECATED 610
---@field MinigameBufferExtension gamedataStatType_1300DEPRECATED 611
---@field MinigameMaterialsEarned gamedataStatType_1300DEPRECATED 612
---@field MinigameMemoryRegenPerk gamedataStatType_1300DEPRECATED 613
---@field MinigameMoneyMultiplier gamedataStatType_1300DEPRECATED 614
---@field MinigameNextInstanceBufferExtensionPerk gamedataStatType_1300DEPRECATED 615
---@field MinigameShardChanceMultiplier gamedataStatType_1300DEPRECATED 616
---@field MinigameTimeLimitExtension gamedataStatType_1300DEPRECATED 617
---@field MinigameTrapsPossibilityChance gamedataStatType_1300DEPRECATED 618
---@field NPCAnimationTime gamedataStatType_1300DEPRECATED 619
---@field NPCCorpoEquipItemDuration gamedataStatType_1300DEPRECATED 620
---@field NPCCorpoUnequipItemDuration gamedataStatType_1300DEPRECATED 621
---@field NPCDamage gamedataStatType_1300DEPRECATED 622
---@field NPCEquipItemDuration gamedataStatType_1300DEPRECATED 623
---@field NPCGangEquipItemDuration gamedataStatType_1300DEPRECATED 624
---@field NPCGangUnequipItemDuration gamedataStatType_1300DEPRECATED 625
---@field NPCLoopDuration gamedataStatType_1300DEPRECATED 626
---@field NPCRecoverDuration gamedataStatType_1300DEPRECATED 627
---@field NPCStartupDuration gamedataStatType_1300DEPRECATED 628
---@field NPCUnequipItemDuration gamedataStatType_1300DEPRECATED 629
---@field NPCUploadTime gamedataStatType_1300DEPRECATED 630
---@field NoJam gamedataStatType_1300DEPRECATED 631
---@field NumShotsInBurst gamedataStatType_1300DEPRECATED 632
---@field NumShotsInBurstMaxCharge gamedataStatType_1300DEPRECATED 633
---@field NumShotsInBurstSecondary gamedataStatType_1300DEPRECATED 634
---@field NumShotsToFire gamedataStatType_1300DEPRECATED 635
---@field NumberIgnoredTraps gamedataStatType_1300DEPRECATED 636
---@field Overheat gamedataStatType_1300DEPRECATED 637
---@field Oxygen gamedataStatType_1300DEPRECATED 638
---@field PartArmor gamedataStatType_1300DEPRECATED 639
---@field PenetrationHealth gamedataStatType_1300DEPRECATED 640
---@field PersonalityAggressive gamedataStatType_1300DEPRECATED 641
---@field PersonalityCuriosity gamedataStatType_1300DEPRECATED 642
---@field PersonalityDisgust gamedataStatType_1300DEPRECATED 643
---@field PersonalityFear gamedataStatType_1300DEPRECATED 644
---@field PersonalityFunny gamedataStatType_1300DEPRECATED 645
---@field PersonalityJoy gamedataStatType_1300DEPRECATED 646
---@field PersonalitySad gamedataStatType_1300DEPRECATED 647
---@field PersonalityShock gamedataStatType_1300DEPRECATED 648
---@field PersonalitySurprise gamedataStatType_1300DEPRECATED 649
---@field PhoneCallDuration gamedataStatType_1300DEPRECATED 650
---@field PhysicalDamage gamedataStatType_1300DEPRECATED 651
---@field PhysicalDamageMax gamedataStatType_1300DEPRECATED 652
---@field PhysicalDamageMin gamedataStatType_1300DEPRECATED 653
---@field PhysicalDamagePercent gamedataStatType_1300DEPRECATED 654
---@field PhysicalImpulse gamedataStatType_1300DEPRECATED 655
---@field PhysicalResistance gamedataStatType_1300DEPRECATED 656
---@field PoisonImmunity gamedataStatType_1300DEPRECATED 657
---@field PoisonRegenHealth gamedataStatType_1300DEPRECATED 658
---@field PoisonedApplicationRate gamedataStatType_1300DEPRECATED 659
---@field PowerLevel gamedataStatType_1300DEPRECATED 660
---@field PreFireTime gamedataStatType_1300DEPRECATED 661
---@field PrefersCovers gamedataStatType_1300DEPRECATED 662
---@field PrefersShootingSpots gamedataStatType_1300DEPRECATED 663
---@field Price gamedataStatType_1300DEPRECATED 664
---@field ProjectilesPerShot gamedataStatType_1300DEPRECATED 665
---@field ProjectilesPerShotBase gamedataStatType_1300DEPRECATED 666
---@field ProjectilesPerShotBonus gamedataStatType_1300DEPRECATED 667
---@field Quality gamedataStatType_1300DEPRECATED 668
---@field Quantity gamedataStatType_1300DEPRECATED 669
---@field QuickHackDuration gamedataStatType_1300DEPRECATED 670
---@field QuickHackDurationExtension gamedataStatType_1300DEPRECATED 671
---@field QuickHackImmunity gamedataStatType_1300DEPRECATED 672
---@field QuickHackResistancesMod gamedataStatType_1300DEPRECATED 673
---@field QuickHackSpreadDistance gamedataStatType_1300DEPRECATED 674
---@field QuickHackSpreadNumber gamedataStatType_1300DEPRECATED 675
---@field QuickHackSuddenDeathChance gamedataStatType_1300DEPRECATED 676
---@field QuickHackUpload gamedataStatType_1300DEPRECATED 677
---@field QuickhackExtraDamageMultiplier gamedataStatType_1300DEPRECATED 678
---@field QuickhackShield gamedataStatType_1300DEPRECATED 679
---@field QuickhacksCooldownReduction gamedataStatType_1300DEPRECATED 680
---@field RandomCurveInput gamedataStatType_1300DEPRECATED 681
---@field Range gamedataStatType_1300DEPRECATED 682
---@field Recoil gamedataStatType_1300DEPRECATED 683
---@field RecoilAllowSway gamedataStatType_1300DEPRECATED 684
---@field RecoilAlternateDir gamedataStatType_1300DEPRECATED 685
---@field RecoilAlternateDirADS gamedataStatType_1300DEPRECATED 686
---@field RecoilAngle gamedataStatType_1300DEPRECATED 687
---@field RecoilAngleADS gamedataStatType_1300DEPRECATED 688
---@field RecoilAnimation gamedataStatType_1300DEPRECATED 689
---@field RecoilChargeMult gamedataStatType_1300DEPRECATED 690
---@field RecoilChargeMultADS gamedataStatType_1300DEPRECATED 691
---@field RecoilCycleSize gamedataStatType_1300DEPRECATED 692
---@field RecoilCycleSizeADS gamedataStatType_1300DEPRECATED 693
---@field RecoilCycleTime gamedataStatType_1300DEPRECATED 694
---@field RecoilCycleTimeADS gamedataStatType_1300DEPRECATED 695
---@field RecoilDelay gamedataStatType_1300DEPRECATED 696
---@field RecoilDir gamedataStatType_1300DEPRECATED 697
---@field RecoilDirADS gamedataStatType_1300DEPRECATED 698
---@field RecoilDirPlanCycleRandDir gamedataStatType_1300DEPRECATED 699
---@field RecoilDirPlanCycleRandDirADS gamedataStatType_1300DEPRECATED 700
---@field RecoilDirPlanCycleRandRangeDir gamedataStatType_1300DEPRECATED 701
---@field RecoilDirPlanCycleRandRangeDirADS gamedataStatType_1300DEPRECATED 702
---@field RecoilDirPlanSequence gamedataStatType_1300DEPRECATED 703
---@field RecoilDirPlanSequenceADS gamedataStatType_1300DEPRECATED 704
---@field RecoilDriftRandomRangeMax gamedataStatType_1300DEPRECATED 705
---@field RecoilDriftRandomRangeMin gamedataStatType_1300DEPRECATED 706
---@field RecoilEnableCycleX gamedataStatType_1300DEPRECATED 707
---@field RecoilEnableCycleXADS gamedataStatType_1300DEPRECATED 708
---@field RecoilEnableCycleY gamedataStatType_1300DEPRECATED 709
---@field RecoilEnableCycleYADS gamedataStatType_1300DEPRECATED 710
---@field RecoilEnableLinearX gamedataStatType_1300DEPRECATED 711
---@field RecoilEnableLinearXADS gamedataStatType_1300DEPRECATED 712
---@field RecoilEnableLinearY gamedataStatType_1300DEPRECATED 713
---@field RecoilEnableLinearYADS gamedataStatType_1300DEPRECATED 714
---@field RecoilEnableScaleX gamedataStatType_1300DEPRECATED 715
---@field RecoilEnableScaleXADS gamedataStatType_1300DEPRECATED 716
---@field RecoilEnableScaleY gamedataStatType_1300DEPRECATED 717
---@field RecoilEnableScaleYADS gamedataStatType_1300DEPRECATED 718
---@field RecoilFullChargeMult gamedataStatType_1300DEPRECATED 719
---@field RecoilFullChargeMultADS gamedataStatType_1300DEPRECATED 720
---@field RecoilHoldDuration gamedataStatType_1300DEPRECATED 721
---@field RecoilHoldDurationADS gamedataStatType_1300DEPRECATED 722
---@field RecoilKickMax gamedataStatType_1300DEPRECATED 723
---@field RecoilKickMaxADS gamedataStatType_1300DEPRECATED 724
---@field RecoilKickMin gamedataStatType_1300DEPRECATED 725
---@field RecoilKickMinADS gamedataStatType_1300DEPRECATED 726
---@field RecoilMagForFullDrift gamedataStatType_1300DEPRECATED 727
---@field RecoilMaxLength gamedataStatType_1300DEPRECATED 728
---@field RecoilMaxLengthADS gamedataStatType_1300DEPRECATED 729
---@field RecoilRecoveryMinSpeed gamedataStatType_1300DEPRECATED 730
---@field RecoilRecoveryMinSpeedADS gamedataStatType_1300DEPRECATED 731
---@field RecoilRecoverySpeed gamedataStatType_1300DEPRECATED 732
---@field RecoilRecoverySpeedADS gamedataStatType_1300DEPRECATED 733
---@field RecoilRecoveryTime gamedataStatType_1300DEPRECATED 734
---@field RecoilRecoveryTimeADS gamedataStatType_1300DEPRECATED 735
---@field RecoilScaleMax gamedataStatType_1300DEPRECATED 736
---@field RecoilScaleMaxADS gamedataStatType_1300DEPRECATED 737
---@field RecoilScaleTime gamedataStatType_1300DEPRECATED 738
---@field RecoilScaleTimeADS gamedataStatType_1300DEPRECATED 739
---@field RecoilSpeed gamedataStatType_1300DEPRECATED 740
---@field RecoilSpeedADS gamedataStatType_1300DEPRECATED 741
---@field RecoilTime gamedataStatType_1300DEPRECATED 742
---@field RecoilTimeADS gamedataStatType_1300DEPRECATED 743
---@field RecoilUseDifferentStatsInADS gamedataStatType_1300DEPRECATED 744
---@field Reflexes gamedataStatType_1300DEPRECATED 745
---@field RefreshesPingOnQuickhack gamedataStatType_1300DEPRECATED 746
---@field RegenerateHPMinigamePerk gamedataStatType_1300DEPRECATED 747
---@field ReloadAmount gamedataStatType_1300DEPRECATED 748
---@field ReloadEndTime gamedataStatType_1300DEPRECATED 749
---@field ReloadTime gamedataStatType_1300DEPRECATED 750
---@field ReloadTimeBase gamedataStatType_1300DEPRECATED 751
---@field ReloadTimeBonus gamedataStatType_1300DEPRECATED 752
---@field RemoveAllStacksWhenDurationEnds gamedataStatType_1300DEPRECATED 753
---@field RemoveColdBloodStacksOneByOne gamedataStatType_1300DEPRECATED 754
---@field RemoveSprintOnQuickhack gamedataStatType_1300DEPRECATED 755
---@field ReprimandEscalation gamedataStatType_1300DEPRECATED 756
---@field RestoreMemoryOnDefeat gamedataStatType_1300DEPRECATED 757
---@field RevealNetrunnerWhenHacked gamedataStatType_1300DEPRECATED 758
---@field RicochetChance gamedataStatType_1300DEPRECATED 759
---@field RicochetCount gamedataStatType_1300DEPRECATED 760
---@field RicochetMaxAngle gamedataStatType_1300DEPRECATED 761
---@field RicochetMinAngle gamedataStatType_1300DEPRECATED 762
---@field RicochetTargetSearchAngle gamedataStatType_1300DEPRECATED 763
---@field SandevistanDashShoot gamedataStatType_1300DEPRECATED 764
---@field ScanDepth gamedataStatType_1300DEPRECATED 765
---@field ScanTimeReduction gamedataStatType_1300DEPRECATED 766
---@field ScopeFOV gamedataStatType_1300DEPRECATED 767
---@field ScopeOffset gamedataStatType_1300DEPRECATED 768
---@field ScrapItemChance gamedataStatType_1300DEPRECATED 769
---@field SharedCacheTraps gamedataStatType_1300DEPRECATED 770
---@field ShootingOffsetAI gamedataStatType_1300DEPRECATED 771
---@field ShortCircuitOnCriticalHit gamedataStatType_1300DEPRECATED 772
---@field ShorterChains gamedataStatType_1300DEPRECATED 773
---@field ShotDelay gamedataStatType_1300DEPRECATED 774
---@field SlideWhenLeaningOutOfCover gamedataStatType_1300DEPRECATED 775
---@field SmartGunAddSpiralTrajectory gamedataStatType_1300DEPRECATED 776
---@field SmartGunAdsLockingAnglePitch gamedataStatType_1300DEPRECATED 777
---@field SmartGunAdsLockingAngleYaw gamedataStatType_1300DEPRECATED 778
---@field SmartGunAdsMaxLockedTargets gamedataStatType_1300DEPRECATED 779
---@field SmartGunAdsTagLockAnglePitch gamedataStatType_1300DEPRECATED 780
---@field SmartGunAdsTagLockAngleYaw gamedataStatType_1300DEPRECATED 781
---@field SmartGunAdsTargetableAnglePitch gamedataStatType_1300DEPRECATED 782
---@field SmartGunAdsTargetableAngleYaw gamedataStatType_1300DEPRECATED 783
---@field SmartGunAdsTimeToLock gamedataStatType_1300DEPRECATED 784
---@field SmartGunAdsTimeToUnlock gamedataStatType_1300DEPRECATED 785
---@field SmartGunEvenDistributionPeriod gamedataStatType_1300DEPRECATED 786
---@field SmartGunHipLockingAnglePitch gamedataStatType_1300DEPRECATED 787
---@field SmartGunHipLockingAngleYaw gamedataStatType_1300DEPRECATED 788
---@field SmartGunHipMaxLockedTargets gamedataStatType_1300DEPRECATED 789
---@field SmartGunHipTagLockAnglePitch gamedataStatType_1300DEPRECATED 790
---@field SmartGunHipTagLockAngleYaw gamedataStatType_1300DEPRECATED 791
---@field SmartGunHipTargetableAnglePitch gamedataStatType_1300DEPRECATED 792
---@field SmartGunHipTargetableAngleYaw gamedataStatType_1300DEPRECATED 793
---@field SmartGunHipTimeToLock gamedataStatType_1300DEPRECATED 794
---@field SmartGunHipTimeToUnlock gamedataStatType_1300DEPRECATED 795
---@field SmartGunHitProbability gamedataStatType_1300DEPRECATED 796
---@field SmartGunHitProbabilityMultiplier gamedataStatType_1300DEPRECATED 797
---@field SmartGunMissDelay gamedataStatType_1300DEPRECATED 798
---@field SmartGunMissRadius gamedataStatType_1300DEPRECATED 799
---@field SmartGunNPCApplySpreadAtHitplane gamedataStatType_1300DEPRECATED 800
---@field SmartGunNPCLockOnTime gamedataStatType_1300DEPRECATED 801
---@field SmartGunNPCLockTimeout gamedataStatType_1300DEPRECATED 802
---@field SmartGunNPCLockingAnglePitch gamedataStatType_1300DEPRECATED 803
---@field SmartGunNPCLockingAngleYaw gamedataStatType_1300DEPRECATED 804
---@field SmartGunNPCProjectileStartingOrientationAngleOffset gamedataStatType_1300DEPRECATED 805
---@field SmartGunNPCProjectileVelocity gamedataStatType_1300DEPRECATED 806
---@field SmartGunNPCShootProjectilesOnlyStraight gamedataStatType_1300DEPRECATED 807
---@field SmartGunNPCSpreadMultiplier gamedataStatType_1300DEPRECATED 808
---@field SmartGunNPCTrajectoryCurvatureMultiplier gamedataStatType_1300DEPRECATED 809
---@field SmartGunPlayerProjectileVelocity gamedataStatType_1300DEPRECATED 810
---@field SmartGunProjectileVelocityVariance gamedataStatType_1300DEPRECATED 811
---@field SmartGunSpiralCycleTimeMax gamedataStatType_1300DEPRECATED 812
---@field SmartGunSpiralCycleTimeMin gamedataStatType_1300DEPRECATED 813
---@field SmartGunSpiralRadius gamedataStatType_1300DEPRECATED 814
---@field SmartGunSpiralRampDistanceEnd gamedataStatType_1300DEPRECATED 815
---@field SmartGunSpiralRampDistanceStart gamedataStatType_1300DEPRECATED 816
---@field SmartGunSpiralRandomizeDirection gamedataStatType_1300DEPRECATED 817
---@field SmartGunSpreadMultiplier gamedataStatType_1300DEPRECATED 818
---@field SmartGunStartingAccuracy gamedataStatType_1300DEPRECATED 819
---@field SmartGunTargetAcquisitionRange gamedataStatType_1300DEPRECATED 820
---@field SmartGunTimeToMaxAccuracy gamedataStatType_1300DEPRECATED 821
---@field SmartGunTimeToRemoveOccludedTarget gamedataStatType_1300DEPRECATED 822
---@field SmartGunTrackAllBodyparts gamedataStatType_1300DEPRECATED 823
---@field SmartGunTrackHeadComponents gamedataStatType_1300DEPRECATED 824
---@field SmartGunTrackLegComponents gamedataStatType_1300DEPRECATED 825
---@field SmartGunTrackMechanicalComponents gamedataStatType_1300DEPRECATED 826
---@field SmartGunTrackMultipleEntitiesInADS gamedataStatType_1300DEPRECATED 827
---@field SmartGunUseEvenDistributionTargeting gamedataStatType_1300DEPRECATED 828
---@field SmartGunUseTagLockTargeting gamedataStatType_1300DEPRECATED 829
---@field SmartGunUseTimeBasedAccuracy gamedataStatType_1300DEPRECATED 830
---@field SmartTargetingDisruptionProbability gamedataStatType_1300DEPRECATED 831
---@field SpecialDamage gamedataStatType_1300DEPRECATED 832
---@field SpeedBoost gamedataStatType_1300DEPRECATED 833
---@field SpeedBoostMaxSpeed gamedataStatType_1300DEPRECATED 834
---@field Spread gamedataStatType_1300DEPRECATED 835
---@field SpreadAdsChangePerShot gamedataStatType_1300DEPRECATED 836
---@field SpreadAdsChargeMult gamedataStatType_1300DEPRECATED 837
---@field SpreadAdsDefaultX gamedataStatType_1300DEPRECATED 838
---@field SpreadAdsDefaultY gamedataStatType_1300DEPRECATED 839
---@field SpreadAdsFastSpeedMax gamedataStatType_1300DEPRECATED 840
---@field SpreadAdsFastSpeedMaxAdd gamedataStatType_1300DEPRECATED 841
---@field SpreadAdsFastSpeedMin gamedataStatType_1300DEPRECATED 842
---@field SpreadAdsFastSpeedMinAdd gamedataStatType_1300DEPRECATED 843
---@field SpreadAdsFullChargeMult gamedataStatType_1300DEPRECATED 844
---@field SpreadAdsMaxX gamedataStatType_1300DEPRECATED 845
---@field SpreadAdsMaxY gamedataStatType_1300DEPRECATED 846
---@field SpreadAdsMinX gamedataStatType_1300DEPRECATED 847
---@field SpreadAdsMinY gamedataStatType_1300DEPRECATED 848
---@field SpreadAnimation gamedataStatType_1300DEPRECATED 849
---@field SpreadChangePerShot gamedataStatType_1300DEPRECATED 850
---@field SpreadChargeMult gamedataStatType_1300DEPRECATED 851
---@field SpreadCrouchDefaultMult gamedataStatType_1300DEPRECATED 852
---@field SpreadCrouchMaxMult gamedataStatType_1300DEPRECATED 853
---@field SpreadDefaultX gamedataStatType_1300DEPRECATED 854
---@field SpreadDefaultY gamedataStatType_1300DEPRECATED 855
---@field SpreadEvenDistributionJitterSize gamedataStatType_1300DEPRECATED 856
---@field SpreadEvenDistributionRowCount gamedataStatType_1300DEPRECATED 857
---@field SpreadFastSpeedMax gamedataStatType_1300DEPRECATED 858
---@field SpreadFastSpeedMaxAdd gamedataStatType_1300DEPRECATED 859
---@field SpreadFastSpeedMin gamedataStatType_1300DEPRECATED 860
---@field SpreadFastSpeedMinAdd gamedataStatType_1300DEPRECATED 861
---@field SpreadFullChargeMult gamedataStatType_1300DEPRECATED 862
---@field SpreadMaxAI gamedataStatType_1300DEPRECATED 863
---@field SpreadMaxX gamedataStatType_1300DEPRECATED 864
---@field SpreadMaxY gamedataStatType_1300DEPRECATED 865
---@field SpreadMinX gamedataStatType_1300DEPRECATED 866
---@field SpreadMinY gamedataStatType_1300DEPRECATED 867
---@field SpreadRandomizeOriginPoint gamedataStatType_1300DEPRECATED 868
---@field SpreadResetSpeed gamedataStatType_1300DEPRECATED 869
---@field SpreadResetTimeThreshold gamedataStatType_1300DEPRECATED 870
---@field SpreadUseCircularSpread gamedataStatType_1300DEPRECATED 871
---@field SpreadUseEvenDistribution gamedataStatType_1300DEPRECATED 872
---@field SpreadUseInAds gamedataStatType_1300DEPRECATED 873
---@field SpreadZeroOnFirstShot gamedataStatType_1300DEPRECATED 874
---@field StaggerDamageThreshold gamedataStatType_1300DEPRECATED 875
---@field StaggerDamageThresholdImpulse gamedataStatType_1300DEPRECATED 876
---@field StaggerDamageThresholdInCover gamedataStatType_1300DEPRECATED 877
---@field Stamina gamedataStatType_1300DEPRECATED 878
---@field StaminaCostReduction gamedataStatType_1300DEPRECATED 879
---@field StaminaCostToBlock gamedataStatType_1300DEPRECATED 880
---@field StaminaDamage gamedataStatType_1300DEPRECATED 881
---@field StaminaRegenDelayOnChange gamedataStatType_1300DEPRECATED 882
---@field StaminaRegenEnabled gamedataStatType_1300DEPRECATED 883
---@field StaminaRegenEndThrehold gamedataStatType_1300DEPRECATED 884
---@field StaminaRegenRate gamedataStatType_1300DEPRECATED 885
---@field StaminaRegenRateAdd gamedataStatType_1300DEPRECATED 886
---@field StaminaRegenRateBase gamedataStatType_1300DEPRECATED 887
---@field StaminaRegenRateMult gamedataStatType_1300DEPRECATED 888
---@field StaminaRegenStartDelay gamedataStatType_1300DEPRECATED 889
---@field StaminaRegenStartThreshold gamedataStatType_1300DEPRECATED 890
---@field StaminaSprintDecayRate gamedataStatType_1300DEPRECATED 891
---@field StatModifierGroupLimit gamedataStatType_1300DEPRECATED 892
---@field Stealth gamedataStatType_1300DEPRECATED 893
---@field StealthHacksCostReduction gamedataStatType_1300DEPRECATED 894
---@field StealthHitDamageMultiplier gamedataStatType_1300DEPRECATED 895
---@field StealthMastery gamedataStatType_1300DEPRECATED 896
---@field StealthTrait01Stat gamedataStatType_1300DEPRECATED 897
---@field StealthWeakspotDamageMultiplier gamedataStatType_1300DEPRECATED 898
---@field StreetCred gamedataStatType_1300DEPRECATED 899
---@field Strength gamedataStatType_1300DEPRECATED 900
---@field StunImmunity gamedataStatType_1300DEPRECATED 901
---@field Sway gamedataStatType_1300DEPRECATED 902
---@field SwayCenterMaximumAngleOffset gamedataStatType_1300DEPRECATED 903
---@field SwayCurvatureMaximumFactor gamedataStatType_1300DEPRECATED 904
---@field SwayCurvatureMinimumFactor gamedataStatType_1300DEPRECATED 905
---@field SwayInitialOffsetRandomFactor gamedataStatType_1300DEPRECATED 906
---@field SwayResetOnAimStart gamedataStatType_1300DEPRECATED 907
---@field SwaySideBottomAngleLimit gamedataStatType_1300DEPRECATED 908
---@field SwaySideMaximumAngleDistance gamedataStatType_1300DEPRECATED 909
---@field SwaySideMinimumAngleDistance gamedataStatType_1300DEPRECATED 910
---@field SwaySideStepChangeMaximumFactor gamedataStatType_1300DEPRECATED 911
---@field SwaySideStepChangeMinimumFactor gamedataStatType_1300DEPRECATED 912
---@field SwaySideTopAngleLimit gamedataStatType_1300DEPRECATED 913
---@field SwayStartBlendTime gamedataStatType_1300DEPRECATED 914
---@field SwayStartDelay gamedataStatType_1300DEPRECATED 915
---@field SwayTraversalTime gamedataStatType_1300DEPRECATED 916
---@field SystemCollapseImmunity gamedataStatType_1300DEPRECATED 917
---@field TBHsBaseCoefficient gamedataStatType_1300DEPRECATED 918
---@field TBHsBaseSourceMultiplierCoefficient gamedataStatType_1300DEPRECATED 919
---@field TBHsCoverTraceLoSIncreaseSpeed gamedataStatType_1300DEPRECATED 920
---@field TBHsMinimumLineOfSightTime gamedataStatType_1300DEPRECATED 921
---@field TBHsSensesTraceLoSIncreaseSpeed gamedataStatType_1300DEPRECATED 922
---@field TBHsVisibilityCooldown gamedataStatType_1300DEPRECATED 923
---@field TechBaseChargeThreshold gamedataStatType_1300DEPRECATED 924
---@field TechMaxChargeThreshold gamedataStatType_1300DEPRECATED 925
---@field TechOverChargeThreshold gamedataStatType_1300DEPRECATED 926
---@field TechPierceChargeLevel gamedataStatType_1300DEPRECATED 927
---@field TechPierceEnabled gamedataStatType_1300DEPRECATED 928
---@field TechnicalAbility gamedataStatType_1300DEPRECATED 929
---@field ThermalDamage gamedataStatType_1300DEPRECATED 930
---@field ThermalDamageMax gamedataStatType_1300DEPRECATED 931
---@field ThermalDamageMin gamedataStatType_1300DEPRECATED 932
---@field ThermalDamagePercent gamedataStatType_1300DEPRECATED 933
---@field ThermalResistance gamedataStatType_1300DEPRECATED 934
---@field ThreeOrMoreProgramsCooldownRedPerk gamedataStatType_1300DEPRECATED 935
---@field ThreeOrMoreProgramsMemoryRegPerk gamedataStatType_1300DEPRECATED 936
---@field TimeDilationGenericDuration gamedataStatType_1300DEPRECATED 937
---@field TimeDilationGenericTimeScale gamedataStatType_1300DEPRECATED 938
---@field TimeDilationKerenzikovDuration gamedataStatType_1300DEPRECATED 939
---@field TimeDilationKerenzikovPlayerTimeScale gamedataStatType_1300DEPRECATED 940
---@field TimeDilationKerenzikovTimeScale gamedataStatType_1300DEPRECATED 941
---@field TimeDilationOnDodgesCooldownDuration gamedataStatType_1300DEPRECATED 942
---@field TimeDilationOnDodgesDuration gamedataStatType_1300DEPRECATED 943
---@field TimeDilationOnDodgesTimeScale gamedataStatType_1300DEPRECATED 944
---@field TimeDilationOnHealthDropCooldownDuration gamedataStatType_1300DEPRECATED 945
---@field TimeDilationOnHealthDropDuration gamedataStatType_1300DEPRECATED 946
---@field TimeDilationOnHealthDropTimeScale gamedataStatType_1300DEPRECATED 947
---@field TimeDilationSandevistanCooldownBase gamedataStatType_1300DEPRECATED 948
---@field TimeDilationSandevistanCooldownReduction gamedataStatType_1300DEPRECATED 949
---@field TimeDilationSandevistanDuration gamedataStatType_1300DEPRECATED 950
---@field TimeDilationSandevistanTimeScale gamedataStatType_1300DEPRECATED 951
---@field TimeDilationWhenEnteringCombatCooldownDuration gamedataStatType_1300DEPRECATED 952
---@field TimeDilationWhenEnteringCombatDuration gamedataStatType_1300DEPRECATED 953
---@field TimeDilationWhenEnteringCombatTimeScale gamedataStatType_1300DEPRECATED 954
---@field TranquilizerImmunity gamedataStatType_1300DEPRECATED 955
---@field TriggerDismembermentChance gamedataStatType_1300DEPRECATED 956
---@field TriggerWoundedChance gamedataStatType_1300DEPRECATED 957
---@field TurretFriendlyExtension gamedataStatType_1300DEPRECATED 958
---@field TurretShutdownExtension gamedataStatType_1300DEPRECATED 959
---@field UltimateHackSpread gamedataStatType_1300DEPRECATED 960
---@field UltimateHacksCostReduction gamedataStatType_1300DEPRECATED 961
---@field UltimateMemoryCostReduction gamedataStatType_1300DEPRECATED 962
---@field UnconsciousImmunity gamedataStatType_1300DEPRECATED 963
---@field UnequipAnimationDuration_Corpo gamedataStatType_1300DEPRECATED 964
---@field UnequipAnimationDuration_Gang gamedataStatType_1300DEPRECATED 965
---@field UnequipDuration gamedataStatType_1300DEPRECATED 966
---@field UnequipDuration_Corpo gamedataStatType_1300DEPRECATED 967
---@field UnequipDuration_Gang gamedataStatType_1300DEPRECATED 968
---@field UnequipItemTime_Corpo gamedataStatType_1300DEPRECATED 969
---@field UnequipItemTime_Gang gamedataStatType_1300DEPRECATED 970
---@field UnlockProgress gamedataStatType_1300DEPRECATED 971
---@field UpgradingCostReduction gamedataStatType_1300DEPRECATED 972
---@field UpgradingMaterialDropChance gamedataStatType_1300DEPRECATED 973
---@field UpgradingMaterialRandomGrantChance gamedataStatType_1300DEPRECATED 974
---@field UpgradingMaterialRetrieveChance gamedataStatType_1300DEPRECATED 975
---@field UploadQuickHackMod gamedataStatType_1300DEPRECATED 976
---@field Visibility gamedataStatType_1300DEPRECATED 977
---@field VisualStimRangeMultiplier gamedataStatType_1300DEPRECATED 978
---@field VulnerabilityExtension gamedataStatType_1300DEPRECATED 979
---@field WallRunHorSpeedToEnterMin gamedataStatType_1300DEPRECATED 980
---@field WallRunStrafeAngleMax gamedataStatType_1300DEPRECATED 981
---@field WallRunTimeMax gamedataStatType_1300DEPRECATED 982
---@field WallRunVertSpeedToEnterMax gamedataStatType_1300DEPRECATED 983
---@field WasItemUpgraded gamedataStatType_1300DEPRECATED 984
---@field WasQuickHacked gamedataStatType_1300DEPRECATED 985
---@field WeakspotDamageMultiplier gamedataStatType_1300DEPRECATED 986
---@field WeaponHasAutoloader gamedataStatType_1300DEPRECATED 987
---@field WeaponNoise gamedataStatType_1300DEPRECATED 988
---@field WeaponPosAdsX gamedataStatType_1300DEPRECATED 989
---@field WeaponPosAdsY gamedataStatType_1300DEPRECATED 990
---@field WeaponPosAdsZ gamedataStatType_1300DEPRECATED 991
---@field WeaponPosX gamedataStatType_1300DEPRECATED 992
---@field WeaponPosY gamedataStatType_1300DEPRECATED 993
---@field WeaponPosZ gamedataStatType_1300DEPRECATED 994
---@field WeaponRotAdsX gamedataStatType_1300DEPRECATED 995
---@field WeaponRotAdsY gamedataStatType_1300DEPRECATED 996
---@field WeaponRotAdsZ gamedataStatType_1300DEPRECATED 997
---@field WeaponRotX gamedataStatType_1300DEPRECATED 998
---@field WeaponRotY gamedataStatType_1300DEPRECATED 999
---@field WeaponRotZ gamedataStatType_1300DEPRECATED 1000
---@field Weight gamedataStatType_1300DEPRECATED 1001
---@field WoundHeadDamageThreshold gamedataStatType_1300DEPRECATED 1002
---@field WoundLArmDamageThreshold gamedataStatType_1300DEPRECATED 1003
---@field WoundLLegDamageThreshold gamedataStatType_1300DEPRECATED 1004
---@field WoundRArmDamageThreshold gamedataStatType_1300DEPRECATED 1005
---@field WoundRLegDamageThreshold gamedataStatType_1300DEPRECATED 1006
---@field ZoomLevel gamedataStatType_1300DEPRECATED 1007
---@field CPO_Armor gamedataStatType_1300DEPRECATED 1008
---@field CPO_NPC_Importance gamedataStatType_1300DEPRECATED 1009
---@field Count gamedataStatType_1300DEPRECATED 1010
---@field Invalid gamedataStatType_1300DEPRECATED 1011
gamedataStatType_1300DEPRECATED = {}

---@class gamedataStatusEffectAIBehaviorFlag
---@field AcceptsAdditives gamedataStatusEffectAIBehaviorFlag 0
---@field InterruptsForcedBehavior gamedataStatusEffectAIBehaviorFlag 1
---@field InterruptsSamePriorityTask gamedataStatusEffectAIBehaviorFlag 2
---@field None gamedataStatusEffectAIBehaviorFlag 3
---@field OverridesSelf gamedataStatusEffectAIBehaviorFlag 4
---@field Count gamedataStatusEffectAIBehaviorFlag 5
---@field Invalid gamedataStatusEffectAIBehaviorFlag 6
gamedataStatusEffectAIBehaviorFlag = {}

---@class gamedataStatusEffectAIBehaviorType
---@field Basic gamedataStatusEffectAIBehaviorType 0
---@field None gamedataStatusEffectAIBehaviorType 1
---@field Stoppable gamedataStatusEffectAIBehaviorType 2
---@field Unstoppable gamedataStatusEffectAIBehaviorType 3
---@field Count gamedataStatusEffectAIBehaviorType 4
---@field Invalid gamedataStatusEffectAIBehaviorType 5
gamedataStatusEffectAIBehaviorType = {}

---@class gamedataStatusEffectType
---@field AndroidTurnOff gamedataStatusEffectType 0
---@field AndroidTurnOn gamedataStatusEffectType 1
---@field Berserk gamedataStatusEffectType 2
---@field Berserker gamedataStatusEffectType 3
---@field Bleeding gamedataStatusEffectType 4
---@field Blind gamedataStatusEffectType 5
---@field BlockCoverVisibilityReduction gamedataStatusEffectType 6
---@field BrainMelt gamedataStatusEffectType 7
---@field Burning gamedataStatusEffectType 8
---@field Cloaked gamedataStatusEffectType 9
---@field CommsCall gamedataStatusEffectType 10
---@field CommsNoise gamedataStatusEffectType 11
---@field Crippled gamedataStatusEffectType 12
---@field DamageBurst gamedataStatusEffectType 13
---@field Deafened gamedataStatusEffectType 14
---@field Defeated gamedataStatusEffectType 15
---@field DefeatedWithRecover gamedataStatusEffectType 16
---@field EMP gamedataStatusEffectType 17
---@field Electrocuted gamedataStatusEffectType 18
---@field Exhausted gamedataStatusEffectType 19
---@field ForceShoot gamedataStatusEffectType 20
---@field Grapple gamedataStatusEffectType 21
---@field Housing gamedataStatusEffectType 22
---@field Jam gamedataStatusEffectType 23
---@field JamCommuniations gamedataStatusEffectType 24
---@field Kill gamedataStatusEffectType 25
---@field Knockdown gamedataStatusEffectType 26
---@field Madness gamedataStatusEffectType 27
---@field MeleeInvulnerability gamedataStatusEffectType 28
---@field Misc gamedataStatusEffectType 29
---@field MuteAudioStims gamedataStatusEffectType 30
---@field NetwatcherHackStage1 gamedataStatusEffectType 31
---@field NetwatcherHackStage2 gamedataStatusEffectType 32
---@field NetwatcherHackStage3 gamedataStatusEffectType 33
---@field Overheat gamedataStatusEffectType 34
---@field Overload gamedataStatusEffectType 35
---@field Pain gamedataStatusEffectType 36
---@field PassiveBuff gamedataStatusEffectType 37
---@field PassiveDebuff gamedataStatusEffectType 38
---@field PlayerCooldown gamedataStatusEffectType 39
---@field Poisoned gamedataStatusEffectType 40
---@field QuickHackFreezeLocomotion gamedataStatusEffectType 41
---@field QuickHackStaggerCyberware gamedataStatusEffectType 42
---@field QuickHackStaggerLocomotion gamedataStatusEffectType 43
---@field QuickHackStaggerWeapon gamedataStatusEffectType 44
---@field Quickhack gamedataStatusEffectType 45
---@field Regeneration gamedataStatusEffectType 46
---@field Sandevistan gamedataStatusEffectType 47
---@field SetFriendly gamedataStatusEffectType 48
---@field Sleep gamedataStatusEffectType 49
---@field Stagger gamedataStatusEffectType 50
---@field StrongArmsActive gamedataStatusEffectType 51
---@field Stunned gamedataStatusEffectType 52
---@field SuicideHack gamedataStatusEffectType 53
---@field SystemCollapse gamedataStatusEffectType 54
---@field Unconscious gamedataStatusEffectType 55
---@field UncontrolledMovement gamedataStatusEffectType 56
---@field VehicleKnockdown gamedataStatusEffectType 57
---@field WeakspotOverload gamedataStatusEffectType 58
---@field Wounded gamedataStatusEffectType 59
---@field CPOShocked gamedataStatusEffectType 60
---@field Count gamedataStatusEffectType 61
---@field Invalid gamedataStatusEffectType 62
gamedataStatusEffectType = {}

---@class gamedataStatusEffectVariation
---@field Bike gamedataStatusEffectVariation 0
---@field Default gamedataStatusEffectVariation 1
---@field Vehicle gamedataStatusEffectVariation 2
---@field Count gamedataStatusEffectVariation 3
---@field Invalid gamedataStatusEffectVariation 4
gamedataStatusEffectVariation = {}

---@class gamedataStimPriority
---@field High gamedataStimPriority 0
---@field Low gamedataStimPriority 1
---@field Count gamedataStimPriority 2
---@field Invalid gamedataStimPriority 3
gamedataStimPriority = {}

---@class gamedataStimPropagation
---@field Audio gamedataStimPropagation 0
---@field Visual gamedataStimPropagation 1
---@field Count gamedataStimPropagation 2
---@field Invalid gamedataStimPropagation 3
gamedataStimPropagation = {}

---@class gamedataStimTargets
---@field All gamedataStimTargets 0
---@field Puppets gamedataStimTargets 1
---@field Vehicles gamedataStimTargets 2
---@field Count gamedataStimTargets 3
---@field Invalid gamedataStimTargets 4
gamedataStimTargets = {}

---@class gamedataStimType
---@field AimingAt gamedataStimType 0
---@field Alarm gamedataStimType 1
---@field AreaEffect gamedataStimType 2
---@field AskToFollowOrder gamedataStimType 3
---@field Attention gamedataStimType 4
---@field AudioEnemyPing gamedataStimType 5
---@field Bullet gamedataStimType 6
---@field Bump gamedataStimType 7
---@field Call gamedataStimType 8
---@field CarAlarm gamedataStimType 9
---@field CarryBody gamedataStimType 10
---@field Combat gamedataStimType 11
---@field CombatCall gamedataStimType 12
---@field CombatHit gamedataStimType 13
---@field CombatWhistle gamedataStimType 14
---@field CrimeWitness gamedataStimType 15
---@field CrowdIllegalAction gamedataStimType 16
---@field DeadBody gamedataStimType 17
---@field DeviceExplosion gamedataStimType 18
---@field Distract gamedataStimType 19
---@field DodgeVehicle gamedataStimType 20
---@field Driving gamedataStimType 21
---@field Dying gamedataStimType 22
---@field EnvironmentalHazard gamedataStimType 23
---@field Explosion gamedataStimType 24
---@field FootStepRegular gamedataStimType 25
---@field FootStepSprint gamedataStimType 26
---@field GrenadeLanded gamedataStimType 27
---@field Gunshot gamedataStimType 28
---@field Hacked gamedataStimType 29
---@field HijackVehicle gamedataStimType 30
---@field IllegalAction gamedataStimType 31
---@field IllegalInteraction gamedataStimType 32
---@field LandingHard gamedataStimType 33
---@field LandingRegular gamedataStimType 34
---@field LandingVeryHard gamedataStimType 35
---@field MeleeAttack gamedataStimType 36
---@field MeleeHit gamedataStimType 37
---@field OpeningDoor gamedataStimType 38
---@field ProjectileDistraction gamedataStimType 39
---@field Provoke gamedataStimType 40
---@field Reload gamedataStimType 41
---@field Reprimand gamedataStimType 42
---@field ReprimandFinalWarning gamedataStimType 43
---@field Scream gamedataStimType 44
---@field SecurityBreach gamedataStimType 45
---@field SilencedGunshot gamedataStimType 46
---@field SilentAlarm gamedataStimType 47
---@field SoundDistraction gamedataStimType 48
---@field SpreadFear gamedataStimType 49
---@field StopedAiming gamedataStimType 50
---@field Terror gamedataStimType 51
---@field TooCloseDistance gamedataStimType 52
---@field VehicleHit gamedataStimType 53
---@field VehicleHorn gamedataStimType 54
---@field VisualDistract gamedataStimType 55
---@field WarningDistance gamedataStimType 56
---@field WeaponDisplayed gamedataStimType 57
---@field WeaponHolstered gamedataStimType 58
---@field WeaponSafe gamedataStimType 59
---@field Whistle gamedataStimType 60
---@field Count gamedataStimType 61
---@field Invalid gamedataStimType 62
gamedataStimType = {}

---@class gamedataSubCharacter
---@field Flathead gamedataSubCharacter 0
---@field Count gamedataSubCharacter 1
---@field Invalid gamedataSubCharacter 2
gamedataSubCharacter = {}

---@class gamedataTrackingMode
---@field BeliefPosition gamedataTrackingMode 0
---@field LastKnownPosition gamedataTrackingMode 1
---@field RealPosition gamedataTrackingMode 2
---@field SharedBeliefPosition gamedataTrackingMode 3
---@field SharedLastKnownPosition gamedataTrackingMode 4
---@field Count gamedataTrackingMode 5
---@field Invalid gamedataTrackingMode 6
gamedataTrackingMode = {}

---@class gamedataTraitType
---@field AssaultTrait01 gamedataTraitType 0
---@field AthleticsTrait01 gamedataTraitType 1
---@field BrawlingTrait01 gamedataTraitType 2
---@field ColdBloodTrait01 gamedataTraitType 3
---@field CombatHackingTrait01 gamedataTraitType 4
---@field CraftingTrait01 gamedataTraitType 5
---@field DemolitionTrait01 gamedataTraitType 6
---@field EngineeringTrait01 gamedataTraitType 7
---@field GunslingerTrait01 gamedataTraitType 8
---@field HackingTrait01 gamedataTraitType 9
---@field KenjutsuTrait01 gamedataTraitType 10
---@field StealthTrait01 gamedataTraitType 11
---@field Count gamedataTraitType 12
---@field Invalid gamedataTraitType 13
gamedataTraitType = {}

---@class gamedataTriggerMode
---@field Burst gamedataTriggerMode 0
---@field Charge gamedataTriggerMode 1
---@field FullAuto gamedataTriggerMode 2
---@field Lock gamedataTriggerMode 3
---@field SemiAuto gamedataTriggerMode 4
---@field Windup gamedataTriggerMode 5
---@field Count gamedataTriggerMode 6
---@field Invalid gamedataTriggerMode 7
gamedataTriggerMode = {}

---@class gamedataTweakDBType
---@field Invalid gamedataTweakDBType 0
---@field ForeignKey gamedataTweakDBType 1
---@field Int gamedataTweakDBType 2
---@field Float gamedataTweakDBType 3
---@field Bool gamedataTweakDBType 4
---@field String gamedataTweakDBType 5
---@field CName gamedataTweakDBType 6
---@field ResRef gamedataTweakDBType 7
---@field LocKey gamedataTweakDBType 8
---@field Color gamedataTweakDBType 9
---@field Vector2 gamedataTweakDBType 10
---@field Vector3 gamedataTweakDBType 11
---@field EulerAngles gamedataTweakDBType 12
---@field Quaternion gamedataTweakDBType 13
gamedataTweakDBType = {}

---@class gamedataUICondition
---@field InEyesSubMenu gamedataUICondition 0
---@field InHandsSubMenu gamedataUICondition 1
---@field InSubMenu gamedataUICondition 2
---@field IsIntroFinished gamedataUICondition 3
---@field IsSetEquippingSubMenu gamedataUICondition 4
---@field Visible gamedataUICondition 5
---@field Count gamedataUICondition 6
---@field Invalid gamedataUICondition 7
gamedataUICondition = {}

---@class gamedataUIIconCensorFlag
---@field Drugs gamedataUIIconCensorFlag 0
---@field Gore gamedataUIIconCensorFlag 1
---@field Homosexuality gamedataUIIconCensorFlag 2
---@field None gamedataUIIconCensorFlag 3
---@field Nudity gamedataUIIconCensorFlag 4
---@field OverSexualised gamedataUIIconCensorFlag 5
---@field Religion gamedataUIIconCensorFlag 6
---@field Suggestive gamedataUIIconCensorFlag 7
---@field Count gamedataUIIconCensorFlag 8
---@field Invalid gamedataUIIconCensorFlag 9
gamedataUIIconCensorFlag = {}

---@class gamedataUINameplateDisplayType
---@field AfterScan gamedataUINameplateDisplayType 0
---@field Always gamedataUINameplateDisplayType 1
---@field Default gamedataUINameplateDisplayType 2
---@field Never gamedataUINameplateDisplayType 3
---@field Count gamedataUINameplateDisplayType 4
---@field Invalid gamedataUINameplateDisplayType 5
gamedataUINameplateDisplayType = {}

---@class gamedataVariableNodeVariableValueDeriveInfo
---@field NotDerived gamedataVariableNodeVariableValueDeriveInfo 0
---@field ArrayAddition gamedataVariableNodeVariableValueDeriveInfo 1
gamedataVariableNodeVariableValueDeriveInfo = {}

---@class gamedataVehicleManufacturer
---@field Arch gamedataVehicleManufacturer 0
---@field Archer gamedataVehicleManufacturer 1
---@field Aurochs gamedataVehicleManufacturer 2
---@field Brennan gamedataVehicleManufacturer 3
---@field Chevillon gamedataVehicleManufacturer 4
---@field Delamain gamedataVehicleManufacturer 5
---@field Herrera gamedataVehicleManufacturer 6
---@field Kaukaz gamedataVehicleManufacturer 7
---@field Makigai gamedataVehicleManufacturer 8
---@field Militech gamedataVehicleManufacturer 9
---@field Mizutani gamedataVehicleManufacturer 10
---@field Porsche gamedataVehicleManufacturer 11
---@field Quadra gamedataVehicleManufacturer 12
---@field Rayfield gamedataVehicleManufacturer 13
---@field Seamurai gamedataVehicleManufacturer 14
---@field Thorton gamedataVehicleManufacturer 15
---@field Villefort gamedataVehicleManufacturer 16
---@field Yaiba gamedataVehicleManufacturer 17
---@field Zetatech gamedataVehicleManufacturer 18
---@field Count gamedataVehicleManufacturer 19
---@field Invalid gamedataVehicleManufacturer 20
gamedataVehicleManufacturer = {}

---@class gamedataVehicleModel
---@field Aerondight gamedataVehicleModel 0
---@field Alvarado gamedataVehicleModel 1
---@field Basilisk gamedataVehicleModel 2
---@field Bratsk gamedataVehicleModel 3
---@field Colby gamedataVehicleModel 4
---@field Columbus gamedataVehicleModel 5
---@field Cortes gamedataVehicleModel 6
---@field Deleon gamedataVehicleModel 7
---@field Emperor gamedataVehicleModel 8
---@field Galena gamedataVehicleModel 9
---@field GalenaNomad gamedataVehicleModel 10
---@field Hearse gamedataVehicleModel 11
---@field Hozuki gamedataVehicleModel 12
---@field Kusanagi gamedataVehicleModel 13
---@field Mackinaw gamedataVehicleModel 14
---@field Maimai gamedataVehicleModel 15
---@field Merrimac gamedataVehicleModel 16
---@field Octant gamedataVehicleModel 17
---@field Riptide gamedataVehicleModel 18
---@field Shion gamedataVehicleModel 19
---@field Supron gamedataVehicleModel 20
---@field Thrax gamedataVehicleModel 21
---@field Turbo gamedataVehicleModel 22
---@field Type66 gamedataVehicleModel 23
---@field Zeya gamedataVehicleModel 24
---@field Count gamedataVehicleModel 25
---@field Invalid gamedataVehicleModel 26
gamedataVehicleModel = {}

---@class gamedataVehicleType
---@field Bike gamedataVehicleType 0
---@field Car gamedataVehicleType 1
---@field Panzer gamedataVehicleType 2
---@field Count gamedataVehicleType 3
---@field Invalid gamedataVehicleType 4
gamedataVehicleType = {}

---@class gamedataVendorType
---@field Armorsmith gamedataVendorType 0
---@field Clothes gamedataVendorType 1
---@field Clothing gamedataVendorType 2
---@field Cyberware gamedataVendorType 3
---@field Drinks gamedataVendorType 4
---@field DropPoint gamedataVendorType 5
---@field Food gamedataVendorType 6
---@field GrilledFood gamedataVendorType 7
---@field Gunsmith gamedataVendorType 8
---@field Junk gamedataVendorType 9
---@field Kiosk gamedataVendorType 10
---@field Market gamedataVendorType 11
---@field Medical gamedataVendorType 12
---@field PackedFood gamedataVendorType 13
---@field RipperDoc gamedataVendorType 14
---@field SkillTrainer gamedataVendorType 15
---@field Tech gamedataVendorType 16
---@field TechJunk gamedataVendorType 17
---@field VendingMachine gamedataVendorType 18
---@field Count gamedataVendorType 19
---@field Invalid gamedataVendorType 20
gamedataVendorType = {}

---@class gamedataWeaponEvolution
---@field Blade gamedataWeaponEvolution 0
---@field Blunt gamedataWeaponEvolution 1
---@field None gamedataWeaponEvolution 2
---@field Power gamedataWeaponEvolution 3
---@field Smart gamedataWeaponEvolution 4
---@field Tech gamedataWeaponEvolution 5
---@field Count gamedataWeaponEvolution 6
---@field Invalid gamedataWeaponEvolution 7
gamedataWeaponEvolution = {}

---@class gamedataWeaponManufacturer
---@field Corporation gamedataWeaponManufacturer 0
---@field Street gamedataWeaponManufacturer 1
---@field Count gamedataWeaponManufacturer 2
---@field Invalid gamedataWeaponManufacturer 3
gamedataWeaponManufacturer = {}

---@class gamedataWorkspotActionType
---@field DeviceInvestigation gamedataWorkspotActionType 0
---@field FearHide gamedataWorkspotActionType 1
---@field LookAround gamedataWorkspotActionType 2
---@field Count gamedataWorkspotActionType 3
---@field Invalid gamedataWorkspotActionType 4
gamedataWorkspotActionType = {}

---@class gamedataWorkspotCategory
---@field Any gamedataWorkspotCategory 0
---@field Eating gamedataWorkspotCategory 1
---@field Nervous gamedataWorkspotCategory 2
---@field Sitting gamedataWorkspotCategory 3
---@field Sleeping gamedataWorkspotCategory 4
---@field Smoking gamedataWorkspotCategory 5
---@field Count gamedataWorkspotCategory 6
---@field Invalid gamedataWorkspotCategory 7
gamedataWorkspotCategory = {}

---@class gamedataWorkspotReactionType
---@field Anger gamedataWorkspotReactionType 0
---@field BumpLeftBack gamedataWorkspotReactionType 1
---@field BumpLeftFront gamedataWorkspotReactionType 2
---@field BumpRightBack gamedataWorkspotReactionType 3
---@field BumpRightFront gamedataWorkspotReactionType 4
---@field Curious gamedataWorkspotReactionType 5
---@field Fear gamedataWorkspotReactionType 6
---@field Count gamedataWorkspotReactionType 7
---@field Invalid gamedataWorkspotReactionType 8
gamedataWorkspotReactionType = {}

---@class gamedataWorldMapFilter
---@field ApartmentToPurchaseFilter gamedataWorldMapFilter 0
---@field CommonFilter gamedataWorldMapFilter 1
---@field CustomFilter gamedataWorldMapFilter 2
---@field DropPoint gamedataWorldMapFilter 3
---@field ExplorationFilter gamedataWorldMapFilter 4
---@field FastTravel gamedataWorldMapFilter 5
---@field Gigs gamedataWorldMapFilter 6
---@field NoFilter gamedataWorldMapFilter 7
---@field PsychoFilter gamedataWorldMapFilter 8
---@field Quest gamedataWorldMapFilter 9
---@field RipperdocFilter gamedataWorldMapFilter 10
---@field ServicePoint gamedataWorldMapFilter 11
---@field Story gamedataWorldMapFilter 12
---@field TarotFilter gamedataWorldMapFilter 13
---@field VehicleForSaleFilter gamedataWorldMapFilter 14
---@field VehiclesForPurchaseFilter gamedataWorldMapFilter 15
---@field VendorFilter gamedataWorldMapFilter 16
---@field Count gamedataWorldMapFilter 17
---@field Invalid gamedataWorldMapFilter 18
gamedataWorldMapFilter = {}

---@class gamedeviceActionPropertyFlags
---@field None gamedeviceActionPropertyFlags 0
---@field IsUsedByQuest gamedeviceActionPropertyFlags 1
gamedeviceActionPropertyFlags = {}

---@class gamedeviceRequestType
---@field None gamedeviceRequestType 0
---@field External gamedeviceRequestType 1
---@field Remote gamedeviceRequestType 2
---@field Direct gamedeviceRequestType 3
---@field Internal gamedeviceRequestType 4
gamedeviceRequestType = {}

---@class gameeventsDeathDirection
---@field Undefined gameeventsDeathDirection 0
---@field Left gameeventsDeathDirection 1
---@field Backward gameeventsDeathDirection 2
---@field Right gameeventsDeathDirection 3
---@field Forward gameeventsDeathDirection 4
gameeventsDeathDirection = {}

---@class gameinfluenceCollisionTestOutcome
---@field NoCell gameinfluenceCollisionTestOutcome 0
---@field Empty gameinfluenceCollisionTestOutcome 1
---@field Full gameinfluenceCollisionTestOutcome 2
gameinfluenceCollisionTestOutcome = {}

---@class gameinfluenceEBoundingBoxType
---@field Colider gameinfluenceEBoundingBoxType 0
---@field Custom gameinfluenceEBoundingBoxType 1
gameinfluenceEBoundingBoxType = {}

---@class gameinfluenceTestLineResult
---@field Fail gameinfluenceTestLineResult 0
---@field Success gameinfluenceTestLineResult 1
---@field Unknown gameinfluenceTestLineResult 2
gameinfluenceTestLineResult = {}

---@class gameinputActionType
---@field BUTTON_PRESSED gameinputActionType 0
---@field BUTTON_RELEASED gameinputActionType 1
---@field BUTTON_HOLD_PROGRESS gameinputActionType 2
---@field BUTTON_HOLD_COMPLETE gameinputActionType 3
---@field BUTTON_MULTITAP_BEGIN_LAST gameinputActionType 4
---@field BUTTON_MULTITAP_END_LAST gameinputActionType 5
---@field AXIS_CHANGE gameinputActionType 6
---@field RELATIVE_CHANGE gameinputActionType 7
---@field TOGGLE_PRESSED gameinputActionType 8
---@field TOGGLE_RELEASED gameinputActionType 9
---@field REPEAT gameinputActionType 10
gameinputActionType = {}

---@class gameinteractionsBumpIntensity
---@field Invalid gameinteractionsBumpIntensity 0
---@field Light gameinteractionsBumpIntensity 1
---@field Medium gameinteractionsBumpIntensity 2
---@field Heavy gameinteractionsBumpIntensity 3
---@field Strafe gameinteractionsBumpIntensity 4
gameinteractionsBumpIntensity = {}

---@class gameinteractionsBumpLocation
---@field Invalid gameinteractionsBumpLocation 0
---@field Front gameinteractionsBumpLocation 1
---@field Back gameinteractionsBumpLocation 2
gameinteractionsBumpLocation = {}

---@class gameinteractionsBumpSide
---@field Invalid gameinteractionsBumpSide 0
---@field Left gameinteractionsBumpSide 1
---@field Right gameinteractionsBumpSide 2
gameinteractionsBumpSide = {}

---@class gameinteractionsBumpType
---@field Workspot gameinteractionsBumpType 0
---@field Crowd gameinteractionsBumpType 1
gameinteractionsBumpType = {}

---@class gameinteractionsChoiceLookAtType
---@field Root gameinteractionsChoiceLookAtType 0
---@field Slot gameinteractionsChoiceLookAtType 1
---@field Orb gameinteractionsChoiceLookAtType 2
gameinteractionsChoiceLookAtType = {}

---@class gameinteractionsChoiceType
---@field QuestImportant gameinteractionsChoiceType 1
---@field AlreadyRead gameinteractionsChoiceType 2
---@field Inactive gameinteractionsChoiceType 4
---@field CheckSuccess gameinteractionsChoiceType 8
---@field CheckFailed gameinteractionsChoiceType 16
---@field InnerDialog gameinteractionsChoiceType 32
---@field PossessedDialog gameinteractionsChoiceType 64
---@field TimedDialog gameinteractionsChoiceType 128
---@field Blueline gameinteractionsChoiceType 256
---@field Pay gameinteractionsChoiceType 512
---@field Selected gameinteractionsChoiceType 1024
---@field Illegal gameinteractionsChoiceType 2048
gameinteractionsChoiceType = {}

---@class gameinteractionsEBinaryOperator
---@field EBinaryOperator_and gameinteractionsEBinaryOperator 0
---@field EBinaryOperator_or gameinteractionsEBinaryOperator 1
gameinteractionsEBinaryOperator = {}

---@class gameinteractionsEGroupType
---@field EGT_default gameinteractionsEGroupType 0
---@field EGT_noInput gameinteractionsEGroupType 1
---@field EGT_hint gameinteractionsEGroupType 2
gameinteractionsEGroupType = {}

---@class gameinteractionsEInteractionEventType
---@field EIET_activate gameinteractionsEInteractionEventType 0
---@field EIET_deactivate gameinteractionsEInteractionEventType 1
gameinteractionsEInteractionEventType = {}

---@class gameinteractionsELookAtTarget
---@field Entity gameinteractionsELookAtTarget 0
---@field Component gameinteractionsELookAtTarget 1
gameinteractionsELookAtTarget = {}

---@class gameinteractionsELookAtTest
---@field Targeting gameinteractionsELookAtTest 0
---@field Interaction gameinteractionsELookAtTest 1
gameinteractionsELookAtTest = {}

---@class gameinteractionsELootChoiceType
---@field Available gameinteractionsELootChoiceType 0
---@field Unavailable gameinteractionsELootChoiceType 1
---@field Invisible gameinteractionsELootChoiceType 2
gameinteractionsELootChoiceType = {}

---@class gameinteractionsELootVisualiserControlOperation
---@field Locked gameinteractionsELootVisualiserControlOperation 1
gameinteractionsELootVisualiserControlOperation = {}

---@class gameinteractionsEPredicateType
---@field EPredicateFunction_true gameinteractionsEPredicateType 0
---@field EPredicateFunction_distanceFromScreenCentre gameinteractionsEPredicateType 1
---@field EPredicateFunction_containedInShapes gameinteractionsEPredicateType 2
---@field EPredicateFunction_onScreenTest gameinteractionsEPredicateType 3
---@field EPredicateFunction_visibleTarget gameinteractionsEPredicateType 4
---@field EPredicateFunction_lookAt gameinteractionsEPredicateType 5
---@field EPredicateFunction_lookAtComponent gameinteractionsEPredicateType 6
---@field EPredicateFunction_logicalLookAt gameinteractionsEPredicateType 7
---@field EPredicateFunction_obstructedLookAt gameinteractionsEPredicateType 8
---@field EPredicateFunction_lineOfSight gameinteractionsEPredicateType 4
gameinteractionsEPredicateType = {}

---@class gameinteractionsEUnaryOperator
---@field EUnaryOperator_empty gameinteractionsEUnaryOperator 0
---@field EUnaryOperator_not gameinteractionsEUnaryOperator 1
gameinteractionsEUnaryOperator = {}

---@class gameinteractionsReactionState
---@field Idle gameinteractionsReactionState 0
---@field Starting gameinteractionsReactionState 1
---@field InInteraction gameinteractionsReactionState 2
---@field Finishing gameinteractionsReactionState 3
---@field Canceling gameinteractionsReactionState 4
gameinteractionsReactionState = {}

---@class gameinteractionsvisEVisualizerActivityState
---@field None gameinteractionsvisEVisualizerActivityState 0
---@field Visible gameinteractionsvisEVisualizerActivityState 1
---@field Available gameinteractionsvisEVisualizerActivityState 2
---@field Active gameinteractionsvisEVisualizerActivityState 3
gameinteractionsvisEVisualizerActivityState = {}

---@class gameinteractionsvisEVisualizerDefinitionFlags
---@field None gameinteractionsvisEVisualizerDefinitionFlags 0
---@field Fading gameinteractionsvisEVisualizerDefinitionFlags 1
---@field HeadlineSelection gameinteractionsvisEVisualizerDefinitionFlags 2
---@field QuestImportant gameinteractionsvisEVisualizerDefinitionFlags 8
---@field CPO_Mode gameinteractionsvisEVisualizerDefinitionFlags 16
gameinteractionsvisEVisualizerDefinitionFlags = {}

---@class gameinteractionsvisEVisualizerRuntimeFlags
---@field None gameinteractionsvisEVisualizerRuntimeFlags 0
---@field Locked gameinteractionsvisEVisualizerRuntimeFlags 1
---@field Failsafe gameinteractionsvisEVisualizerRuntimeFlags 2
---@field Dbg_Active gameinteractionsvisEVisualizerRuntimeFlags 4
gameinteractionsvisEVisualizerRuntimeFlags = {}

---@class gameinteractionsvisEVisualizerType
---@field Device gameinteractionsvisEVisualizerType 0
---@field Dialog gameinteractionsvisEVisualizerType 1
---@field Loot gameinteractionsvisEVisualizerType 2
---@field Invalid gameinteractionsvisEVisualizerType 3
gameinteractionsvisEVisualizerType = {}

---@class gameinteractionsvisInteractionType
---@field LookAt gameinteractionsvisInteractionType 0
---@field Proximity gameinteractionsvisInteractionType 1
gameinteractionsvisInteractionType = {}

---@class gamemappinsMappinTargetType
---@field World gamemappinsMappinTargetType 0
---@field Minimap gamemappinsMappinTargetType 1
---@field Map gamemappinsMappinTargetType 2
gamemappinsMappinTargetType = {}

---@class gamemappinsVerticalPositioning
---@field Above gamemappinsVerticalPositioning 0
---@field Same gamemappinsVerticalPositioning 1
---@field Below gamemappinsVerticalPositioning 2
gamemappinsVerticalPositioning = {}

---@class gameprojectileELaunchMode
---@field Default gameprojectileELaunchMode 0
---@field FromLogic gameprojectileELaunchMode 1
---@field FromVisuals gameprojectileELaunchMode 2
gameprojectileELaunchMode = {}

---@class gameprojectileOnCollisionAction
---@field None gameprojectileOnCollisionAction 0
---@field Stop gameprojectileOnCollisionAction 1
---@field Bounce gameprojectileOnCollisionAction 2
---@field StopAndStick gameprojectileOnCollisionAction 3
---@field StopAndStickPerpendicular gameprojectileOnCollisionAction 4
---@field Pierce gameprojectileOnCollisionAction 5
gameprojectileOnCollisionAction = {}

---@class gameprojectileParabolicUnknownVariable
---@field TargetPoint gameprojectileParabolicUnknownVariable 0
---@field VelocityValue gameprojectileParabolicUnknownVariable 1
---@field Accel gameprojectileParabolicUnknownVariable 2
gameprojectileParabolicUnknownVariable = {}

---@class gamesmartGunTargetState
---@field Visible gamesmartGunTargetState 0
---@field Targetable gamesmartGunTargetState 1
---@field Locking gamesmartGunTargetState 2
---@field Locked gamesmartGunTargetState 3
---@field Unlocking gamesmartGunTargetState 4
gamesmartGunTargetState = {}

---@class gamestateMachineParameterAspect
---@field Temporary gamestateMachineParameterAspect 0
---@field Permanent gamestateMachineParameterAspect 1
---@field Conditional gamestateMachineParameterAspect 2
gamestateMachineParameterAspect = {}

---@class gametargetingSystemETargetFilterStatus
---@field Stop gametargetingSystemETargetFilterStatus 0
---@field Continue gametargetingSystemETargetFilterStatus 1
gametargetingSystemETargetFilterStatus = {}

---@class gametargetingSystemScriptFilter
---@field Melee gametargetingSystemScriptFilter 1
---@field Shooting gametargetingSystemScriptFilter 2
---@field Scanning gametargetingSystemScriptFilter 4
---@field QuickHack gametargetingSystemScriptFilter 8
---@field ShootingLimbCyber gametargetingSystemScriptFilter 16
---@field HeadTarget gametargetingSystemScriptFilter 32
---@field LegTarget gametargetingSystemScriptFilter 64
---@field MechanicalTarget gametargetingSystemScriptFilter 128
gametargetingSystemScriptFilter = {}

---@class gametargetingSystemSearchFilterMaskValue
---@field Obj_Player gametargetingSystemSearchFilterMaskValue 1
---@field Obj_Puppet gametargetingSystemSearchFilterMaskValue 2
---@field Obj_Sensor gametargetingSystemSearchFilterMaskValue 4
---@field Obj_Device gametargetingSystemSearchFilterMaskValue 8
---@field Obj_Other gametargetingSystemSearchFilterMaskValue 16
---@field Att_Friendly gametargetingSystemSearchFilterMaskValue 32
---@field Att_Hostile gametargetingSystemSearchFilterMaskValue 64
---@field Att_Neutral gametargetingSystemSearchFilterMaskValue 128
---@field Sp_AimAssistEnabled gametargetingSystemSearchFilterMaskValue 256
---@field Sp_Aggressive gametargetingSystemSearchFilterMaskValue 512
---@field St_Alive gametargetingSystemSearchFilterMaskValue 2048
---@field St_Dead gametargetingSystemSearchFilterMaskValue 4096
---@field St_NotDefeated gametargetingSystemSearchFilterMaskValue 8192
---@field St_Defeated gametargetingSystemSearchFilterMaskValue 16384
---@field St_Conscious gametargetingSystemSearchFilterMaskValue 32768
---@field St_Unconscious gametargetingSystemSearchFilterMaskValue 65536
---@field St_TurnedOn gametargetingSystemSearchFilterMaskValue 131072
---@field St_TurnedOff gametargetingSystemSearchFilterMaskValue 262144
---@field St_QuickHackable gametargetingSystemSearchFilterMaskValue 524288
---@field St_AliveAndActive gametargetingSystemSearchFilterMaskValue 174080
gametargetingSystemSearchFilterMaskValue = {}

---@class gameuiAuthorisationNotificationType
---@field Unknown gameuiAuthorisationNotificationType 0
---@field GotKeycard gameuiAuthorisationNotificationType 1
---@field AccessGranted gameuiAuthorisationNotificationType 2
gameuiAuthorisationNotificationType = {}

---@class gameuiBaseMenuGameControllerPuppetGenderInfo
---@field Male gameuiBaseMenuGameControllerPuppetGenderInfo 0
---@field Female gameuiBaseMenuGameControllerPuppetGenderInfo 1
---@field ShouldBeDetermined gameuiBaseMenuGameControllerPuppetGenderInfo 2
gameuiBaseMenuGameControllerPuppetGenderInfo = {}

---@class gameuiBinkVideoStatus
---@field Idle gameuiBinkVideoStatus 0
---@field NotStarted gameuiBinkVideoStatus 1
---@field Initializing gameuiBinkVideoStatus 2
---@field Playing gameuiBinkVideoStatus 3
---@field Finished gameuiBinkVideoStatus 4
---@field OutOfFrustum gameuiBinkVideoStatus 5
---@field Stopped gameuiBinkVideoStatus 6
---@field Error gameuiBinkVideoStatus 7
gameuiBinkVideoStatus = {}

---@class gameuiCharacterCustomizationActionType
---@field Activate gameuiCharacterCustomizationActionType 0
---@field Deactivate gameuiCharacterCustomizationActionType 1
---@field EquipItem gameuiCharacterCustomizationActionType 2
---@field UnequipItem gameuiCharacterCustomizationActionType 3
---@field Refresh gameuiCharacterCustomizationActionType 4
gameuiCharacterCustomizationActionType = {}

---@class gameuiCharacterCustomizationEditTag
---@field NewGame gameuiCharacterCustomizationEditTag 0
---@field HairDresser gameuiCharacterCustomizationEditTag 1
---@field Ripperdoc gameuiCharacterCustomizationEditTag 2
gameuiCharacterCustomizationEditTag = {}

---@class gameuiCharacterCustomizationPart
---@field Head gameuiCharacterCustomizationPart 0
---@field Body gameuiCharacterCustomizationPart 1
---@field Arms gameuiCharacterCustomizationPart 2
gameuiCharacterCustomizationPart = {}

---@class gameuiCharacterCustomization_BrokenNoseStage
---@field CCBN_Disabled gameuiCharacterCustomization_BrokenNoseStage 0
---@field CCBN_Stage1 gameuiCharacterCustomization_BrokenNoseStage 1
---@field CCBN_Stage2 gameuiCharacterCustomization_BrokenNoseStage 2
gameuiCharacterCustomization_BrokenNoseStage = {}

---@class gameuiChoiceIndicatorType
---@field Default gameuiChoiceIndicatorType 0
---@field Speech gameuiChoiceIndicatorType 1
---@field Call gameuiChoiceIndicatorType 2
---@field Arrow gameuiChoiceIndicatorType 3
---@field Hand gameuiChoiceIndicatorType 4
---@field Loot gameuiChoiceIndicatorType 5
---@field Quest gameuiChoiceIndicatorType 6
---@field FastTravel gameuiChoiceIndicatorType 7
---@field Solo gameuiChoiceIndicatorType 9
---@field Netrunner gameuiChoiceIndicatorType 10
---@field Techie gameuiChoiceIndicatorType 12
gameuiChoiceIndicatorType = {}

---@class gameuiChoiceListVisualizerType
---@field Interaction gameuiChoiceListVisualizerType 0
---@field Dialog gameuiChoiceListVisualizerType 1
gameuiChoiceListVisualizerType = {}

---@class gameuiCyberspaceElementType
---@field CyberspaceNPC gameuiCyberspaceElementType 0
---@field CyberspaceFakeObject gameuiCyberspaceElementType 1
gameuiCyberspaceElementType = {}

---@class gameuiDamageDigitsMode
---@field Off gameuiDamageDigitsMode 0
---@field Individual gameuiDamageDigitsMode 1
---@field Accumulated gameuiDamageDigitsMode 2
---@field Both gameuiDamageDigitsMode 3
gameuiDamageDigitsMode = {}

---@class gameuiDamageDigitsStickingMode
---@field None gameuiDamageDigitsStickingMode 0
---@field Individual gameuiDamageDigitsStickingMode 1
---@field Accumulated gameuiDamageDigitsStickingMode 2
---@field Both gameuiDamageDigitsStickingMode 3
gameuiDamageDigitsStickingMode = {}

---@class gameuiDamageIndicatorMode
---@field Off gameuiDamageIndicatorMode 0
---@field DamageOnly gameuiDamageIndicatorMode 1
---@field On gameuiDamageIndicatorMode 2
gameuiDamageIndicatorMode = {}

---@class gameuiEBraindanceLayer
---@field Visual gameuiEBraindanceLayer 0
---@field Audio gameuiEBraindanceLayer 1
---@field Thermal gameuiEBraindanceLayer 2
gameuiEBraindanceLayer = {}

---@class gameuiEClueDescriptorMode
---@field Invalid gameuiEClueDescriptorMode 0
---@field Add gameuiEClueDescriptorMode 1
---@field Finish gameuiEClueDescriptorMode 2
gameuiEClueDescriptorMode = {}

---@class gameuiEIconOrientation
---@field Upright gameuiEIconOrientation 0
---@field Entity gameuiEIconOrientation 1
gameuiEIconOrientation = {}

---@class gameuiETooltipPlacement
---@field LeftCenter gameuiETooltipPlacement 0
---@field RightCenter gameuiETooltipPlacement 1
---@field LeftTop gameuiETooltipPlacement 2
---@field RightTop gameuiETooltipPlacement 3
gameuiETooltipPlacement = {}

---@class gameuiEWorldMapCameraMode
---@field TopDown gameuiEWorldMapCameraMode 0
---@field ZoomLevels gameuiEWorldMapCameraMode 1
---@field COUNT gameuiEWorldMapCameraMode 2
gameuiEWorldMapCameraMode = {}

---@class gameuiEWorldMapDistrictView
---@field None gameuiEWorldMapDistrictView 0
---@field Districts gameuiEWorldMapDistrictView 1
---@field SubDistricts gameuiEWorldMapDistrictView 2
gameuiEWorldMapDistrictView = {}

---@class gameuiGenericNotificationType
---@field Generic gameuiGenericNotificationType 0
---@field QuestUpdate gameuiGenericNotificationType 1
---@field Vendor gameuiGenericNotificationType 3
---@field ZoneAlert gameuiGenericNotificationType 4
---@field VehicleAlert gameuiGenericNotificationType 5
---@field PreventionBounty gameuiGenericNotificationType 6
---@field ProgressionView gameuiGenericNotificationType 7
gameuiGenericNotificationType = {}

---@class gameuiHackingMinigameState
---@field Unknown gameuiHackingMinigameState 0
---@field InProgress gameuiHackingMinigameState 1
---@field Succeeded gameuiHackingMinigameState 2
---@field Failed gameuiHackingMinigameState 3
gameuiHackingMinigameState = {}

---@class gameuiHitType
---@field Miss gameuiHitType 0
---@field Glance gameuiHitType 1
---@field Hit gameuiHitType 2
---@field CriticalHit gameuiHitType 3
---@field CriticalHit_x2 gameuiHitType 4
gameuiHitType = {}

---@class gameuiMappinGroupState
---@field Ungrouped gameuiMappinGroupState 0
---@field Grouped gameuiMappinGroupState 1
---@field GroupedCollection gameuiMappinGroupState 2
---@field GroupedHidden gameuiMappinGroupState 3
gameuiMappinGroupState = {}

---@class gameuiPatchIntro
---@field Patch1500_NextGen gameuiPatchIntro 0
---@field Patch1600 gameuiPatchIntro 1
gameuiPatchIntro = {}

---@class gameuiTutorialHiddenReason
---@field None gameuiTutorialHiddenReason 0
---@field DefaultHiddenReason gameuiTutorialHiddenReason 1
---@field InPhotomode gameuiTutorialHiddenReason 2
gameuiTutorialHiddenReason = {}

---@class gameuiarcadeArcadeMinigame
---@field RoachRace gameuiarcadeArcadeMinigame 0
gameuiarcadeArcadeMinigame = {}

---@class gameuiarcadeRoachRaceObjectType
---@field BoostObject_Apple gameuiarcadeRoachRaceObjectType 0
---@field BoostObject_Carrot gameuiarcadeRoachRaceObjectType 1
---@field Obstacle gameuiarcadeRoachRaceObjectType 2
gameuiarcadeRoachRaceObjectType = {}

---@class gameweaponReloadStatus
---@field Standard gameweaponReloadStatus 0
---@field Interrupted gameweaponReloadStatus 1
gameweaponReloadStatus = {}

---@class genLevelRandomizerDataSource
---@field Entries genLevelRandomizerDataSource 0
---@field Markers genLevelRandomizerDataSource 1
genLevelRandomizerDataSource = {}

---@class grsDeathmatchStatus
---@field Waiting grsDeathmatchStatus 0
---@field AdditionalWaiting grsDeathmatchStatus 1
---@field Starting grsDeathmatchStatus 2
---@field InGame grsDeathmatchStatus 3
---@field Ending grsDeathmatchStatus 4
---@field Sumup grsDeathmatchStatus 5
grsDeathmatchStatus = {}

---@class grsHeistStatus
---@field Waiting grsHeistStatus 0
---@field Starting grsHeistStatus 1
---@field Lobby grsHeistStatus 2
---@field InGame grsHeistStatus 3
---@field Ending grsHeistStatus 4
---@field Victory grsHeistStatus 5
---@field Failure grsHeistStatus 6
grsHeistStatus = {}

---@class gsmStateError
---@field StateError_OK gsmStateError 0
---@field StateError_SettingsCorrupted gsmStateError 1
---@field StateError_SettingsCorrupted_Save gsmStateError 2
---@field StateError_ProfileCorrupted gsmStateError 3
---@field StateError_ProfileCorrupted_Save gsmStateError 4
---@field StateError_CannotInitializeContext gsmStateError 5
---@field StateError_CantInitializeSession gsmStateError 6
---@field StateError_CantLoadSave_CantLoadFile gsmStateError 7
---@field StateError_CantLoadSave_CantCreateLoadStream gsmStateError 8
---@field StateError_CantLoadSave_CensorshipLevelMismatch gsmStateError 9
---@field StateError_CantLoadSave_RegionMismatch gsmStateError 10
---@field StateError_CantLoadSave_CensorshipOptionalNudity gsmStateError 11
---@field StateError_CantLoadSave_VersionMismatch gsmStateError 12
---@field StateError_CantLoadSave_Corrupted gsmStateError 13
---@field StateError_CantLoadSave_SessionDescInvalid gsmStateError 14
---@field StateError_CantLoadSave_CantLoadCloudFile gsmStateError 15
gsmStateError = {}

---@class hitFlag
---@field None hitFlag 0
---@field IgnoreImmortalityModes hitFlag 1
---@field FriendlyFire hitFlag 2
---@field DisableSounds hitFlag 3
---@field DisableVFX hitFlag 4
---@field CannotReturnDamage hitFlag 5
---@field CanParry hitFlag 6
---@field CanCounter hitFlag 7
---@field CanDodge hitFlag 8
---@field WasBlocked hitFlag 9
---@field WasDeflected hitFlag 10
---@field WasDodged hitFlag 11
---@field WasEvaded hitFlag 12
---@field WasMitigated hitFlag 13
---@field Kill hitFlag 14
---@field DontShowDamageFloater hitFlag 15
---@field DealNoDamage hitFlag 16
---@field CannotModifyDamage hitFlag 17
---@field Headshot hitFlag 18
---@field CriticalHit hitFlag 19
---@field FinisherTriggered hitFlag 20
---@field DamageNullified hitFlag 21
---@field Nonlethal hitFlag 22
---@field WasKillingBlow hitFlag 23
---@field ProcessDefeated hitFlag 24
---@field Defeated hitFlag 25
---@field SilentKillModifier hitFlag 26
---@field DeterministicDamage hitFlag 27
---@field WeakspotHit hitFlag 28
---@field StealthHit hitFlag 29
---@field DoNotTriggerFinisher hitFlag 30
---@field DealtDamage hitFlag 31
---@field ImmortalTarget hitFlag 32
---@field CanDamageSelf hitFlag 33
---@field SuccessfulAttack hitFlag 34
---@field WeaponFullyCharged hitFlag 35
---@field DisableNPCHitReaction hitFlag 36
---@field VehicleDamage hitFlag 37
---@field VehicleImpact hitFlag 38
---@field RagdollImpact hitFlag 39
---@field IgnoreDifficulty hitFlag 40
---@field QuickHack hitFlag 41
---@field IgnoreVehicles hitFlag 42
---@field DamageOverTime hitFlag 43
---@field DotApplied hitFlag 44
---@field PROJECT_SPECIFIC_FLAGS hitFlag 100000
---@field UsedKerenzikov hitFlag 100001
---@field FragmentationSplinter hitFlag 100002
---@field DetonateGrenades hitFlag 100003
---@field WeakExplosion hitFlag 100004
---@field GrenadeQuickhackExplosion hitFlag 100005
---@field FriendlyFireIgnored hitFlag 100006
---@field ForceNoCrit hitFlag 100007
---@field ReduceDamage hitFlag 100008
---@field ForceDismember hitFlag 100009
hitFlag = {}

---@class inkBrushDrawType
---@field NoDraw inkBrushDrawType 0
---@field Solid inkBrushDrawType 1
---@field Wire inkBrushDrawType 2
inkBrushDrawType = {}

---@class inkBrushMirrorType
---@field NoMirror inkBrushMirrorType 0
---@field Horizontal inkBrushMirrorType 1
---@field Vertical inkBrushMirrorType 2
---@field Both inkBrushMirrorType 3
inkBrushMirrorType = {}

---@class inkBrushTileType
---@field NoTile inkBrushTileType 0
---@field Horizontal inkBrushTileType 1
---@field Vertical inkBrushTileType 2
---@field Both inkBrushTileType 3
inkBrushTileType = {}

---@class inkCacheMode
---@field Normal inkCacheMode 0
---@field Minimap inkCacheMode 1
---@field ExternalDynamicTexture inkCacheMode 2
inkCacheMode = {}

---@class inkCharacterEventType
---@field CharInput inkCharacterEventType 0
---@field MoveCaretForward inkCharacterEventType 1
---@field MoveCaretBackward inkCharacterEventType 2
---@field Delete inkCharacterEventType 3
---@field Backspace inkCharacterEventType 4
inkCharacterEventType = {}

---@class inkCompositionParamType
---@field FLOAT inkCompositionParamType 0
---@field VECTOR2 inkCompositionParamType 1
inkCompositionParamType = {}

---@class inkDiscreteNavigationDirection
---@field Up inkDiscreteNavigationDirection 0
---@field Right inkDiscreteNavigationDirection 1
---@field Down inkDiscreteNavigationDirection 2
---@field Left inkDiscreteNavigationDirection 3
inkDiscreteNavigationDirection = {}

---@class inkDisplayMode
---@field Invalid inkDisplayMode 0
---@field Basic inkDisplayMode 1
---@field BasicTranslatable inkDisplayMode 2
---@field Bold inkDisplayMode 3
---@field Header inkDisplayMode 4
---@field Single inkDisplayMode 5
inkDisplayMode = {}

---@class inkEAnchor
---@field TopLeft inkEAnchor 0
---@field TopCenter inkEAnchor 1
---@field TopRight inkEAnchor 2
---@field CenterLeft inkEAnchor 3
---@field Centered inkEAnchor 4
---@field CenterRight inkEAnchor 5
---@field BottomLeft inkEAnchor 6
---@field BottomCenter inkEAnchor 7
---@field BottomRight inkEAnchor 8
---@field TopFillHorizontaly inkEAnchor 9
---@field CenterFillHorizontaly inkEAnchor 10
---@field BottomFillHorizontaly inkEAnchor 11
---@field LeftFillVerticaly inkEAnchor 12
---@field CenterFillVerticaly inkEAnchor 13
---@field RightFillVerticaly inkEAnchor 14
---@field Fill inkEAnchor 15
inkEAnchor = {}

---@class inkEBlurDimension
---@field Horizontal inkEBlurDimension 0
---@field Vertical inkEBlurDimension 1
inkEBlurDimension = {}

---@class inkEButtonState
---@field Normal inkEButtonState 0
---@field Hover inkEButtonState 1
---@field Press inkEButtonState 2
---@field Disabled inkEButtonState 3
inkEButtonState = {}

---@class inkEChildOrder
---@field Forward inkEChildOrder 0
---@field Backward inkEChildOrder 1
inkEChildOrder = {}

---@class inkEEndCapStyle
---@field BUTT inkEEndCapStyle 0
---@field SQUARE inkEEndCapStyle 1
---@field ROUND inkEEndCapStyle 2
---@field JOINED inkEEndCapStyle 3
inkEEndCapStyle = {}

---@class inkEHorizontalAlign
---@field Fill inkEHorizontalAlign 0
---@field Left inkEHorizontalAlign 1
---@field Center inkEHorizontalAlign 2
---@field Right inkEHorizontalAlign 3
inkEHorizontalAlign = {}

---@class inkEJointStyle
---@field MITER inkEJointStyle 0
---@field BEVEL inkEJointStyle 1
---@field ROUND inkEJointStyle 2
inkEJointStyle = {}

---@class inkELayerLoadPriority
---@field Normal inkELayerLoadPriority 0
---@field High inkELayerLoadPriority 1
inkELayerLoadPriority = {}

---@class inkELayerType
---@field Watermarks inkELayerType 0
---@field WaitingSign inkELayerType 1
---@field SystemNotifications inkELayerType 2
---@field Loading inkELayerType 3
---@field GameNotifications inkELayerType 4
---@field Menu inkELayerType 5
---@field Video inkELayerType 6
---@field HUD inkELayerType 7
---@field Editor inkELayerType 8
---@field World inkELayerType 9
---@field Offscreen inkELayerType 10
---@field Advertisements inkELayerType 11
---@field StreetSigns inkELayerType 12
---@field PhotoMode inkELayerType 13
---@field Debug inkELayerType 14
---@field MAX inkELayerType 15
inkELayerType = {}

---@class inkEOrientation
---@field Horizontal inkEOrientation 0
---@field Vertical inkEOrientation 1
inkEOrientation = {}

---@class inkEScrollDirection
---@field Vertical inkEScrollDirection 0
---@field Horizontal inkEScrollDirection 1
inkEScrollDirection = {}

---@class inkEShapeVariant
---@field Fill inkEShapeVariant 0
---@field Border inkEShapeVariant 1
---@field FillAndBorder inkEShapeVariant 2
inkEShapeVariant = {}

---@class inkESizeRule
---@field Fixed inkESizeRule 0
---@field Stretch inkESizeRule 1
inkESizeRule = {}

---@class inkESliderDirection
---@field Horizontal inkESliderDirection 0
---@field Vertical inkESliderDirection 1
inkESliderDirection = {}

---@class inkETextDirection
---@field LeftToRight inkETextDirection 0
---@field RightToLeft inkETextDirection 1
---@field Mixed inkETextDirection 2
inkETextDirection = {}

---@class inkETextureResolution
---@field UltraHD_3840_2160 inkETextureResolution 0
---@field FullHD_1920_1080 inkETextureResolution 1
---@field HD_1280_720 inkETextureResolution 2
inkETextureResolution = {}

---@class inkEToggleState
---@field Normal inkEToggleState 0
---@field Press inkEToggleState 1
---@field Hover inkEToggleState 2
---@field Disabled inkEToggleState 3
---@field Toggled inkEToggleState 4
---@field ToggledPress inkEToggleState 5
---@field ToggledHover inkEToggleState 6
inkEToggleState = {}

---@class inkEVerticalAlign
---@field Fill inkEVerticalAlign 0
---@field Top inkEVerticalAlign 1
---@field Center inkEVerticalAlign 2
---@field Bottom inkEVerticalAlign 3
inkEVerticalAlign = {}

---@class inkEffectType
---@field ScanlineWipe inkEffectType 0
---@field LinearWipe inkEffectType 1
---@field RadialWipe inkEffectType 2
---@field LightSweep inkEffectType 3
---@field BoxBlur inkEffectType 4
---@field Mask inkEffectType 5
---@field Glitch inkEffectType 6
---@field PointCloud inkEffectType 7
---@field ColorFill inkEffectType 8
---@field InnerGlow inkEffectType 9
---@field ColorCorrection inkEffectType 10
---@field Multisampling inkEffectType 11
inkEffectType = {}

---@class inkFinalConfigurationVisibility
---@field VisibleOnlyInFinal inkFinalConfigurationVisibility 0
---@field HiddenOnlyInFinal inkFinalConfigurationVisibility 1
inkFinalConfigurationVisibility = {}

---@class inkFitToContentDirection
---@field None inkFitToContentDirection 0
---@field Horizontal inkFitToContentDirection 2
---@field Vertical inkFitToContentDirection 1
inkFitToContentDirection = {}

---@class inkFocusCause
---@field Mouse inkFocusCause 0
---@field Navigation inkFocusCause 1
---@field SetDirectly inkFocusCause 2
---@field Cleared inkFocusCause 3
---@field OtherWidgetLostFocus inkFocusCause 4
---@field WindowActivate inkFocusCause 5
inkFocusCause = {}

---@class inkGradientMode
---@field Linear inkGradientMode 0
---@field Rectangular inkGradientMode 1
inkGradientMode = {}

---@class inkIconResult
---@field Success inkIconResult 0
---@field UnknownIconTweak inkIconResult 1
---@field AtlasResourceNotFound inkIconResult 2
---@field PartNotFoundInAtlas inkIconResult 3
inkIconResult = {}

---@class inkInputHintHoldIndicationType
---@field Press inkInputHintHoldIndicationType 0
---@field Hold inkInputHintHoldIndicationType 1
---@field FromInputConfig inkInputHintHoldIndicationType 2
inkInputHintHoldIndicationType = {}

---@class inkLanguageId
---@field EN inkLanguageId 0
---@field PL inkLanguageId 1
---@field JP inkLanguageId 2
---@field DE inkLanguageId 3
---@field ES inkLanguageId 4
---@field MX inkLanguageId 5
---@field KR inkLanguageId 6
---@field IT inkLanguageId 7
---@field FR inkLanguageId 8
---@field RU inkLanguageId 9
---@field PR inkLanguageId 10
---@field ZH_CN inkLanguageId 11
---@field TW inkLanguageId 12
---@field CZ inkLanguageId 13
---@field HU inkLanguageId 14
---@field AR inkLanguageId 15
---@field TR inkLanguageId 16
---@field TH inkLanguageId 17
---@field HT inkLanguageId 18
---@field DEBUG inkLanguageId 19
inkLanguageId = {}

---@class inkLastTickVideoState
---@field NotDrawn inkLastTickVideoState 0
---@field Drawn inkLastTickVideoState 1
---@field Paused inkLastTickVideoState 2
inkLastTickVideoState = {}

---@class inkLayerDrawingPolicy
---@field InOrder inkLayerDrawingPolicy 0
---@field InParallel inkLayerDrawingPolicy 1
inkLayerDrawingPolicy = {}

---@class inkLifePath
---@field Corporate inkLifePath 0
---@field StreetKid inkLifePath 2
---@field Nomad inkLifePath 1
---@field Invalid inkLifePath 3
inkLifePath = {}

---@class inkLineType
---@field RegularPatternSpacing inkLineType 0
---@field LoosePatternSpacing inkLineType 1
inkLineType = {}

---@class inkLoadingScreenType
---@field Unknown inkLoadingScreenType 0
---@field SplashScreen inkLoadingScreenType 1
---@field Initial inkLoadingScreenType 2
---@field FastTravel inkLoadingScreenType 3
inkLoadingScreenType = {}

---@class inkMaskDataSource
---@field TextureAtlas inkMaskDataSource 0
---@field DynamicTexture inkMaskDataSource 1
inkMaskDataSource = {}

---@class inkMenuMode
---@field Unknown inkMenuMode 0
---@field PauseMenu inkMenuMode 1
---@field HubMenu inkMenuMode 2
---@field CustomMenu inkMenuMode 3
inkMenuMode = {}

---@class inkMenuState
---@field Enabled inkMenuState 0
---@field Disabled inkMenuState 1
inkMenuState = {}

---@class inkSaveStatus
---@field Invalid inkSaveStatus 0
---@field Local inkSaveStatus 1
---@field Upload inkSaveStatus 2
---@field Cloud inkSaveStatus 3
---@field InSync inkSaveStatus 4
inkSaveStatus = {}

---@class inkSaveTransferStatus
---@field ExportStarted inkSaveTransferStatus 0
---@field ExportSuccess inkSaveTransferStatus 1
---@field ExportFailed inkSaveTransferStatus 2
---@field ImportChecking inkSaveTransferStatus 3
---@field ImportStarted inkSaveTransferStatus 4
---@field ImportSuccess inkSaveTransferStatus 5
---@field ImportNoSave inkSaveTransferStatus 6
---@field ImportFailed inkSaveTransferStatus 7
---@field ImportNotEnoughSpace inkSaveTransferStatus 8
inkSaveTransferStatus = {}

---@class inkSaveType
---@field ManualSave inkSaveType 0
---@field QuickSave inkSaveType 1
---@field AutoSave inkSaveType 2
---@field PointOfNoReturn inkSaveType 3
---@field EndGameSave inkSaveType 4
inkSaveType = {}

---@class inkSelectionRule
---@field Single inkSelectionRule 0
---@field Parent inkSelectionRule 1
---@field Children inkSelectionRule 2
---@field TypeBased inkSelectionRule 3
---@field NameBased inkSelectionRule 4
inkSelectionRule = {}

---@class inkSelectorChangeDirection
---@field None inkSelectorChangeDirection 0
---@field Prior inkSelectorChangeDirection 1
---@field Next inkSelectorChangeDirection 2
inkSelectorChangeDirection = {}

---@class inkSpawnMode
---@field SingleAndMultiplayer inkSpawnMode 0
---@field OnlySingleplayer inkSpawnMode 1
---@field OnlyMultiplayer inkSpawnMode 2
inkSpawnMode = {}

---@class inkState
---@field InitEngine inkState 0
---@field PreGameMenu inkState 3
---@field InitialLoading inkState 4
---@field Game inkState 5
---@field InGameMenu inkState 6
---@field PauseMenu inkState 7
---@field FastTravelLoading inkState 8
---@field PhotoMode inkState 9
---@field MiniGameMenu inkState 10
---@field EndGameLoading inkState 11
---@field EditorMode inkState 12
inkState = {}

---@class inkTextReplaceAnimationControllerWidgetTextUsage
---@field BaseText inkTextReplaceAnimationControllerWidgetTextUsage 0
---@field TargetText inkTextReplaceAnimationControllerWidgetTextUsage 1
---@field NoUsage inkTextReplaceAnimationControllerWidgetTextUsage 2
inkTextReplaceAnimationControllerWidgetTextUsage = {}

---@class inkTextWrappingPolicy
---@field SingleLine inkTextWrappingPolicy 0
---@field MultiLine inkTextWrappingPolicy 1
---@field MultilineNoWrap inkTextWrappingPolicy 2
inkTextWrappingPolicy = {}

---@class inkTextureType
---@field StaticTexture inkTextureType 0
---@field DynamicTexture inkTextureType 1
---@field InvalidTexture inkTextureType 2
inkTextureType = {}

---@class inkVideoInstanceDoneReason
---@field Failed inkVideoInstanceDoneReason 0
---@field Stopped inkVideoInstanceDoneReason 1
---@field Finished inkVideoInstanceDoneReason 2
inkVideoInstanceDoneReason = {}

---@class inkVideoOptimizationState
---@field None inkVideoOptimizationState 0
---@field TooManyBinks inkVideoOptimizationState 1
---@field FullscreenBinkVisible inkVideoOptimizationState 2
inkVideoOptimizationState = {}

---@class inkWidgetResourceVersion
---@field Default inkWidgetResourceVersion 0
---@field BrushToAtlas inkWidgetResourceVersion 1
inkWidgetResourceVersion = {}

---@class inkanimEventType
---@field OnLoaded inkanimEventType 0
---@field OnStart inkanimEventType 1
---@field OnFinish inkanimEventType 2
---@field OnPause inkanimEventType 3
---@field OnResume inkanimEventType 4
---@field OnStartLoop inkanimEventType 5
---@field OnEndLoop inkanimEventType 6
inkanimEventType = {}

---@class inkanimInterpolationDirection
---@field To inkanimInterpolationDirection 0
---@field From inkanimInterpolationDirection 1
---@field FromTo inkanimInterpolationDirection 2
inkanimInterpolationDirection = {}

---@class inkanimInterpolationMode
---@field EasyIn inkanimInterpolationMode 0
---@field EasyOut inkanimInterpolationMode 1
---@field EasyInOut inkanimInterpolationMode 2
---@field EasyOutIn inkanimInterpolationMode 3
inkanimInterpolationMode = {}

---@class inkanimInterpolationType
---@field Linear inkanimInterpolationType 0
---@field Quadratic inkanimInterpolationType 1
---@field Qubic inkanimInterpolationType 2
---@field Quartic inkanimInterpolationType 3
---@field Quintic inkanimInterpolationType 4
---@field Sinusoidal inkanimInterpolationType 5
---@field Exponential inkanimInterpolationType 6
---@field Elastic inkanimInterpolationType 7
---@field Circular inkanimInterpolationType 8
---@field Back inkanimInterpolationType 9
inkanimInterpolationType = {}

---@class inkanimLoopType
---@field None inkanimLoopType 0
---@field Cycle inkanimLoopType 1
---@field PingPong inkanimLoopType 2
inkanimLoopType = {}

---@class inkanimPropertyType
---@field Size inkanimPropertyType 0
---@field Color inkanimPropertyType 1
---@field Margin inkanimPropertyType 2
---@field Padding inkanimPropertyType 3
---@field Transparency inkanimPropertyType 4
---@field Rotation inkanimPropertyType 5
inkanimPropertyType = {}

---@class inputContextType
---@field Action inputContextType 0
---@field RPG inputContextType 1
inputContextType = {}

---@class inputEInputDevice
---@field INVALID inputEInputDevice 0
---@field KBD_MOUSE inputEInputDevice 1
---@field ORBIS inputEInputDevice 2
---@field DURANGO inputEInputDevice 3
---@field STEAM inputEInputDevice 4
---@field XINPUT_PAD inputEInputDevice 5
---@field STADIA inputEInputDevice 6
---@field NINTENDO_SWITCH inputEInputDevice 7
---@field EID_COUNT inputEInputDevice 10
inputEInputDevice = {}

---@class locHolocallActorMode
---@field Default locHolocallActorMode 0
---@field ActorUsesHolocall locHolocallActorMode 1
---@field ActorDoesntUseHolocall locHolocallActorMode 2
locHolocallActorMode = {}

---@class locVoiceTagGender
---@field Undefined locVoiceTagGender 0
---@field Male locVoiceTagGender 1
---@field Female locVoiceTagGender 2
locVoiceTagGender = {}

---@class locVoiceoverContext
---@field Vo_Context_Quest locVoiceoverContext 0
---@field Vo_Context_Community locVoiceoverContext 1
---@field Vo_Context_Combat locVoiceoverContext 2
---@field Vo_Context_Minor_Activity locVoiceoverContext 3
---@field Default_Vo_Context locVoiceoverContext 5
locVoiceoverContext = {}

---@class locVoiceoverExpression
---@field Vo_Expression_Spoken locVoiceoverExpression 0
---@field Vo_Expression_Phone locVoiceoverExpression 1
---@field Vo_Expression_InnerDialog locVoiceoverExpression 2
---@field Vo_Expression_Loudspeaker_Room locVoiceoverExpression 3
---@field Vo_Expression_Loudspeaker_Street locVoiceoverExpression 4
---@field Vo_Expression_Loudspeaker_City locVoiceoverExpression 5
---@field Vo_Expression_Radio locVoiceoverExpression 6
---@field Vo_Expression_GlobalTV locVoiceoverExpression 7
---@field Vo_Experession_Cb_Radio locVoiceoverExpression 8
---@field Vo_Expression_Cyberspace locVoiceoverExpression 9
---@field Vo_Expression_Possessed locVoiceoverExpression 10
---@field Vo_Expression_Helmet locVoiceoverExpression 11
locVoiceoverExpression = {}

---@class meleeMoveDirection
---@field Forward meleeMoveDirection 0
---@field Right meleeMoveDirection 1
---@field Back meleeMoveDirection 2
---@field Left meleeMoveDirection 3
meleeMoveDirection = {}

---@class meleeQueuedAttack
---@field Block meleeQueuedAttack 0
---@field Combo meleeQueuedAttack 1
---@field Crouch meleeQueuedAttack 2
---@field Final meleeQueuedAttack 3
---@field Jump meleeQueuedAttack 4
---@field Safe meleeQueuedAttack 5
---@field Sprint meleeQueuedAttack 6
---@field Strong meleeQueuedAttack 7
---@field Throw meleeQueuedAttack 8
meleeQueuedAttack = {}

---@class moveCirclingDirection
---@field None moveCirclingDirection 0
---@field Left moveCirclingDirection 1
---@field Right moveCirclingDirection 2
moveCirclingDirection = {}

---@class moveExplorationType
---@field None moveExplorationType 0
---@field Ladder moveExplorationType 1
---@field Jump moveExplorationType 2
---@field Climb moveExplorationType 3
---@field Vault moveExplorationType 4
---@field ChargedJump moveExplorationType 5
---@field ThrusterJump moveExplorationType 6
moveExplorationType = {}

---@class moveLineOfSight
---@field None moveLineOfSight 0
---@field Keep moveLineOfSight 1
---@field Avoid moveLineOfSight 2
moveLineOfSight = {}

---@class moveLocomotionAction
---@field Undefined moveLocomotionAction 0
---@field Exploration moveLocomotionAction 1
---@field Idle moveLocomotionAction 2
---@field IdleTurn moveLocomotionAction 3
---@field Reposition moveLocomotionAction 4
---@field Start moveLocomotionAction 5
---@field Move moveLocomotionAction 6
---@field Stop moveLocomotionAction 7
moveLocomotionAction = {}

---@class moveMovementOrientationType
---@field NotSet moveMovementOrientationType 0
---@field Forward moveMovementOrientationType 1
---@field Backward moveMovementOrientationType 2
---@field Left moveMovementOrientationType 3
---@field Right moveMovementOrientationType 4
moveMovementOrientationType = {}

---@class moveMovementType
---@field Walk moveMovementType 0
---@field Run moveMovementType 1
---@field Sprint moveMovementType 2
---@field Strafe moveMovementType 3
---@field Stand moveMovementType 4
moveMovementType = {}

---@class moveSecureFootingFailureReason
---@field Invalid moveSecureFootingFailureReason 0
---@field Filter moveSecureFootingFailureReason 1
---@field SimulationType moveSecureFootingFailureReason 2
---@field Ground moveSecureFootingFailureReason 3
moveSecureFootingFailureReason = {}

---@class moveSecureFootingFailureType
---@field Invalid moveSecureFootingFailureType 0
---@field Edge moveSecureFootingFailureType 1
---@field Slope moveSecureFootingFailureType 2
moveSecureFootingFailureType = {}

---@class navLocomotionPathSegmentTypes
---@field Invalid navLocomotionPathSegmentTypes 0
---@field Spline navLocomotionPathSegmentTypes 1
---@field OffMeshLink navLocomotionPathSegmentTypes 2
navLocomotionPathSegmentTypes = {}

---@class navNaviPositionType
---@field None navNaviPositionType 0
---@field Normal navNaviPositionType 1
---@field Projected navNaviPositionType 2
navNaviPositionType = {}

---@class operationsMode
---@field PLAYER operationsMode 0
---@field FLATHEAD operationsMode 1
---@field TOOLBOX operationsMode 2
operationsMode = {}

---@class panzerBootupUI
---@field UnbootedIdle panzerBootupUI 0
---@field BootingAttempt panzerBootupUI 1
---@field BootingSuccess panzerBootupUI 2
---@field Loop panzerBootupUI 3
panzerBootupUI = {}

---@class physicsFilterDataSource
---@field Parent physicsFilterDataSource 0
---@field Collider physicsFilterDataSource 1
---@field Component physicsFilterDataSource 0
---@field Body physicsFilterDataSource 1
physicsFilterDataSource = {}

---@class physicsMaterialFriction
---@field Enabled physicsMaterialFriction 0
---@field DisabledStrong physicsMaterialFriction 1
---@field Disabled physicsMaterialFriction 2
physicsMaterialFriction = {}

---@class physicsMaterialTagAIVisibility
---@field None physicsMaterialTagAIVisibility 0
---@field SemiTransparent physicsMaterialTagAIVisibility 1
---@field Transparent physicsMaterialTagAIVisibility 2
physicsMaterialTagAIVisibility = {}

---@class physicsMaterialTagProjectilePenetration
---@field TechOnly physicsMaterialTagProjectilePenetration 0
---@field Any physicsMaterialTagProjectilePenetration 1
---@field Medium physicsMaterialTagProjectilePenetration 2
---@field Heavy physicsMaterialTagProjectilePenetration 3
---@field Never physicsMaterialTagProjectilePenetration 4
physicsMaterialTagProjectilePenetration = {}

---@class physicsMaterialTagType
---@field AIVisibility physicsMaterialTagType 0
---@field PlayerVisibility physicsMaterialTagType 1
---@field ProjectilePenetration physicsMaterialTagType 2
---@field VehicleTraction physicsMaterialTagType 3
physicsMaterialTagType = {}

---@class physicsMaterialTagVehicleTraction
---@field Default physicsMaterialTagVehicleTraction 0
---@field Gravel physicsMaterialTagVehicleTraction 1
physicsMaterialTagVehicleTraction = {}

---@class physicsMaterialTagVisibility
---@field None physicsMaterialTagVisibility 0
---@field SemiTransparent physicsMaterialTagVisibility 1
---@field Transparent physicsMaterialTagVisibility 2
---@field Ignore physicsMaterialTagVisibility 3
physicsMaterialTagVisibility = {}

---@class physicsPhysicalSystemOwner
---@field Unknown physicsPhysicalSystemOwner 0
---@field BakedDestructionNode physicsPhysicalSystemOwner 1
---@field ClothMeshNode physicsPhysicalSystemOwner 2
---@field CollisionAreaNode physicsPhysicalSystemOwner 3
---@field DecorationMeshNode physicsPhysicalSystemOwner 4
---@field DynamicMeshNode physicsPhysicalSystemOwner 5
---@field InstancedDestructibleNode physicsPhysicalSystemOwner 6
---@field PhysicalDestructionNode physicsPhysicalSystemOwner 7
---@field PhysicalTriggerNode physicsPhysicalSystemOwner 8
---@field StaticMeshNode physicsPhysicalSystemOwner 9
---@field TerrainCollisionNode physicsPhysicalSystemOwner 10
---@field WaterPatchNode physicsPhysicalSystemOwner 11
---@field WorldCollisionNode physicsPhysicalSystemOwner 12
---@field BakedDestructionComponent physicsPhysicalSystemOwner 13
---@field ClothComponent physicsPhysicalSystemOwner 14
---@field ColliderComponent physicsPhysicalSystemOwner 15
---@field PhysicalDestructionComponent physicsPhysicalSystemOwner 16
---@field PhysicalMeshComponent physicsPhysicalSystemOwner 17
---@field PhysicalSkinnedMeshComponent physicsPhysicalSystemOwner 18
---@field PhysicalTriggerComponent physicsPhysicalSystemOwner 19
---@field SimpleColliderComponent physicsPhysicalSystemOwner 20
---@field SkinnedClothComponent physicsPhysicalSystemOwner 21
---@field StateMachineComponent physicsPhysicalSystemOwner 22
---@field VehicleChassisComponent physicsPhysicalSystemOwner 23
---@field PhysicalParticleSystem physicsPhysicalSystemOwner 24
---@field PhotoModeSystem physicsPhysicalSystemOwner 25
---@field RagdollBinder physicsPhysicalSystemOwner 26
---@field FoliageDestruction physicsPhysicalSystemOwner 27
---@field EntityProxy physicsPhysicalSystemOwner 28
physicsPhysicalSystemOwner = {}

---@class physicsPhysicsJointAxis
---@field AxisX physicsPhysicsJointAxis 0
---@field AxisY physicsPhysicsJointAxis 1
---@field AxisZ physicsPhysicsJointAxis 2
---@field Twist physicsPhysicsJointAxis 3
---@field Swing1 physicsPhysicsJointAxis 4
---@field Swing2 physicsPhysicsJointAxis 5
physicsPhysicsJointAxis = {}

---@class physicsPhysicsJointDriveType
---@field AxisX physicsPhysicsJointDriveType 0
---@field AxisY physicsPhysicsJointDriveType 1
---@field AxisZ physicsPhysicsJointDriveType 2
---@field Swing physicsPhysicsJointDriveType 3
---@field Twist physicsPhysicsJointDriveType 4
---@field SLERP physicsPhysicsJointDriveType 5
physicsPhysicsJointDriveType = {}

---@class physicsPhysicsJointMotion
---@field Locked physicsPhysicsJointMotion 0
---@field Limited physicsPhysicsJointMotion 1
---@field Free physicsPhysicsJointMotion 2
physicsPhysicsJointMotion = {}

---@class physicsProxyType
---@field Invalid physicsProxyType 0
---@field PhysicalSystem physicsProxyType 1
---@field CharacterController physicsProxyType 2
---@field Destruction physicsProxyType 3
---@field ParticleSystem physicsProxyType 4
---@field Trigger physicsProxyType 5
---@field Cloth physicsProxyType 6
---@field WorldCollision physicsProxyType 7
---@field Terrain physicsProxyType 8
---@field SimpleCollider physicsProxyType 9
---@field AggregateSystem physicsProxyType 10
---@field CharacterObstacle physicsProxyType 11
---@field Ragdoll physicsProxyType 12
---@field FoliageDestruction physicsProxyType 13
physicsProxyType = {}

---@class physicsQueryUseCase
---@field Default physicsQueryUseCase 0
---@field ActionAnimation physicsQueryUseCase 1
---@field AI physicsQueryUseCase 2
---@field AnimationComponent physicsQueryUseCase 3
---@field Audio physicsQueryUseCase 4
---@field AudioHedgehog physicsQueryUseCase 5
---@field Components physicsQueryUseCase 6
---@field Debug physicsQueryUseCase 7
---@field Gameplay physicsQueryUseCase 8
---@field GeomDescription physicsQueryUseCase 9
---@field LineOfSightTests physicsQueryUseCase 10
---@field Navigation physicsQueryUseCase 11
---@field Nodes physicsQueryUseCase 12
---@field Ragdoll physicsQueryUseCase 13
---@field Scripts physicsQueryUseCase 14
---@field VehicleAI physicsQueryUseCase 15
---@field Vehicles physicsQueryUseCase 16
---@field VehicleChassis physicsQueryUseCase 17
---@field VehiclesCrowd physicsQueryUseCase 18
---@field VehicleWheel physicsQueryUseCase 19
---@field VehicleStreamingHack physicsQueryUseCase 20
---@field VehicleWater physicsQueryUseCase 21
---@field WorldUI physicsQueryUseCase 22
---@field GameEffects physicsQueryUseCase 23
---@field GameProjectiles physicsQueryUseCase 24
physicsQueryUseCase = {}

---@class physicsRagdollShapeType
---@field CAPSULE physicsRagdollShapeType 0
---@field BOX physicsRagdollShapeType 1
---@field SPHERE physicsRagdollShapeType 2
physicsRagdollShapeType = {}

---@class physicsShapeType
---@field Box physicsShapeType 0
---@field Sphere physicsShapeType 1
---@field Capsule physicsShapeType 2
---@field ConvexMesh physicsShapeType 3
---@field TriangleMesh physicsShapeType 4
---@field Invalid physicsShapeType 6
physicsShapeType = {}

---@class physicsSimulationType
---@field Static physicsSimulationType 0
---@field Dynamic physicsSimulationType 1
---@field Kinematic physicsSimulationType 2
---@field Invalid physicsSimulationType 3
physicsSimulationType = {}

---@class physicsStateValue
---@field Position physicsStateValue 1
---@field Rotation physicsStateValue 2
---@field Transform physicsStateValue 3
---@field LinearVelocity physicsStateValue 4
---@field AngularVelocity physicsStateValue 5
---@field LinearSpeed physicsStateValue 6
---@field TouchesGround physicsStateValue 10
---@field TouchesWalls physicsStateValue 11
---@field ImpulseAccumulator physicsStateValue 12
---@field IsSleeping physicsStateValue 13
---@field Mass physicsStateValue 16
---@field Volume physicsStateValue 18
---@field IsSimulated physicsStateValue 20
---@field IsKinematic physicsStateValue 21
---@field TimeDeltaOverride physicsStateValue 27
---@field SimulationFilter physicsStateValue 32
---@field Radius physicsStateValue 30
physicsStateValue = {}

---@class physicsStaticCollisionShapeCategory
---@field Interior physicsStaticCollisionShapeCategory 0
---@field Exterior physicsStaticCollisionShapeCategory 1
---@field Architecture physicsStaticCollisionShapeCategory 2
---@field Decoration physicsStaticCollisionShapeCategory 3
---@field Other physicsStaticCollisionShapeCategory 4
physicsStaticCollisionShapeCategory = {}

---@class populationSpawnerObjectCtrlAction
---@field Undefined populationSpawnerObjectCtrlAction 0
---@field Activate populationSpawnerObjectCtrlAction 1
---@field Deactivate populationSpawnerObjectCtrlAction 2
---@field Reactivate populationSpawnerObjectCtrlAction 3
---@field ResetKillCount populationSpawnerObjectCtrlAction 4
---@field Spawn populationSpawnerObjectCtrlAction 1
---@field Despawn populationSpawnerObjectCtrlAction 2
---@field Respawn populationSpawnerObjectCtrlAction 3
populationSpawnerObjectCtrlAction = {}

---@class questAttachmentOffsetMode
---@field UseRealOffset questAttachmentOffsetMode 0
---@field UseCustomOffset questAttachmentOffsetMode 1
questAttachmentOffsetMode = {}

---@class questAudioEventPrefetchMode
---@field AddEventPrefetch questAudioEventPrefetchMode 0
---@field RemoveEventPrefetch questAudioEventPrefetchMode 1
questAudioEventPrefetchMode = {}

---@class questAvailableVehicleType
---@field AnyCar questAvailableVehicleType 0
---@field AnyMotorcycle questAvailableVehicleType 1
---@field AnyVehicle questAvailableVehicleType 2
---@field SpecificVehicle questAvailableVehicleType 3
questAvailableVehicleType = {}

---@class questBehindInteractionEventType
---@field Undefined questBehindInteractionEventType 0
---@field StartedBeingBehind questBehindInteractionEventType 1
---@field StoppedBeingBehind questBehindInteractionEventType 2
---@field IsBehind questBehindInteractionEventType 3
---@field IsNotBehind questBehindInteractionEventType 4
questBehindInteractionEventType = {}

---@class questBlockAction
---@field Block questBlockAction 0
---@field Unblock questBlockAction 1
---@field UnblockAll questBlockAction 2
questBlockAction = {}

---@class questBriefingSequencePlayerFunction
---@field StartSequence questBriefingSequencePlayerFunction 0
---@field ChangeSequence questBriefingSequencePlayerFunction 1
---@field FinishSequence questBriefingSequencePlayerFunction 2
questBriefingSequencePlayerFunction = {}

---@class questBriefingType
---@field Fullscreen questBriefingType 0
---@field Hud questBriefingType 1
questBriefingType = {}

---@class questCameraParallaxSpace
---@field Trajectory questCameraParallaxSpace 0
---@field Camera questCameraParallaxSpace 1
---@field Chest questCameraParallaxSpace 2
questCameraParallaxSpace = {}

---@class questCameraPlanesPreset
---@field Undefined questCameraPlanesPreset 0
---@field VeryNear questCameraPlanesPreset 1
---@field Near questCameraPlanesPreset 2
---@field Normal questCameraPlanesPreset 3
questCameraPlanesPreset = {}

---@class questCharacterHitEventType
---@field Bullet questCharacterHitEventType 0
---@field Explosion questCharacterHitEventType 1
---@field Melee questCharacterHitEventType 2
---@field Other questCharacterHitEventType 3
questCharacterHitEventType = {}

---@class questCombatNodeFunctions
---@field CombatTarget questCombatNodeFunctions 0
---@field ShootAt questCombatNodeFunctions 1
---@field LookAtTarget questCombatNodeFunctions 2
---@field ThrowGrenade questCombatNodeFunctions 3
---@field UseCover questCombatNodeFunctions 4
---@field SwitchWeapon questCombatNodeFunctions 5
---@field PrimaryWeapon questCombatNodeFunctions 6
---@field SecondaryWeapon questCombatNodeFunctions 7
---@field RestrictMovementToArea questCombatNodeFunctions 8
questCombatNodeFunctions = {}

---@class questCompanionPositions
---@field Behind questCompanionPositions 0
---@field InFront questCompanionPositions 1
questCompanionPositions = {}

---@class questControlCrowdAction
---@field Disable questControlCrowdAction 0
---@field Enable questControlCrowdAction 1
questControlCrowdAction = {}

---@class questCustomStyle
---@field PlacidePhone questCustomStyle 0
---@field VideoCallInterupt questCustomStyle 1
questCustomStyle = {}

---@class questDrillingState
---@field Undefined questDrillingState 0
---@field Started questDrillingState 1
---@field Finished questDrillingState 2
questDrillingState = {}

---@class questEAddRemoveItemType
---@field AddItem questEAddRemoveItemType 0
---@field RemoveByItemID questEAddRemoveItemType 1
---@field RemoveByTag questEAddRemoveItemType 2
---@field RemoveAll questEAddRemoveItemType 3
questEAddRemoveItemType = {}

---@class questEComparisonTypeEquality
---@field Equal questEComparisonTypeEquality 0
---@field NotEqual questEComparisonTypeEquality 1
questEComparisonTypeEquality = {}

---@class questEDebugViewMode
---@field NONE questEDebugViewMode 0
---@field CLAY questEDebugViewMode 1
---@field PURE_GRAY questEDebugViewMode 2
---@field PURE_WHITE questEDebugViewMode 3
---@field SHADOWS questEDebugViewMode 4
---@field BASE_COLOR questEDebugViewMode 5
---@field NORMALS questEDebugViewMode 6
---@field ROUGHNESS questEDebugViewMode 7
---@field METALNESS questEDebugViewMode 8
---@field EMISSIVE questEDebugViewMode 9
---@field MATERIAL_ID questEDebugViewMode 10
---@field WIREFRAME questEDebugViewMode 11
---@field OVERDRAW questEDebugViewMode 12
questEDebugViewMode = {}

---@class questESwitchBehaviourType
---@field First_Fulfilled questESwitchBehaviourType 0
---@field All_Fulfilled questESwitchBehaviourType 1
questESwitchBehaviourType = {}

---@class questETimeDilationOverride
---@field None questETimeDilationOverride 0
---@field Ignore questETimeDilationOverride 1
---@field Inherit questETimeDilationOverride 2
questETimeDilationOverride = {}

---@class questETimeShiftType
---@field ShiftByTime questETimeShiftType 0
---@field ShiftToHour questETimeShiftType 1
questETimeShiftType = {}

---@class questEUIMenuState
---@field Open questEUIMenuState 0
---@field Closed questEUIMenuState 1
questEUIMenuState = {}

---@class questElevator_ManageNPCAttachment_NodeTypeParamsAction
---@field Attach questElevator_ManageNPCAttachment_NodeTypeParamsAction 0
---@field Detach questElevator_ManageNPCAttachment_NodeTypeParamsAction 1
questElevator_ManageNPCAttachment_NodeTypeParamsAction = {}

---@class questExitType
---@field Terminating questExitType 0
---@field NonTerminating questExitType 1
questExitType = {}

---@class questGameplayRestrictionAction
---@field AddRestriction questGameplayRestrictionAction 0
---@field RemoveRestriction questGameplayRestrictionAction 1
---@field RemoveAllRestrictions questGameplayRestrictionAction 2
questGameplayRestrictionAction = {}

---@class questImpulseMagnitude
---@field Any questImpulseMagnitude 0
---@field Low questImpulseMagnitude 1
---@field Medium questImpulseMagnitude 2
---@field High questImpulseMagnitude 3
questImpulseMagnitude = {}

---@class questInjectLootOperationType
---@field Inject questInjectLootOperationType 0
---@field Remove questInjectLootOperationType 1
questInjectLootOperationType = {}

---@class questInputDevice
---@field Undefined questInputDevice 0
---@field KeyboardMouse questInputDevice 1
---@field XBoxGamepad questInputDevice 2
---@field PS4Gamepad questInputDevice 3
---@field StadiaGamepad questInputDevice 4
---@field NintendoGamepad questInputDevice 5
questInputDevice = {}

---@class questJournalAlignmentEventType
---@field Left questJournalAlignmentEventType 0
---@field Center questJournalAlignmentEventType 1
---@field Right questJournalAlignmentEventType 2
questJournalAlignmentEventType = {}

---@class questJournalSizeEventType
---@field Maximize questJournalSizeEventType 0
---@field Minimize questJournalSizeEventType 1
questJournalSizeEventType = {}

---@class questLanguageMode
---@field Undefined questLanguageMode 0
---@field VoLang questLanguageMode 1
---@field SubsLang questLanguageMode 2
---@field TextLang questLanguageMode 3
questLanguageMode = {}

---@class questLocationAction
---@field Entered questLocationAction 0
---@field Exited questLocationAction 1
questLocationAction = {}

---@class questLogicalOperation
---@field AND questLogicalOperation 0
---@field OR questLogicalOperation 1
---@field XOR questLogicalOperation 2
---@field NAND questLogicalOperation 3
---@field NOR questLogicalOperation 4
---@field NXOR questLogicalOperation 5
questLogicalOperation = {}

---@class questLookAtDrivenTurnsMode
---@field Start questLookAtDrivenTurnsMode 0
---@field Pause questLookAtDrivenTurnsMode 1
---@field Resume questLookAtDrivenTurnsMode 2
---@field Stop questLookAtDrivenTurnsMode 3
---@field ForceStop questLookAtDrivenTurnsMode 4
questLookAtDrivenTurnsMode = {}

---@class questLootTokenState
---@field Enabled questLootTokenState 0
---@field Disabled questLootTokenState 1
---@field Sealed questLootTokenState 2
---@field Unsealed questLootTokenState 3
questLootTokenState = {}

---@class questMountConditionType
---@field OnMount questMountConditionType 0
---@field OnUnmount questMountConditionType 1
questMountConditionType = {}

---@class questMountVehicleOrigin
---@field Any questMountVehicleOrigin 0
---@field NotStolen questMountVehicleOrigin 1
---@field Stolen questMountVehicleOrigin 2
questMountVehicleOrigin = {}

---@class questMountVehicleType
---@field Any questMountVehicleType 0
---@field Car questMountVehicleType 1
---@field Motorcycle questMountVehicleType 2
questMountVehicleType = {}

---@class questMoveOnSplineType
---@field Simple questMoveOnSplineType 0
---@field Anim questMoveOnSplineType 1
---@field WithCompanion questMoveOnSplineType 2
questMoveOnSplineType = {}

---@class questMoveType
---@field MoveOnSpline questMoveType 0
---@field MoveTo questMoveType 1
---@field RotateTo questMoveType 2
---@field Patrol questMoveType 3
---@field Follow questMoveType 4
questMoveType = {}

---@class questMultiplayerAIDirectorFunction
---@field SetStatus questMultiplayerAIDirectorFunction 0
---@field SetCurrentPath questMultiplayerAIDirectorFunction 1
---@field OverrideScheduleEntry questMultiplayerAIDirectorFunction 2
---@field SetCurrentShedule questMultiplayerAIDirectorFunction 3
questMultiplayerAIDirectorFunction = {}

---@class questMultiplayerAIDirectorStatus
---@field Enabled questMultiplayerAIDirectorStatus 0
---@field Disabled questMultiplayerAIDirectorStatus 1
questMultiplayerAIDirectorStatus = {}

---@class questMultiplayerHeistState
---@field Invalid questMultiplayerHeistState 0
---@field Failure questMultiplayerHeistState 1
---@field Victory questMultiplayerHeistState 2
questMultiplayerHeistState = {}

---@class questNodeType
---@field Equip questNodeType 0
---@field Unequip questNodeType 1
questNodeType = {}

---@class questObjectInspectEventType
---@field Undefined questObjectInspectEventType 0
---@field Started questObjectInspectEventType 1
---@field Finished questObjectInspectEventType 2
questObjectInspectEventType = {}

---@class questObjectInteractionEventType
---@field Undefined questObjectInteractionEventType 0
---@field Entered questObjectInteractionEventType 1
---@field Exited questObjectInteractionEventType 2
---@field Executed questObjectInteractionEventType 3
questObjectInteractionEventType = {}

---@class questObjectScanEventType
---@field Undefined questObjectScanEventType 0
---@field Started questObjectScanEventType 1
---@field Finished questObjectScanEventType 2
questObjectScanEventType = {}

---@class questPhaseNodeType
---@field Quest questPhaseNodeType 0
---@field OpenWorld questPhaseNodeType 1
---@field Combat questPhaseNodeType 2
---@field Audio questPhaseNodeType 3
questPhaseNodeType = {}

---@class questPhoneCallMode
---@field Undefined questPhoneCallMode 0
---@field Audio questPhoneCallMode 1
---@field Video questPhoneCallMode 2
questPhoneCallMode = {}

---@class questPhoneCallPhase
---@field Undefined questPhoneCallPhase 0
---@field IncomingCall questPhoneCallPhase 1
---@field StartCall questPhoneCallPhase 2
---@field EndCall questPhoneCallPhase 3
questPhoneCallPhase = {}

---@class questPhoneStatus
---@field Available questPhoneStatus 0
---@field NotAvailable questPhoneStatus 1
---@field Busy questPhoneStatus 2
---@field Minimized questPhoneStatus 3
questPhoneStatus = {}

---@class questPhoneTalkingState
---@field Ended questPhoneTalkingState 0
---@field Initializing questPhoneTalkingState 1
---@field Talking questPhoneTalkingState 2
---@field Rejected questPhoneTalkingState 3
questPhoneTalkingState = {}

---@class questPlatform
---@field PC questPlatform 0
---@field Console questPlatform 1
---@field LastGenConsole questPlatform 2
---@field CurrGenConsole questPlatform 3
questPlatform = {}

---@class questProximityProgressBarAction
---@field Activated questProximityProgressBarAction 0
---@field Inactivated questProximityProgressBarAction 1
---@field Completed questProximityProgressBarAction 2
---@field WentOutOfRange questProximityProgressBarAction 3
questProximityProgressBarAction = {}

---@class questProximityProgressBarOrientation
---@field Undefined questProximityProgressBarOrientation 0
---@field InRange questProximityProgressBarOrientation 1
---@field OutOfRange questProximityProgressBarOrientation 2
questProximityProgressBarOrientation = {}

---@class questProximityProgressBarState
---@field None questProximityProgressBarState 0
---@field Active questProximityProgressBarState 1
---@field Inactive questProximityProgressBarState 2
---@field Complete questProximityProgressBarState 3
questProximityProgressBarState = {}

---@class questQuestContentType
---@field Fixer questQuestContentType 0
---@field MainQuest questQuestContentType 1
---@field SideQuest_MainPath questQuestContentType 2
---@field SideQuest_Romance questQuestContentType 3
---@field SideQuest_Standalone questQuestContentType 4
---@field MinorQuestAndSts questQuestContentType 5
questQuestContentType = {}

---@class questQuickItemsSet
---@field Q001_Kereznikov_Heal_Phone questQuickItemsSet 0
---@field Q003_All questQuickItemsSet 1
questQuickItemsSet = {}

---@class questRandomizerMode
---@field Random questRandomizerMode 0
---@field IgnoreLastUsed questRandomizerMode 1
---@field IgnoreAllUsed questRandomizerMode 2
questRandomizerMode = {}

---@class questScanningState
---@field NotScanned questScanningState 0
---@field Scanned questScanningState 1
questScanningState = {}

---@class questSceneConditionType
---@field Undefined questSceneConditionType 0
---@field IsInside questSceneConditionType 1
---@field IsOutside questSceneConditionType 2
---@field Entered questSceneConditionType 3
---@field Exited questSceneConditionType 4
questSceneConditionType = {}

---@class questSetDestructionStateAction
---@field Undefined questSetDestructionStateAction 0
---@field Trigger questSetDestructionStateAction 1
questSetDestructionStateAction = {}

---@class questSocketType
---@field Undefined questSocketType 0
---@field Input questSocketType 1
---@field Output questSocketType 2
---@field CutSource questSocketType 3
---@field CutDestination questSocketType 4
questSocketType = {}

---@class questSpawnedVehicleType
---@field EntityReferenced questSpawnedVehicleType 0
---@field AnyCar questSpawnedVehicleType 1
---@field AnyMotorcycle questSpawnedVehicleType 2
---@field SpecificVehicle questSpawnedVehicleType 3
questSpawnedVehicleType = {}

---@class questStorage
---@field Slow questStorage 0
---@field Fast questStorage 1
questStorage = {}

---@class questSwitchWeaponModes
---@field PrimaryWeapon questSwitchWeaponModes 0
---@field SecondaryWeapon questSwitchWeaponModes 1
questSwitchWeaponModes = {}

---@class questTriggerConditionType
---@field Undefined questTriggerConditionType 0
---@field Entered questTriggerConditionType 1
---@field Exited questTriggerConditionType 2
---@field IsInside questTriggerConditionType 3
---@field IsOutside questTriggerConditionType 4
---@field AllInsideMP questTriggerConditionType 5
---@field AllOutsideMP questTriggerConditionType 6
questTriggerConditionType = {}

---@class questTutorialScreenMode
---@field Undefined questTutorialScreenMode 0
---@field Fullscreen questTutorialScreenMode 1
---@field Popup questTutorialScreenMode 2
questTutorialScreenMode = {}

---@class questUIGameContextRequestType
---@field Push questUIGameContextRequestType 0
---@field Pop questUIGameContextRequestType 1
---@field Reset questUIGameContextRequestType 2
questUIGameContextRequestType = {}

---@class questUseWorkspotNodeFunctions
---@field UseWorkspot questUseWorkspotNodeFunctions 0
---@field JumpWorkspot questUseWorkspotNodeFunctions 1
---@field StopWorkspot questUseWorkspotNodeFunctions 2
---@field IdleOnlyMode questUseWorkspotNodeFunctions 3
questUseWorkspotNodeFunctions = {}

---@class questUseWorkspotTier
---@field Tier3 questUseWorkspotTier 0
---@field Tier4 questUseWorkspotTier 1
questUseWorkspotTier = {}

---@class questVehicleCameraPerspective
---@field FPP questVehicleCameraPerspective 1
---@field TPP questVehicleCameraPerspective 0
questVehicleCameraPerspective = {}

---@class questVehicleCameraType
---@field Undefined questVehicleCameraType 0
---@field PuppetFPP questVehicleCameraType 1
---@field TPP questVehicleCameraType 2
---@field DriverFPP questVehicleCameraType 3
---@field FPP questVehicleCameraType 1
questVehicleCameraType = {}

---@class questVehicleCommandType
---@field Move_On_Spline questVehicleCommandType 0
---@field Follow questVehicleCommandType 1
---@field Move_To questVehicleCommandType 2
---@field Racing questVehicleCommandType 3
---@field Join_Traffic questVehicleCommandType 4
questVehicleCommandType = {}

---@class questVehicleWeaponQuestID
---@field Primary questVehicleWeaponQuestID 0
---@field Secondary questVehicleWeaponQuestID 1
---@field Tertiary questVehicleWeaponQuestID 2
---@field Quaternary questVehicleWeaponQuestID 3
---@field Quinary questVehicleWeaponQuestID 4
---@field Senary questVehicleWeaponQuestID 5
---@field Septenary questVehicleWeaponQuestID 6
---@field Octonary questVehicleWeaponQuestID 7
---@field All questVehicleWeaponQuestID 8
questVehicleWeaponQuestID = {}

---@class questVisionModeType
---@field Undefined questVisionModeType 0
---@field FocusMode questVisionModeType 1
---@field EnhancedMode questVisionModeType 2
questVisionModeType = {}

---@class questWeaponUsageType
---@field Shoot questWeaponUsageType 0
---@field Reload questWeaponUsageType 1
questWeaponUsageType = {}

---@class redTaskTextMessageType
---@field Info redTaskTextMessageType 0
---@field Error redTaskTextMessageType 1
redTaskTextMessageType = {}

---@class rendCaptureContextType
---@field SceneGamedef rendCaptureContextType 0
---@field AnimViewer rendCaptureContextType 1
rendCaptureContextType = {}

---@class rendContactShadowReciever
---@field CSR_None rendContactShadowReciever 0
---@field CSR_All rendContactShadowReciever 3
---@field CSR_CharacterOnly rendContactShadowReciever 2
rendContactShadowReciever = {}

---@class rendEParticleSortingMode
---@field PSM_None rendEParticleSortingMode 0
---@field PSM_Billboard rendEParticleSortingMode 1
---@field PSM_Regular rendEParticleSortingMode 2
rendEParticleSortingMode = {}

---@class rendGIGroup
---@field GI_Group0 rendGIGroup 0
---@field GI_Group1 rendGIGroup 1
rendGIGroup = {}

---@class rendGIVolume
---@field GI_Exterior rendGIVolume 0
---@field GI_Interior1 rendGIVolume 1
---@field GI_Interior2 rendGIVolume 2
---@field GI_Interior3 rendGIVolume 3
---@field GI_Interior4 rendGIVolume 4
rendGIVolume = {}

---@class rendLightAttenuation
---@field LA_InverseSquare rendLightAttenuation 0
---@field LA_Linear rendLightAttenuation 1
rendLightAttenuation = {}

---@class rendLightGroup
---@field LG_Group0 rendLightGroup 0
---@field LG_Group1 rendLightGroup 1
---@field LG_Group2 rendLightGroup 2
---@field LG_Group3 rendLightGroup 3
---@field LG_Group4 rendLightGroup 4
---@field LG_Group5 rendLightGroup 5
---@field LG_Group6 rendLightGroup 6
---@field LG_Group7 rendLightGroup 7
rendLightGroup = {}

---@class rendPostFx_ScanningState
---@field Off rendPostFx_ScanningState 0
---@field Scanning rendPostFx_ScanningState 2
---@field Cancelled rendPostFx_ScanningState 3
---@field Complete rendPostFx_ScanningState 4
rendPostFx_ScanningState = {}

---@class rendResolutionMultiplier
---@field X1 rendResolutionMultiplier 1
---@field X2 rendResolutionMultiplier 2
---@field X4 rendResolutionMultiplier 4
rendResolutionMultiplier = {}

---@class rendScreenshotMode
---@field NONE rendScreenshotMode 0
---@field NORMAL rendScreenshotMode 1
---@field LAYERED rendScreenshotMode 3
---@field HIGH_RESOLUTION rendScreenshotMode 4
---@field HIGH_RESOLUTION_LAYERED rendScreenshotMode 5
rendScreenshotMode = {}

---@class rendWindShapeAnchorPointDepth
---@field AP_CENTER rendWindShapeAnchorPointDepth 0
---@field AP_FRONT rendWindShapeAnchorPointDepth 1
---@field AP_BACK rendWindShapeAnchorPointDepth 2
rendWindShapeAnchorPointDepth = {}

---@class rendWindShapeAnchorPointHorz
---@field AP_CENTER rendWindShapeAnchorPointHorz 0
---@field AP_RIGHT rendWindShapeAnchorPointHorz 1
---@field AP_LEFT rendWindShapeAnchorPointHorz 2
rendWindShapeAnchorPointHorz = {}

---@class rendWindShapeAnchorPointVert
---@field AP_CENTER rendWindShapeAnchorPointVert 0
---@field AP_TOP rendWindShapeAnchorPointVert 1
---@field AP_BOTTOM rendWindShapeAnchorPointVert 2
rendWindShapeAnchorPointVert = {}

---@class renddimEPreset
---@field 228x128 renddimEPreset 0
---@field 456x256 renddimEPreset 1
---@field 480x270 renddimEPreset 2
---@field 640x480 renddimEPreset 3
---@field 960x540 renddimEPreset 4
---@field 1280x720 renddimEPreset 5
---@field 1600x900 renddimEPreset 6
---@field 1920x1080 renddimEPreset 7
---@field 2560x1080 renddimEPreset 8
---@field 2560x1440 renddimEPreset 9
---@field 3440x1440 renddimEPreset 11
---@field 3840x1600 renddimEPreset 12
---@field 3840x2160 renddimEPreset 13
---@field 688x388 renddimEPreset 14
---@field 776x436 renddimEPreset 15
---@field Console_Base renddimEPreset 7
---@field Console_Pro_Prospero_Lockhart renddimEPreset 9
---@field Console_Scorpio renddimEPreset 13
---@field Console_Anaconda renddimEPreset 13
renddimEPreset = {}

---@class renderDevEnvProbeView
---@field RADIANCE renderDevEnvProbeView 0
---@field ALBEDO renderDevEnvProbeView 1
---@field NORMAL renderDevEnvProbeView 2
---@field ROUGHNESS renderDevEnvProbeView 3
---@field METALNESS renderDevEnvProbeView 4
---@field EMISSIVE renderDevEnvProbeView 5
---@field SKY_MASK renderDevEnvProbeView 6
renderDevEnvProbeView = {}

---@class renderDevGIProbeView
---@field RADIANCE renderDevGIProbeView 0
---@field SKY_VISIBILITY renderDevGIProbeView 1
---@field ENV_ID renderDevGIProbeView 2
---@field FLAG_0 renderDevGIProbeView 3
---@field FLAG_1 renderDevGIProbeView 4
---@field FLAG_2 renderDevGIProbeView 5
---@field CURRENT_ID renderDevGIProbeView 6
renderDevGIProbeView = {}

---@class renderDevSurfelView
---@field ALBEDO renderDevSurfelView 0
---@field NORMAL renderDevSurfelView 1
---@field SHADOWS renderDevSurfelView 2
---@field CLOSEST_PROBE renderDevSurfelView 3
---@field EMISSIVE renderDevSurfelView 4
---@field LIGHTING renderDevSurfelView 5
---@field BOUNCE renderDevSurfelView 6
---@field INSIDE renderDevSurfelView 7
---@field SHADOW renderDevSurfelView 8
renderDevSurfelView = {}

---@class renderDevTXAADebugMode
---@field TXAA_NoDebug renderDevTXAADebugMode 0
---@field TXAA_ShowHistoryBlendFactor renderDevTXAADebugMode 1
renderDevTXAADebugMode = {}

---@class scnAdditionalSpeakerRole
---@field Full scnAdditionalSpeakerRole 0
---@field OnlyLipsync scnAdditionalSpeakerRole 1
scnAdditionalSpeakerRole = {}

---@class scnAdditionalSpeakerType
---@field Normal scnAdditionalSpeakerType 0
---@field Holocall scnAdditionalSpeakerType 1
scnAdditionalSpeakerType = {}

---@class scnAnimNameType
---@field direct scnAnimNameType 0
---@field reference scnAnimNameType 1
---@field container scnAnimNameType 2
---@field dynamic scnAnimNameType 3
scnAnimNameType = {}

---@class scnAnimationCategory
---@field Body scnAnimationCategory 0
---@field Facial scnAnimationCategory 1
---@field Cyberware scnAnimationCategory 2
scnAnimationCategory = {}

---@class scnAudioFastForwardSupport
---@field MuteDuringFastForward scnAudioFastForwardSupport 1
---@field DontMuteDuringFastForward scnAudioFastForwardSupport 2
scnAudioFastForwardSupport = {}

---@class scnAudioPlaybackDirectionSupportFlag
---@field Forward scnAudioPlaybackDirectionSupportFlag 1
---@field Backward scnAudioPlaybackDirectionSupportFlag 2
scnAudioPlaybackDirectionSupportFlag = {}

---@class scnBraindanceLayer
---@field Visual scnBraindanceLayer 0
---@field Audio scnBraindanceLayer 1
---@field Thermal scnBraindanceLayer 2
scnBraindanceLayer = {}

---@class scnBraindancePerspective
---@field FirstPerson scnBraindancePerspective 0
---@field ThirdPerson scnBraindancePerspective 1
scnBraindancePerspective = {}

---@class scnBraindanceSpeed
---@field Any scnBraindanceSpeed 0
---@field Slow scnBraindanceSpeed 1
---@field Normal scnBraindanceSpeed 2
---@field Fast scnBraindanceSpeed 3
---@field VeryFast scnBraindanceSpeed 4
scnBraindanceSpeed = {}

---@class scnChoiceNodeNsChoiceNodeFlags
---@field IsFocusClue scnChoiceNodeNsChoiceNodeFlags 1
---@field IsValidInteractionFailsafeDisabled scnChoiceNodeNsChoiceNodeFlags 2
scnChoiceNodeNsChoiceNodeFlags = {}

---@class scnChoiceNodeNsMappinLocation
---@field None scnChoiceNodeNsMappinLocation 0
---@field Interaction scnChoiceNodeNsMappinLocation 1
---@field Nameplate scnChoiceNodeNsMappinLocation 2
---@field ObjectDefault scnChoiceNodeNsMappinLocation 4
scnChoiceNodeNsMappinLocation = {}

---@class scnChoiceNodeNsOperationMode
---@field attachToActor scnChoiceNodeNsOperationMode 0
---@field attachToProp scnChoiceNodeNsOperationMode 1
---@field attachToGameObject scnChoiceNodeNsOperationMode 2
---@field attachToScreen scnChoiceNodeNsOperationMode 3
---@field attachToWorld scnChoiceNodeNsOperationMode 4
scnChoiceNodeNsOperationMode = {}

---@class scnChoiceNodeNsSizePreset
---@field small scnChoiceNodeNsSizePreset 0
---@field normal scnChoiceNodeNsSizePreset 1
---@field big scnChoiceNodeNsSizePreset 2
---@field Dialogue scnChoiceNodeNsSizePreset 3
---@field Interaction scnChoiceNodeNsSizePreset 4
---@field Dialogue360 scnChoiceNodeNsSizePreset 5
scnChoiceNodeNsSizePreset = {}

---@class scnChoiceNodeNsTimedAction
---@field appear scnChoiceNodeNsTimedAction 0
---@field disappear scnChoiceNodeNsTimedAction 1
---@field disappearFading scnChoiceNodeNsTimedAction 2
scnChoiceNodeNsTimedAction = {}

---@class scnChoiceNodeNsVisualizerStyle
---@field onScreen scnChoiceNodeNsVisualizerStyle 0
---@field inWorld scnChoiceNodeNsVisualizerStyle 1
scnChoiceNodeNsVisualizerStyle = {}

---@class scnContextualActorName
---@field Player scnContextualActorName 0
---@field VoicesetHolder scnContextualActorName 1
---@field Voice scnContextualActorName 2
---@field SpecificVoicetagHolder scnContextualActorName 3
---@field ContextActorName scnContextualActorName 4
scnContextualActorName = {}

---@class scnDialogLineLanguage
---@field Origin scnDialogLineLanguage 0
---@field Creole scnDialogLineLanguage 1
---@field Japanese scnDialogLineLanguage 2
---@field Arabic scnDialogLineLanguage 4
---@field Russian scnDialogLineLanguage 5
---@field Chinese scnDialogLineLanguage 6
---@field Brasilian scnDialogLineLanguage 7
---@field English scnDialogLineLanguage 8
---@field Korean scnDialogLineLanguage 9
scnDialogLineLanguage = {}

---@class scnDialogLineType
---@field None scnDialogLineType 0
---@field Regular scnDialogLineType 1
---@field Holocall scnDialogLineType 2
---@field SceneComment scnDialogLineType 3
---@field OverHead scnDialogLineType 4
---@field Radio scnDialogLineType 5
---@field GlobalTV scnDialogLineType 6
---@field Invisible scnDialogLineType 7
---@field OverHeadAlwaysVisible scnDialogLineType 9
---@field OwnerlessRegular scnDialogLineType 10
---@field AlwaysCinematicNoSpeaker scnDialogLineType 11
---@field GlobalTVAlwaysVisible scnDialogLineType 12
scnDialogLineType = {}

---@class scnDialogLineVisualStyle
---@field regular scnDialogLineVisualStyle 0
---@field overHead scnDialogLineVisualStyle 1
---@field radio scnDialogLineVisualStyle 2
---@field globalTV scnDialogLineVisualStyle 3
---@field invisible scnDialogLineVisualStyle 4
---@field innerDialog scnDialogLineVisualStyle 5
---@field overHeadAlwaysVisible scnDialogLineVisualStyle 6
---@field alwaysCinematicNoSpeaker scnDialogLineVisualStyle 7
---@field globalTVAlwaysVisible scnDialogLineVisualStyle 8
scnDialogLineVisualStyle = {}

---@class scnDistractedConditionTarget
---@field Anyone scnDistractedConditionTarget 0
---@field Speaker scnDistractedConditionTarget 1
---@field SpeakerOrAddressee scnDistractedConditionTarget 2
scnDistractedConditionTarget = {}

---@class scnEasingType
---@field Linear scnEasingType 0
---@field SinusoidalEaseInOut scnEasingType 1
---@field QuadraticEaseIn scnEasingType 2
---@field QuadraticEaseOut scnEasingType 3
---@field CubicEaseInOut scnEasingType 4
---@field CubicEaseIn scnEasingType 5
---@field CubicEaseOut scnEasingType 6
scnEasingType = {}

---@class scnEndNodeNsType
---@field Terminating scnEndNodeNsType 0
---@field NonTerminating scnEndNodeNsType 1
scnEndNodeNsType = {}

---@class scnEntityAcquisitionPlan
---@field findInContext scnEntityAcquisitionPlan 1
---@field findInWorld scnEntityAcquisitionPlan 2
---@field spawnDespawn scnEntityAcquisitionPlan 3
---@field findInEntity scnEntityAcquisitionPlan 4
---@field spawnSet scnEntityAcquisitionPlan 5
---@field community scnEntityAcquisitionPlan 6
---@field spawner scnEntityAcquisitionPlan 7
---@field findNetworkPlayer scnEntityAcquisitionPlan 9
---@field findInNode scnEntityAcquisitionPlan 8
scnEntityAcquisitionPlan = {}

---@class scnEventType
scnEventType = {}

---@class scnFastForwardMode
---@field Default scnFastForwardMode 0
---@field GameplayReview scnFastForwardMode 1
scnFastForwardMode = {}

---@class scnFastForwardStrategy
---@field automatic scnFastForwardStrategy 0
---@field allow_fully scnFastForwardStrategy 1
---@field block_on_start scnFastForwardStrategy 2
---@field block_on_end scnFastForwardStrategy 3
---@field block_on_start_and_end scnFastForwardStrategy 4
---@field block_fully scnFastForwardStrategy 5
---@field block_on_end_if_activator_matched scnFastForwardStrategy 6
scnFastForwardStrategy = {}

---@class scnInterruptCapability
---@field None scnInterruptCapability 0
---@field Interruptable scnInterruptCapability 1
---@field NotInterruptable scnInterruptCapability 2
scnInterruptCapability = {}

---@class scnInterruptReturnLinesBehavior
---@field Default scnInterruptReturnLinesBehavior 0
---@field Vehicle scnInterruptReturnLinesBehavior 1
---@field Holocall scnInterruptReturnLinesBehavior 2
scnInterruptReturnLinesBehavior = {}

---@class scnInterruptionPhase
---@field WaitForInterruption scnInterruptionPhase 0
---@field WaitForInterrupted scnInterruptionPhase 1
---@field Interrupted scnInterruptionPhase 2
---@field ClearTier scnInterruptionPhase 3
---@field FadeOutLines scnInterruptionPhase 4
---@field InterruptionVoiceset scnInterruptionPhase 5
---@field WaitForReturn scnInterruptionPhase 6
---@field InstallTalkInteraction scnInterruptionPhase 7
---@field WaitForTalkInteraction scnInterruptionPhase 8
---@field ReturnVoiceset scnInterruptionPhase 9
---@field ReturnAnswerVoiceset scnInterruptionPhase 10
---@field ShowLines scnInterruptionPhase 11
---@field SyncTime scnInterruptionPhase 12
---@field RestoreTier scnInterruptionPhase 13
---@field Returned scnInterruptionPhase 14
---@field FadeOutLookAt scnInterruptionPhase 15
---@field FadeInLookAt scnInterruptionPhase 16
---@field InterruptSignal scnInterruptionPhase 17
---@field PostInterruptSignalTimeDelay scnInterruptionPhase 18
---@field ReturnSignal scnInterruptionPhase 19
---@field PostReturnSignalTimeDelay scnInterruptionPhase 20
---@field ProcessTalkInteraction scnInterruptionPhase 21
---@field ClearCommands scnInterruptionPhase 22
scnInterruptionPhase = {}

---@class scnLookAtTargetType
---@field Actor scnLookAtTargetType 0
---@field Prop scnLookAtTargetType 1
scnLookAtTargetType = {}

---@class scnMarkerType
---@field Local scnMarkerType 0
---@field Global scnMarkerType 1
---@field Entity scnMarkerType 2
scnMarkerType = {}

---@class scnOffsetMode
---@field useRealOffset scnOffsetMode 0
---@field useCustomOffset scnOffsetMode 1
scnOffsetMode = {}

---@class scnPlayDirection
---@field Forward scnPlayDirection 0
---@field Backward scnPlayDirection 1
scnPlayDirection = {}

---@class scnPlaySpeed
---@field Pause scnPlaySpeed 0
---@field Slow scnPlaySpeed 1
---@field Normal scnPlaySpeed 2
---@field Fast scnPlaySpeed 3
---@field VeryFast scnPlaySpeed 4
scnPlaySpeed = {}

---@class scnPropOwnershipTransferOptionsType
---@field TransferToWorkspotSystem_Automatic scnPropOwnershipTransferOptionsType 0
---@field TransferToWorkspotSystem_Custom scnPropOwnershipTransferOptionsType 1
---@field DisposeAfterScene scnPropOwnershipTransferOptionsType 2
scnPropOwnershipTransferOptionsType = {}

---@class scnPuppetVehicleState
---@field IdleMounted scnPuppetVehicleState 0
---@field IdleStand scnPuppetVehicleState 1
---@field CombatWindowed scnPuppetVehicleState 2
---@field CombatSeated scnPuppetVehicleState 3
---@field Turret scnPuppetVehicleState 4
---@field GunnerSlot scnPuppetVehicleState 5
scnPuppetVehicleState = {}

---@class scnRandomizerMode
---@field Random scnRandomizerMode 0
---@field IgnoreLastUsed scnRandomizerMode 1
---@field IgnoreAllUsed scnRandomizerMode 2
scnRandomizerMode = {}

---@class scnReminderConditionProcessStep
---@field ReminderA scnReminderConditionProcessStep 0
---@field ReminderB scnReminderConditionProcessStep 1
---@field ReminderC scnReminderConditionProcessStep 2
---@field Looping scnReminderConditionProcessStep 3
scnReminderConditionProcessStep = {}

---@class scnRidActorPlacement
---@field SceneOrigin scnRidActorPlacement 0
---@field Actual scnRidActorPlacement 1
---@field Player scnRidActorPlacement 2
scnRidActorPlacement = {}

---@class scnRootMotionAnimPlacementMode
---@field Blend scnRootMotionAnimPlacementMode 0
---@field TeleportToStart scnRootMotionAnimPlacementMode 1
---@field PlayAtActorPosition scnRootMotionAnimPlacementMode 2
scnRootMotionAnimPlacementMode = {}

---@class scnSceneCategoryTag
---@field voiceset scnSceneCategoryTag 0
---@field mainQuests scnSceneCategoryTag 1
---@field sideQuests scnSceneCategoryTag 2
---@field minorQuests scnSceneCategoryTag 3
---@field otherQuests scnSceneCategoryTag 4
---@field dialoguesQuests scnSceneCategoryTag 5
---@field streetOpenWorld scnSceneCategoryTag 6
---@field vendorsOpenWorld scnSceneCategoryTag 7
---@field dancefloorsOpenWorld scnSceneCategoryTag 8
---@field cityOpenWorld scnSceneCategoryTag 9
---@field chatsOpenWorld scnSceneCategoryTag 10
---@field otherOpenWorld scnSceneCategoryTag 11
---@field holocalls scnSceneCategoryTag 12
---@field other scnSceneCategoryTag 13
scnSceneCategoryTag = {}

---@class scnSceneVersionCheck
---@field OlderOrEqual scnSceneVersionCheck 0
---@field Equal scnSceneVersionCheck 1
scnSceneVersionCheck = {}

---@class scnSectionInternalsActorBehaviorMode
---@field OnlyIfAlive scnSectionInternalsActorBehaviorMode 0
---@field EvenIfDead scnSectionInternalsActorBehaviorMode 1
scnSectionInternalsActorBehaviorMode = {}

---@class scnWorldMarkerType
---@field Tag scnWorldMarkerType 0
---@field NodeRef scnWorldMarkerType 1
scnWorldMarkerType = {}

---@class scnblocLocaleId
---@field db_db scnblocLocaleId 0
---@field pl_pl scnblocLocaleId 1
---@field en_us scnblocLocaleId 2
scnblocLocaleId = {}

---@class scndevEventType
---@field NodeFailed scndevEventType 1
---@field DebugMessage scndevEventType 0
---@field NodeProgressSet scndevEventType 2
scndevEventType = {}

---@class scneventsRidCameraPlacement
---@field SceneOrigin scneventsRidCameraPlacement 0
---@field Actual scneventsRidCameraPlacement 1
---@field Player scneventsRidCameraPlacement 2
scneventsRidCameraPlacement = {}

---@class scneventsUIAnimActionType
---@field Play scneventsUIAnimActionType 0
---@field Update scneventsUIAnimActionType 1
---@field Resume scneventsUIAnimActionType 2
---@field Pause scneventsUIAnimActionType 3
---@field Stop scneventsUIAnimActionType 4
scneventsUIAnimActionType = {}

---@class scneventsVFXActionType
---@field Play scneventsVFXActionType 0
---@field Break scneventsVFXActionType 1
---@field Kill scneventsVFXActionType 2
scneventsVFXActionType = {}

---@class scnfppBlendOverride
---@field Centering scnfppBlendOverride 0
---@field CopyPitch_CenteringYaw scnfppBlendOverride 1
---@field CopyPitch_CopyYaw scnfppBlendOverride 2
---@field Custom_PitchYaw scnfppBlendOverride 3
scnfppBlendOverride = {}

---@class scnfppParallaxSpace
---@field Default scnfppParallaxSpace 0
---@field Camera scnfppParallaxSpace 1
---@field Trajectory scnfppParallaxSpace 2
---@field Chest scnfppParallaxSpace 3
scnfppParallaxSpace = {}

---@class scnlocLocaleId
---@field db_db scnlocLocaleId 0
---@field pl_pl scnlocLocaleId 1
---@field en_us scnlocLocaleId 2
scnlocLocaleId = {}

---@class scnscreenplayItemType
---@field invalid scnscreenplayItemType 0
---@field dialogLine scnscreenplayItemType 1
---@field choiceOption scnscreenplayItemType 2
---@field standaloneComment scnscreenplayItemType 3
scnscreenplayItemType = {}

---@class senseAdditionalTraceType
---@field Knee senseAdditionalTraceType 0
---@field Hip senseAdditionalTraceType 1
---@field Chest senseAdditionalTraceType 2
senseAdditionalTraceType = {}

---@class senseEShapeType
---@field INVALID senseEShapeType -1
---@field BOX senseEShapeType 0
---@field SPHERE senseEShapeType 1
---@field CONE senseEShapeType 2
---@field ANGLE_RANGE senseEShapeType 3
senseEShapeType = {}

---@class senseTracingFreq
---@field Never senseTracingFreq 0
---@field Lowest senseTracingFreq 1
---@field Low senseTracingFreq 2
---@field Medium senseTracingFreq 3
---@field High senseTracingFreq 4
---@field Highest senseTracingFreq 5
senseTracingFreq = {}

---@class servicesCloudSavesQueryStatus
---@field NotFetched servicesCloudSavesQueryStatus 0
---@field FetchedSuccessfully servicesCloudSavesQueryStatus 1
---@field CloudSavesDisabled servicesCloudSavesQueryStatus 2
---@field NotLoggedIn servicesCloudSavesQueryStatus 3
---@field FetchFailed servicesCloudSavesQueryStatus 4
servicesCloudSavesQueryStatus = {}

---@class sharedCommandResult
---@field Success sharedCommandResult 0
---@field NeedOptions sharedCommandResult 1
---@field Fail sharedCommandResult 2
---@field Abort sharedCommandResult 3
sharedCommandResult = {}

---@class sharedMenuItemType
---@field Action sharedMenuItemType 0
---@field Checked sharedMenuItemType 1
---@field Group sharedMenuItemType 2
---@field Separator sharedMenuItemType 3
sharedMenuItemType = {}

---@class telemetryLevelGainReason
---@field Ignore telemetryLevelGainReason 0
---@field Gameplay telemetryLevelGainReason 1
---@field IsDebug telemetryLevelGainReason 2
telemetryLevelGainReason = {}

---@class tempshitMapPinOperation
---@field Undefined tempshitMapPinOperation 0
---@field Add tempshitMapPinOperation 1
---@field Remove tempshitMapPinOperation 2
tempshitMapPinOperation = {}

---@class textHorizontalAlignment
---@field Left textHorizontalAlignment 0
---@field Center textHorizontalAlignment 1
---@field Right textHorizontalAlignment 2
textHorizontalAlignment = {}

---@class textJustificationType
---@field Left textJustificationType 0
---@field Center textJustificationType 1
---@field Right textJustificationType 2
textJustificationType = {}

---@class textLetterCase
---@field OriginalCase textLetterCase 0
---@field UpperCase textLetterCase 1
---@field LowerCase textLetterCase 2
textLetterCase = {}

---@class textOverflowPolicy
---@field None textOverflowPolicy 0
---@field DotsEnd textOverflowPolicy 1
---@field DotsEndLastLine textOverflowPolicy 2
---@field AutoScroll textOverflowPolicy 3
---@field PingPongScroll textOverflowPolicy 4
---@field AdjustToSize textOverflowPolicy 5
textOverflowPolicy = {}

---@class textTextDirection
---@field LeftToRight textTextDirection 0
---@field RightToLeft textTextDirection 1
---@field Mixed textTextDirection 2
textTextDirection = {}

---@class textTextFlowDirection
---@field Auto textTextFlowDirection 0
---@field LeftToRight textTextFlowDirection 1
---@field RightToLeft textTextFlowDirection 2
textTextFlowDirection = {}

---@class textTextShapingMethod
---@field Auto textTextShapingMethod 0
---@field KerningOnly textTextShapingMethod 1
---@field FullShaping textTextShapingMethod 2
textTextShapingMethod = {}

---@class textVerticalAlignment
---@field Top textVerticalAlignment 0
---@field Center textVerticalAlignment 1
---@field Bottom textVerticalAlignment 2
textVerticalAlignment = {}

---@class textWrappingPolicy
---@field Default textWrappingPolicy 0
---@field PerCharacter textWrappingPolicy 1
textWrappingPolicy = {}

---@class toolsMessageSeverity
---@field Success toolsMessageSeverity 0
---@field Info toolsMessageSeverity 1
---@field Warning toolsMessageSeverity 2
---@field Error toolsMessageSeverity 3
toolsMessageSeverity = {}

---@class toolsMessageTokenType
---@field Text toolsMessageTokenType 0
---@field Location toolsMessageTokenType 1
---@field Tag toolsMessageTokenType 2
toolsMessageTokenType = {}

---@class toolsMessageVerbosity
---@field Normal toolsMessageVerbosity 0
---@field Verbose toolsMessageVerbosity 1
toolsMessageVerbosity = {}

---@class vehicleAudioEventAction
---@field OnPlayerDriving vehicleAudioEventAction 0
---@field OnPlayerPassenger vehicleAudioEventAction 1
---@field OnPlayerExitVehicle vehicleAudioEventAction 4
---@field OnPlayerEnterCombat vehicleAudioEventAction 2
---@field OnPlayerExitCombat vehicleAudioEventAction 3
---@field OnPlayerVehicleSummoned vehicleAudioEventAction 5
vehicleAudioEventAction = {}

---@class vehicleBikeCurve
---@field SpeedToTilt vehicleBikeCurve 0
---@field InputToTilt vehicleBikeCurve 1
---@field SpeedToTiltSpeed vehicleBikeCurve 2
vehicleBikeCurve = {}

---@class vehicleCameraPerspective
---@field FPP vehicleCameraPerspective 0
---@field TPPClose vehicleCameraPerspective 1
---@field TPPFar vehicleCameraPerspective 2
vehicleCameraPerspective = {}

---@class vehicleCameraType
---@field FPP vehicleCameraType 0
---@field TPP vehicleCameraType 1
vehicleCameraType = {}

---@class vehicleELightMode
---@field Off vehicleELightMode 0
---@field On vehicleELightMode 1
---@field HighBeams vehicleELightMode 2
vehicleELightMode = {}

---@class vehicleELightType
---@field Head vehicleELightType 1
---@field Brake vehicleELightType 2
---@field LeftBlinker vehicleELightType 4
---@field RightBlinker vehicleELightType 8
---@field Reverse vehicleELightType 16
---@field Interior vehicleELightType 32
---@field Utility vehicleELightType 64
---@field Default vehicleELightType 47
---@field Blinkers vehicleELightType 12
vehicleELightType = {}

---@class vehicleEQuestVehicleDoorState
---@field ForceOpen vehicleEQuestVehicleDoorState 0
---@field ForceClose vehicleEQuestVehicleDoorState 1
---@field OpenAll vehicleEQuestVehicleDoorState 2
---@field CloseAll vehicleEQuestVehicleDoorState 3
---@field ForceLock vehicleEQuestVehicleDoorState 4
---@field ForceUnlock vehicleEQuestVehicleDoorState 5
---@field LockAll vehicleEQuestVehicleDoorState 6
---@field EnableInteraction vehicleEQuestVehicleDoorState 7
---@field DisableInteraction vehicleEQuestVehicleDoorState 8
---@field DisableAllInteractions vehicleEQuestVehicleDoorState 9
---@field ResetInteractions vehicleEQuestVehicleDoorState 10
---@field ResetVehicle vehicleEQuestVehicleDoorState 11
---@field OpenAllRegular vehicleEQuestVehicleDoorState 12
---@field QuestLock vehicleEQuestVehicleDoorState 13
---@field QuestLockAll vehicleEQuestVehicleDoorState 14
---@field Count vehicleEQuestVehicleDoorState 15
---@field Invalid vehicleEQuestVehicleDoorState 16
vehicleEQuestVehicleDoorState = {}

---@class vehicleEQuestVehicleWindowState
---@field ForceOpen vehicleEQuestVehicleWindowState 0
---@field ForceClose vehicleEQuestVehicleWindowState 1
---@field OpenAll vehicleEQuestVehicleWindowState 2
---@field CloseAll vehicleEQuestVehicleWindowState 3
vehicleEQuestVehicleWindowState = {}

---@class vehicleEState
---@field Default vehicleEState 1
---@field On vehicleEState 2
---@field Disabled vehicleEState 3
---@field Destroyed vehicleEState 4
vehicleEState = {}

---@class vehicleESummonedVehicleType
---@field Any vehicleESummonedVehicleType 0
---@field Car vehicleESummonedVehicleType 1
---@field Motorcycle vehicleESummonedVehicleType 2
vehicleESummonedVehicleType = {}

---@class vehicleEVehicleDoor
---@field seat_front_left vehicleEVehicleDoor 0
---@field seat_front_right vehicleEVehicleDoor 1
---@field seat_back_left vehicleEVehicleDoor 2
---@field seat_back_right vehicleEVehicleDoor 3
---@field trunk vehicleEVehicleDoor 4
---@field hood vehicleEVehicleDoor 5
---@field count vehicleEVehicleDoor 6
---@field invalid vehicleEVehicleDoor 7
vehicleEVehicleDoor = {}

---@class vehicleEVehicleSpeedConditionType
---@field CT_EQUAL vehicleEVehicleSpeedConditionType 0
---@field CT_NOT_EQUAL vehicleEVehicleSpeedConditionType 1
---@field CT_GREATER vehicleEVehicleSpeedConditionType 2
---@field CT_GREATER_EQUAL vehicleEVehicleSpeedConditionType 3
---@field CT_LESS vehicleEVehicleSpeedConditionType 4
---@field CT_LESS_EQUAL vehicleEVehicleSpeedConditionType 5
---@field CT_ABS_GREATER vehicleEVehicleSpeedConditionType 6
---@field CT_ABS_GREATER_EQUAL vehicleEVehicleSpeedConditionType 7
---@field CT_ABS_LESS vehicleEVehicleSpeedConditionType 8
---@field CT_ABS_LESS_EQUAL vehicleEVehicleSpeedConditionType 9
vehicleEVehicleSpeedConditionType = {}

---@class vehicleEVehicleWindowState
---@field Closed vehicleEVehicleWindowState 0
---@field Open vehicleEVehicleWindowState 1
vehicleEVehicleWindowState = {}

---@class vehicleExitDirection
---@field NoDirection vehicleExitDirection -1
---@field Left vehicleExitDirection 0
---@field Right vehicleExitDirection 1
---@field Front vehicleExitDirection 2
---@field Back vehicleExitDirection 3
---@field Top vehicleExitDirection 4
vehicleExitDirection = {}

---@class vehicleFormationType
---@field FORMATION_TRIANGLE vehicleFormationType 0
---@field FORMATION_TURTLE vehicleFormationType 1
---@field FORMATION_QUINCUNX vehicleFormationType 2
vehicleFormationType = {}

---@class vehicleGarageState
---@field NoVehiclesAvailable vehicleGarageState 0
---@field SummonAvailable vehicleGarageState 1
---@field SummonDisabled vehicleGarageState 2
vehicleGarageState = {}

---@class vehiclePlayerToAIInterpolationType
---@field PTAIT_INSTANT vehiclePlayerToAIInterpolationType 0
---@field PTAIT_LINEAR vehiclePlayerToAIInterpolationType 1
---@field PTAIT_EASE_IN_QUAD vehiclePlayerToAIInterpolationType 2
---@field PTAIT_EASE_IN_CUBIC vehiclePlayerToAIInterpolationType 3
---@field PTAIT_EASE_OUT_CUBIC vehiclePlayerToAIInterpolationType 4
---@field PTAIT_EASE_IN_OUT_CUBIC vehiclePlayerToAIInterpolationType 5
---@field PTAIT_EASE_IN_QUANTIC vehiclePlayerToAIInterpolationType 6
---@field PTAIT_EASE_IN_SIN vehiclePlayerToAIInterpolationType 7
---@field PTAIT_EASE_OUT_SIN vehiclePlayerToAIInterpolationType 8
---@field PTAIT_EASE_IN_OUT_SIN vehiclePlayerToAIInterpolationType 9
---@field PTAIT_LINEAR_NON_SMOOTHED vehiclePlayerToAIInterpolationType 10
---@field PTAIT_EASE_IN_QUAD_NON_SMOOTHED vehiclePlayerToAIInterpolationType 11
---@field PTAIT_EASE_IN_CUBIC_NON_SMOOTHED vehiclePlayerToAIInterpolationType 12
---@field PTAIT_EASE_OUT_CUBIC_NON_SMOOTHED vehiclePlayerToAIInterpolationType 13
---@field PTAIT_EASE_IN_OUT_CUBIC_NON_SMOOTHED vehiclePlayerToAIInterpolationType 14
---@field PTAIT_EASE_IN_QUANTIC_NON_SMOOTHED vehiclePlayerToAIInterpolationType 15
---@field PTAIT_EASE_IN_SIN_NON_SMOOTHED vehiclePlayerToAIInterpolationType 16
---@field PTAIT_EASE_OUT_SIN_NON_SMOOTHED vehiclePlayerToAIInterpolationType 17
---@field PTAIT_EASE_IN_OUT_SIN_NON_SMOOTHED vehiclePlayerToAIInterpolationType 18
vehiclePlayerToAIInterpolationType = {}

---@class vehicleQuestUIEnable
---@field Gameplay vehicleQuestUIEnable 0
---@field ForceEnable vehicleQuestUIEnable 1
---@field ForceDisable vehicleQuestUIEnable 2
vehicleQuestUIEnable = {}

---@class vehicleQuestWindowDestruction
---@field window_f vehicleQuestWindowDestruction 0
---@field window_fl vehicleQuestWindowDestruction 1
---@field window_fr vehicleQuestWindowDestruction 2
---@field window_bl vehicleQuestWindowDestruction 3
---@field window_br vehicleQuestWindowDestruction 4
---@field window_b vehicleQuestWindowDestruction 5
vehicleQuestWindowDestruction = {}

---@class vehicleRaceUI
---@field PreRaceSetup vehicleRaceUI 0
---@field CountdownStart vehicleRaceUI 1
---@field RaceStart vehicleRaceUI 2
---@field RaceEnd vehicleRaceUI 3
---@field Disable vehicleRaceUI 4
vehicleRaceUI = {}

---@class vehicleSummonFinishState
---@field Arrived vehicleSummonFinishState 0
vehicleSummonFinishState = {}

---@class vehicleSummonState
---@field Idle vehicleSummonState 0
---@field EnRoute vehicleSummonState 1
---@field AlreadySummoned vehicleSummonState 2
---@field PathfindingFailed vehicleSummonState 3
---@field Arrived vehicleSummonState 4
vehicleSummonState = {}

---@class vehicleTPPCameraDistance
---@field Close vehicleTPPCameraDistance 0
---@field Far vehicleTPPCameraDistance 1
vehicleTPPCameraDistance = {}

---@class vehicleTPPCameraHeight
---@field Low vehicleTPPCameraHeight 0
---@field High vehicleTPPCameraHeight 1
vehicleTPPCameraHeight = {}

---@class vehicleVehicleDoorInteractionState
---@field Available vehicleVehicleDoorInteractionState 0
---@field Locked vehicleVehicleDoorInteractionState 1
---@field Disabled vehicleVehicleDoorInteractionState 2
---@field QuestLocked vehicleVehicleDoorInteractionState 3
---@field Reserved vehicleVehicleDoorInteractionState 4
vehicleVehicleDoorInteractionState = {}

---@class vehicleVehicleDoorState
---@field Closed vehicleVehicleDoorState 0
---@field Open vehicleVehicleDoorState 1
---@field Detached vehicleVehicleDoorState 2
vehicleVehicleDoorState = {}

---@class vgEStyleAttributeType
---@field FillColor vgEStyleAttributeType 0
---@field StrokeColor vgEStyleAttributeType 1
---@field StrokeSize vgEStyleAttributeType 2
---@field StrokeMiterLimit vgEStyleAttributeType 3
---@field FontFamily vgEStyleAttributeType 4
---@field FontSize vgEStyleAttributeType 5
vgEStyleAttributeType = {}

---@class visWorldOccluderType
---@field Default visWorldOccluderType 0
---@field None visWorldOccluderType 1
---@field Detail visWorldOccluderType 2
---@field MinorInterior visWorldOccluderType 3
---@field MajorInterior visWorldOccluderType 4
---@field Exterior visWorldOccluderType 5
visWorldOccluderType = {}

---@class workLogicalOperation
---@field AND workLogicalOperation 0
---@field OR workLogicalOperation 1
workLogicalOperation = {}

---@class workPropAttachMethod
---@field BonePosition workPropAttachMethod 0
---@field RelativePosition workPropAttachMethod 1
---@field Custom workPropAttachMethod 2
workPropAttachMethod = {}

---@class workWeaponType
---@field Any workWeaponType 0
---@field Ranged workWeaponType 1
---@field OneHandedRanged workWeaponType 2
---@field AssaultRifle workWeaponType 3
---@field Hammer workWeaponType 5
---@field Handgun workWeaponType 6
---@field HeavyMachineGun workWeaponType 7
---@field Katana workWeaponType 8
---@field Knife workWeaponType 9
---@field LightMachineGun workWeaponType 10
---@field LongBlade workWeaponType 11
---@field Melee workWeaponType 12
---@field OneHandedClub workWeaponType 13
---@field PrecisionRifle workWeaponType 14
---@field Revolver workWeaponType 15
---@field Rifle workWeaponType 16
---@field ShortBlade workWeaponType 17
---@field Shotgun workWeaponType 18
---@field ShotgunDual workWeaponType 19
---@field SniperRifle workWeaponType 20
---@field SubmachineGun workWeaponType 21
---@field TwoHandedClub workWeaponType 22
workWeaponType = {}

---@class workWorkspotDebugMode
---@field VisualLogToogle workWorkspotDebugMode 2
---@field VisualLogOn workWorkspotDebugMode 4
---@field VisualLogOff workWorkspotDebugMode 8
---@field VisualStateToogle workWorkspotDebugMode 16
---@field VisualStateOn workWorkspotDebugMode 32
---@field VisualStateOff workWorkspotDebugMode 64
---@field RecorderOn workWorkspotDebugMode 128
---@field RecorderOff workWorkspotDebugMode 256
---@field PlaybackOn workWorkspotDebugMode 512
---@field PlaybackOff workWorkspotDebugMode 1024
---@field Invalid workWorkspotDebugMode 4096
---@field FunctionalTests workWorkspotDebugMode 8192
workWorkspotDebugMode = {}

---@class workWorkspotLogic
---@field Allow workWorkspotLogic 0
---@field Deny workWorkspotLogic 1
workWorkspotLogic = {}

---@class worldCommunityRegistryItemAreaNodeType
---@field Regular worldCommunityRegistryItemAreaNodeType 0
---@field Streamable worldCommunityRegistryItemAreaNodeType 1
---@field Background worldCommunityRegistryItemAreaNodeType 2
---@field Count worldCommunityRegistryItemAreaNodeType 3
worldCommunityRegistryItemAreaNodeType = {}

---@class worldEClusteringModel
---@field HierarchicalGrid worldEClusteringModel 0
---@field AlwaysLoaded worldEClusteringModel 1
---@field Discard worldEClusteringModel 2
worldEClusteringModel = {}

---@class worldEditablePrefabType
---@field Regular worldEditablePrefabType 0
---@field Decoration worldEditablePrefabType 1
---@field Quest worldEditablePrefabType 2
---@field Building worldEditablePrefabType 3
---@field Road worldEditablePrefabType 4
worldEditablePrefabType = {}

---@class worldFindLaneFilter
---@field None worldFindLaneFilter 0
---@field Road worldFindLaneFilter 1
---@field PatrolRoute worldFindLaneFilter 2
---@field Pavement worldFindLaneFilter 3
worldFindLaneFilter = {}

---@class worldNavigationRequestStatus
---@field OK worldNavigationRequestStatus 0
---@field InvalidStartingPosition worldNavigationRequestStatus 1
---@field InvalidEndPosition worldNavigationRequestStatus 2
---@field OtherError worldNavigationRequestStatus 3
worldNavigationRequestStatus = {}

---@class worldNodeGroupType
---@field RegularGroup worldNodeGroupType 0
---@field PrefabVariant worldNodeGroupType 1
---@field DecorationCell worldNodeGroupType 2
---@field ProxyGroup worldNodeGroupType 3
worldNodeGroupType = {}

---@class worldNodeSocketType
---@field Bidirectional worldNodeSocketType 0
---@field Inward worldNodeSocketType 1
---@field Outward worldNodeSocketType 2
---@field Disabled worldNodeSocketType 3
worldNodeSocketType = {}

---@class worldObjectTag
---@field None worldObjectTag 1701736270
---@field WallInterior worldObjectTag 1231839575
---@field WallExterior worldObjectTag 1164730711
---@field Floor worldObjectTag 1869573190
---@field Stairs worldObjectTag 1936880723
---@field Ladder worldObjectTag 1684300108
---@field Decoration worldObjectTag 1868784964
---@field Discard worldObjectTag 1668507972
---@field Cover worldObjectTag 1920364355
worldObjectTag = {}

---@class worldObjectTagExt
---@field None worldObjectTagExt 1701736270
---@field Default worldObjectTagExt 1634100548
---@field NonClimbable worldObjectTagExt 1651262286
worldObjectTagExt = {}

---@class worldOffMeshConnectionType
---@field Door worldOffMeshConnectionType 0
---@field Ladder worldOffMeshConnectionType 1
---@field Floor worldOffMeshConnectionType 2
---@field Jump worldOffMeshConnectionType 3
---@field Elevator worldOffMeshConnectionType 4
---@field Drone worldOffMeshConnectionType 5
---@field Exploration worldOffMeshConnectionType 6
---@field Custom worldOffMeshConnectionType 7
---@field Blockade worldOffMeshConnectionType 8
worldOffMeshConnectionType = {}

---@class worldPatrolSplinePointTypes
---@field Workspot worldPatrolSplinePointTypes 0
---@field LookAt worldPatrolSplinePointTypes 1
---@field ClearLookAt worldPatrolSplinePointTypes 2
worldPatrolSplinePointTypes = {}

---@class worldPrefabInteriorMapContribution
---@field Auto worldPrefabInteriorMapContribution 0
---@field Include worldPrefabInteriorMapContribution 1
---@field Discard worldPrefabInteriorMapContribution 2
worldPrefabInteriorMapContribution = {}

---@class worldPrefabMinimapContribution
---@field Auto worldPrefabMinimapContribution 0
---@field Include worldPrefabMinimapContribution 1
---@field Discard worldPrefabMinimapContribution 2
worldPrefabMinimapContribution = {}

---@class worldPrefabOwnership
---@field None worldPrefabOwnership 0
---@field Quest worldPrefabOwnership 1
---@field Audio worldPrefabOwnership 2
---@field Environment worldPrefabOwnership 3
---@field FX worldPrefabOwnership 4
---@field LevelDesign worldPrefabOwnership 5
---@field Lighting worldPrefabOwnership 6
---@field OpenWorld worldPrefabOwnership 7
---@field Cinematics worldPrefabOwnership 8
worldPrefabOwnership = {}

---@class worldPrefabProxyMeshOnly
---@field SettingFromResource worldPrefabProxyMeshOnly 0
---@field Enabled worldPrefabProxyMeshOnly 1
---@field Disabled worldPrefabProxyMeshOnly 2
worldPrefabProxyMeshOnly = {}

---@class worldPrefabStreamingImportance
---@field Auto worldPrefabStreamingImportance 0
---@field P1 worldPrefabStreamingImportance 1
---@field P2 worldPrefabStreamingImportance 2
---@field P3 worldPrefabStreamingImportance 3
---@field P4 worldPrefabStreamingImportance 4
---@field P5 worldPrefabStreamingImportance 5
worldPrefabStreamingImportance = {}

---@class worldPrefabStreamingOcclusion
---@field Default worldPrefabStreamingOcclusion 0
---@field Exterior worldPrefabStreamingOcclusion 1
---@field Interior worldPrefabStreamingOcclusion 2
---@field OpenInterior worldPrefabStreamingOcclusion 3
worldPrefabStreamingOcclusion = {}

---@class worldPrefabType
---@field Regular worldPrefabType 0
---@field Area worldPrefabType 1
---@field Generated worldPrefabType 2
---@field Decoration worldPrefabType 3
---@field Quest worldPrefabType 4
---@field Road worldPrefabType 5
---@field Building worldPrefabType 6
---@field Terrain worldPrefabType 7
worldPrefabType = {}

---@class worldProxWindowsType
---@field SkipWindows worldProxWindowsType 0
---@field PropagateWindows worldProxWindowsType 1
---@field BakeLongDistantWindows worldProxWindowsType 2
---@field BakeWindowsToBuffer worldProxWindowsType 3
worldProxWindowsType = {}

---@class worldProxyBBoxSyncOptions
---@field Do_Nothing worldProxyBBoxSyncOptions 0
---@field Pull worldProxyBBoxSyncOptions 1
---@field Pull_And_Delete worldProxyBBoxSyncOptions 2
worldProxyBBoxSyncOptions = {}

---@class worldProxyCoreAxis
---@field X worldProxyCoreAxis 0
---@field Y worldProxyCoreAxis 1
---@field Z worldProxyCoreAxis 2
worldProxyCoreAxis = {}

---@class worldProxyGroupingNormals
---@field Around_Core_Axis worldProxyGroupingNormals 0
---@field Around_All_Axes worldProxyGroupingNormals 1
worldProxyGroupingNormals = {}

---@class worldProxyMeshBuildType
---@field ProxyFromScratch worldProxyMeshBuildType 1
---@field ProxyFromProxy worldProxyMeshBuildType 0
---@field OnlyFromChildProxies worldProxyMeshBuildType 2
worldProxyMeshBuildType = {}

---@class worldProxyMeshDependencyMode
---@field Auto worldProxyMeshDependencyMode 0
---@field Include worldProxyMeshDependencyMode 1
---@field Discard worldProxyMeshDependencyMode 2
worldProxyMeshDependencyMode = {}

---@class worldProxyMeshOutputType
---@field RayScan worldProxyMeshOutputType 0
---@field SurfaceReconstruction worldProxyMeshOutputType 1
---@field LegacyFromVoxels worldProxyMeshOutputType 2
---@field FromCustomMesh worldProxyMeshOutputType 3
---@field FromBoxes worldProxyMeshOutputType 4
---@field FromCollision worldProxyMeshOutputType 5
---@field FromConvexHull worldProxyMeshOutputType 6
---@field BoundsCombine worldProxyMeshOutputType 7
---@field BlobCrowd worldProxyMeshOutputType 8
---@field KeepCurrent worldProxyMeshOutputType 127
worldProxyMeshOutputType = {}

---@class worldProxyMeshTexRes
---@field RES_64 worldProxyMeshTexRes 0
---@field RES_128 worldProxyMeshTexRes 1
---@field RES_256 worldProxyMeshTexRes 2
---@field RES_512 worldProxyMeshTexRes 3
---@field RES_1024 worldProxyMeshTexRes 4
worldProxyMeshTexRes = {}

---@class worldProxyMeshUVType
---@field UvUseExisting worldProxyMeshUVType 0
---@field UvGenerateNew worldProxyMeshUVType 1
worldProxyMeshUVType = {}

---@class worldProxyNormalAngleStepSize
---@field STEP_90 worldProxyNormalAngleStepSize 0
---@field STEP_45 worldProxyNormalAngleStepSize 1
---@field STEP_15 worldProxyNormalAngleStepSize 2
---@field STEP_5 worldProxyNormalAngleStepSize 3
worldProxyNormalAngleStepSize = {}

---@class worldProxySyncNormalSource
---@field From_Groups worldProxySyncNormalSource 0
---@field From_Face_Average worldProxySyncNormalSource 1
worldProxySyncNormalSource = {}

---@class worldQuestPrefabLoadingMode
---@field Disable worldQuestPrefabLoadingMode 0
---@field ForceLoad worldQuestPrefabLoadingMode 1
worldQuestPrefabLoadingMode = {}

---@class worldQuestType
---@field MainQuest worldQuestType 0
---@field SideQuest worldQuestType 1
---@field StreetStory worldQuestType 2
worldQuestType = {}

---@class worldRainIntensity
---@field NoRain worldRainIntensity 0
---@field LightRain worldRainIntensity 1
---@field HeavyRain worldRainIntensity 2
worldRainIntensity = {}

---@class worldRoadMaterial
---@field Concrete worldRoadMaterial 0
---@field ConcreteDestroyed worldRoadMaterial 1
---@field Dirt worldRoadMaterial 2
---@field HardenedDirtDestroyed worldRoadMaterial 3
worldRoadMaterial = {}

---@class worldRotatingMeshNodeAxis
---@field X worldRotatingMeshNodeAxis 0
---@field Y worldRotatingMeshNodeAxis 1
---@field Z worldRotatingMeshNodeAxis 2
worldRotatingMeshNodeAxis = {}

---@class worldSpeedSplineOrientationMarkerType
---@field UseSplineOrientation worldSpeedSplineOrientationMarkerType 0
---@field WorldSpace worldSpeedSplineOrientationMarkerType 1
---@field LocalSpace worldSpeedSplineOrientationMarkerType 2
---@field KeepYawRoll_WorldSpacePitch worldSpeedSplineOrientationMarkerType 3
---@field KeepPitchYaw_WorldSpaceRoll worldSpeedSplineOrientationMarkerType 4
---@field KeepPitchRoll_WorldSpaceYaw worldSpeedSplineOrientationMarkerType 5
---@field KeepYaw_WorldSpacePitchRoll worldSpeedSplineOrientationMarkerType 6
---@field KeepRoll_WorldSpacePitchYaw worldSpeedSplineOrientationMarkerType 7
---@field KeepPitch_WorldSpaceYawRoll worldSpeedSplineOrientationMarkerType 8
worldSpeedSplineOrientationMarkerType = {}

---@class worldStreamingSectorCategory
---@field Exterior worldStreamingSectorCategory 0
---@field Interior worldStreamingSectorCategory 1
---@field Quest worldStreamingSectorCategory 2
---@field Navigation worldStreamingSectorCategory 3
---@field AlwaysLoaded worldStreamingSectorCategory 4
---@field Unknown worldStreamingSectorCategory -1
worldStreamingSectorCategory = {}

---@class worldStreamingTestCheckpointType
---@field BeginMove worldStreamingTestCheckpointType 0
---@field EndMove worldStreamingTestCheckpointType 1
worldStreamingTestCheckpointType = {}

---@class worldTrafficLightColor
---@field GREEN worldTrafficLightColor 0
---@field RED worldTrafficLightColor 1
---@field YELLOW worldTrafficLightColor 2
---@field INVALID worldTrafficLightColor 3
worldTrafficLightColor = {}

---@class worldTrafficMovementBehavior
---@field Pedestrian worldTrafficMovementBehavior 0
---@field Car worldTrafficMovementBehavior 1
worldTrafficMovementBehavior = {}

---@class worldTrafficSplineNodeUsage
---@field Pavement worldTrafficSplineNodeUsage 0
---@field Road worldTrafficSplineNodeUsage 1
worldTrafficSplineNodeUsage = {}

---@class worldTrafficSpotDirection
---@field Forward worldTrafficSpotDirection 0
---@field Backward worldTrafficSpotDirection 1
---@field Both worldTrafficSpotDirection 2
worldTrafficSpotDirection = {}

---@class worldenvUtilsEBlendParamsType
---@field EBPS_Tick worldenvUtilsEBlendParamsType 0
---@field EBPS_Game worldenvUtilsEBlendParamsType 1
---@field EBPS_Frame worldenvUtilsEBlendParamsType 2
worldenvUtilsEBlendParamsType = {}

---@class worldgeometryDescriptionQueryFlags
---@field DistanceVector worldgeometryDescriptionQueryFlags 1
---@field CollisionNormal worldgeometryDescriptionQueryFlags 2
---@field ObstacleDepth worldgeometryDescriptionQueryFlags 4
---@field UpExtent worldgeometryDescriptionQueryFlags 8
---@field DownExtent worldgeometryDescriptionQueryFlags 16
---@field TopExtent worldgeometryDescriptionQueryFlags 32
---@field TopPoint worldgeometryDescriptionQueryFlags 64
---@field BehindPoint worldgeometryDescriptionQueryFlags 128
worldgeometryDescriptionQueryFlags = {}

---@class worldgeometryDescriptionQueryStatus
---@field OK worldgeometryDescriptionQueryStatus 0
---@field NoGeometry worldgeometryDescriptionQueryStatus 1
---@field UpVectorSameAsDirection worldgeometryDescriptionQueryStatus 2
worldgeometryDescriptionQueryStatus = {}

---@class worldgeometryProbingStatus
---@field None worldgeometryProbingStatus 0
---@field StillInObstacle worldgeometryProbingStatus 1
---@field GeometryDiverged worldgeometryProbingStatus 2
---@field Failure worldgeometryProbingStatus 3
worldgeometryProbingStatus = {}

---@class worldgeometryaverageNormalDetectionHelperQueryStatus
---@field Finished worldgeometryaverageNormalDetectionHelperQueryStatus 0
---@field NoGeometry worldgeometryaverageNormalDetectionHelperQueryStatus 1
worldgeometryaverageNormalDetectionHelperQueryStatus = {}

---@class worlduiEntryVisibility
---@field TierVisibility worlduiEntryVisibility 0
---@field ForceShow worlduiEntryVisibility 1
---@field ForceHide worlduiEntryVisibility 2
worlduiEntryVisibility = {}

