module ChaosMod.Support

/// MARK: Service
public func GetSupportService() -> ref<EffectSupportService> {
    return GameInstance.GetScriptableServiceContainer().GetService(n"ChaosMod.Support.EffectSupportService") as EffectSupportService;
}

/// utility service for providing stuff for effects
public class EffectSupportService extends ScriptableService {
    public let inGameUI: ref<gameuiInGameMenuGameController>;
    public let pauseMenu: wref<MenuScenario_PauseMenu>;
    public let creditsPickerPause: wref<MenuScenario_CreditsPickerPause>;
}

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/observers/inGameMenu.lua
@wrapMethod(gameuiInGameMenuGameController)
private final func RegisterGlobalBlackboards() -> Void {
    GetSupportService().inGameUI = this;

    wrappedMethod();
}

@wrapMethod(MenuScenario_PauseMenu)
protected cb func OnEnterScenario(prevScenario: CName, userData: ref<IScriptable>) -> Bool {
    GetSupportService().pauseMenu = this;

    return wrappedMethod(prevScenario, userData);
}

@wrapMethod(MenuScenario_CreditsPickerPause)
protected cb func OnEnterScenario(prevScenario: CName, userData: ref<IScriptable>) -> Bool {
    GetSupportService().creditsPickerPause = this;

    return wrappedMethod(prevScenario, userData);
}

