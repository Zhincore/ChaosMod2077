// Codeware 1.15.0
module Codeware.Localization

public class LocalizationSystem extends ScriptableSystem {
    private let m_interfaceLanguage: CName;
    private let m_subtitleLanguage: CName;
    private let m_voiceLanguage: CName;
    private let m_playerGender: PlayerGender;
    private let m_providers: array<ref<ModLocalizationProvider>>;
    private let m_interfaceTranslationLanguage: CName;
    private let m_interfaceTranslationData: ref<inkHashMap>;
    private let m_subtitleTranslationLanguage: CName;
    private let m_subtitleTranslationData: ref<inkHashMap>;
    private let m_settingsWatcher: ref<LanguageSettingsWatcher>;
    private let m_genderWatcher: ref<PlayerGenderWatcher>;
    private let m_localeChanged: Bool;
    private let m_genderChanged: Bool;
    private func OnAttach() {
        this.m_interfaceTranslationData = new inkHashMap();
        this.m_subtitleTranslationData = new inkHashMap();
        this.m_settingsWatcher = new LanguageSettingsWatcher();
        this.m_settingsWatcher.Initialize(this.GetGameInstance());
        this.m_settingsWatcher.Start();
        this.m_genderWatcher = new PlayerGenderWatcher();
        this.m_genderWatcher.Initialize(this.GetGameInstance());
        this.m_genderWatcher.Start();
        this.UpdateLocale();
        this.UpdateTranslations();
        this.QueueRequest(UpdateGenderRequest.Create());
    }
    private func OnDetach() {
        this.m_genderWatcher.Stop();
    }
    private func OnRegisterProviderRequest(request: ref<RegisterProviderRequest>) {
        this.RegisterProvider(request.GetProvider());
    }
    private func OnUpdateLocaleRequest(request: ref<UpdateLocaleRequest>) {
        this.UpdateLocale();
        this.UpdateTranslations();
    }
    private func OnUpdateGenderRequest(request: ref<UpdateGenderRequest>) {
        this.UpdateGender();
    }
    private func OnUpdateTranslationsRequest(request: ref<UpdateTranslationsRequest>) {
        if request.IsForced() {
            this.InvalidateTranslations();
        }
        this.UpdateTranslations();
    }
    private func NotifyProviders() {
        if this.m_localeChanged {
            for provider in this.m_providers {
                provider.OnLocaleChange();
            }
            this.m_localeChanged = false;
        }
        if this.m_genderChanged {
            for provider in this.m_providers {
                provider.OnGenderChange();
            }
            this.m_genderChanged = false;
        }
    }
    private func UpdateLocale() {
        let settings: ref<UserSettings> = GameInstance.GetSettingsSystem(this.GetGameInstance());
        let interfaceLanguage: CName = (settings.GetVar(n"/language", n"OnScreen") as ConfigVarListName).GetValue();
        let subtitleLanguage: CName = (settings.GetVar(n"/language", n"Subtitles") as ConfigVarListName).GetValue();
        let voiceLanguage: CName = (settings.GetVar(n"/language", n"VoiceOver") as ConfigVarListName).GetValue();
        if NotEquals(this.m_interfaceLanguage, interfaceLanguage) {
            this.m_interfaceLanguage = interfaceLanguage;
            this.m_localeChanged = true;
        }
        if NotEquals(this.m_subtitleLanguage, subtitleLanguage) {
            this.m_subtitleLanguage = subtitleLanguage;
            this.m_localeChanged = true;
        }
        if NotEquals(this.m_voiceLanguage, voiceLanguage) {
            this.m_voiceLanguage = voiceLanguage;
            this.m_localeChanged = true;
        }
        this.NotifyProviders();
    }
    private func UpdateGender() {
        let playerGenderName: CName = GetPlayer(this.GetGameInstance()).GetResolvedGenderName();
        let playerGender: PlayerGender = Equals(playerGenderName, n"Male") ? PlayerGender.Male : PlayerGender.Female;
        if NotEquals(this.m_playerGender, playerGender) {
            this.m_playerGender = playerGender;
            this.m_genderChanged = true;
        }
        this.NotifyProviders();
    }
    private func UpdateTranslations() {
        if NotEquals(this.m_interfaceTranslationLanguage, this.m_interfaceLanguage) {
            this.CollectTranslationData(this.m_interfaceTranslationData, EntryType.Interface, this.m_interfaceLanguage);
            this.m_interfaceTranslationLanguage = this.m_interfaceLanguage;
        }
        if NotEquals(this.m_subtitleTranslationLanguage, this.m_subtitleLanguage) {
            this.CollectTranslationData(this.m_subtitleTranslationData, EntryType.Subtitle, this.m_subtitleLanguage);
            this.m_subtitleTranslationLanguage = this.m_subtitleLanguage;
        }
    }
    private func MergeTranslations(provider: ref<ModLocalizationProvider>) {
        if NotEquals(this.m_interfaceTranslationLanguage, n"") {
            this.FillTranslationData(this.m_interfaceTranslationData, provider, EntryType.Interface, this.m_interfaceTranslationLanguage);
        }
        if NotEquals(this.m_subtitleTranslationLanguage, n"") {
            this.FillTranslationData(this.m_subtitleTranslationData, provider, EntryType.Subtitle, this.m_subtitleTranslationLanguage);
        }
    }
    private func InvalidateTranslations() {
        this.m_interfaceTranslationLanguage = n"";
        this.m_subtitleTranslationLanguage = n"";
    }
    private func CollectTranslationData(translations: ref<inkHashMap>, type: EntryType, language: CName) {
        translations.Clear();
        for provider in this.m_providers {
            this.FillTranslationData(translations, provider, type, language);
        }
    }
    private func FillTranslationData(translations: ref<inkHashMap>, provider: ref<ModLocalizationProvider>, type: EntryType, language: CName) {
        let fallback: CName = provider.GetFallback();
        if NotEquals(fallback, n"") && NotEquals(fallback, language) {
            this.FillTranslationsFromPackage(translations, provider.GetPackage(fallback), type);
        }
        this.FillTranslationsFromPackage(translations, provider.GetPackage(language), type);
    }
    private func FillTranslationsFromPackage(translations: ref<inkHashMap>, package: ref<ModLocalizationPackage>, type: EntryType) {
        if !IsDefined(package) {
            return;
        }
        let values: array<wref<IScriptable>>;
        package.GetEntries(type).GetValues(values);
        for value in values {
            let entry: wref<LocalizationEntry> = value as LocalizationEntry;
            let hash: Uint64 = LocalizationEntry.Hash(entry.GetKey());
            if !translations.KeyExist(hash) {
                translations.Insert(hash, entry);
            } else {
                translations.Set(hash, entry);
            }
        }
    }
    private func GetTranslationFrom(translations: ref<inkHashMap>, key: String) -> String {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        if translations.KeyExist(hash) {
            return (translations.Get(hash) as LocalizationEntry).GetVariant(this.m_playerGender);
        }
        let fallback: String = GetLocalizedText(key);
        if StrLen(fallback) > 0 {
            return fallback;
        }
        return key;
    }
    public func GetText(key: String) -> String {
        return this.GetTranslationFrom(this.m_interfaceTranslationData, key);
    }
    public func GetSubtitle(key: String) -> String {
        return this.GetTranslationFrom(this.m_subtitleTranslationData, key);
    }
    public func GetInterfaceLanguage() -> CName {
        return this.m_interfaceLanguage;
    }
    public func GetSubtitleLanguage() -> CName {
        return this.m_subtitleLanguage;
    }
    public func GetVoiceLanguage() -> CName {
        return this.m_voiceLanguage;
    }
    public func GetPlayerGender() -> PlayerGender {
        return this.m_playerGender;
    }
    public func RegisterProvider(provider: ref<ModLocalizationProvider>) {
        ArrayPush(this.m_providers, provider);
        this.MergeTranslations(provider);
    }
    public static func GetInstance(game: GameInstance) -> ref<LocalizationSystem> {
        return GameInstance.GetScriptableSystemsContainer(game).Get(n"Codeware.Localization.LocalizationSystem") as LocalizationSystem;
    }
}

enum EntryType {
    Interface = 0,
    Subtitle = 1,
}

public class GenderNeutralEntry extends LocalizationEntry {
    private let m_value: String;
    public func GetVariant(gender: PlayerGender) -> String {
        return this.m_value;
    }
    public func SetVariant(gender: PlayerGender, value: String) {
        this.m_value = value;
    }
    public static func Create(key: String) -> ref<GenderNeutralEntry> {
        let self = new GenderNeutralEntry();
        self.m_key = key;
        return self;
    }
}

public class GenderSensitiveEntry extends LocalizationEntry {
    private let m_variants: array<String>;
    public func GetVariant(gender: PlayerGender) -> String {
        return this.m_variants[EnumInt(gender)];
    }
    public func SetVariant(gender: PlayerGender, value: String) {
        this.m_variants[EnumInt(gender)] = value;
    }
    public static func Create(key: String) -> ref<GenderSensitiveEntry> {
        let self = new GenderSensitiveEntry();
        self.m_key = key;
        ArrayResize(self.m_variants, 2);
        return self;
    }
}

public abstract class LocalizationEntry {
    private let m_key: String;
    public func GetKey() -> String {
        return this.m_key;
    }
    public func GetVariant(gender: PlayerGender) -> String
    public func SetVariant(gender: PlayerGender, value: String)
    public static func Hash(str: String) -> Uint64 {
        return TDBID.ToNumber(TDBID.Create(str));
    }
}

enum PlayerGender {
    Female = 0,
    Male = 1,
    Default = 0,
}

public abstract class ModLocalizationPackage {
    private let m_interfaceEntries: ref<inkHashMap>;
    private let m_subtitleEntries: ref<inkHashMap>;
    public func GetEntries(type: EntryType) -> wref<inkHashMap> {
        switch type {
            case EntryType.Interface:
                if !IsDefined(this.m_interfaceEntries) {
                    this.m_interfaceEntries = new inkHashMap();
                    this.DefineTexts();
                }
                return this.m_interfaceEntries;
            case EntryType.Subtitle:
                if !IsDefined(this.m_subtitleEntries) {
                    this.m_subtitleEntries = new inkHashMap();
                    this.DefineSubtitles();
                }
                return this.m_subtitleEntries;
            default: return null;
        }
    }
    public func GetEntriesList(type: EntryType) -> array<wref<IScriptable>> {
        let values: array<wref<IScriptable>>;
        this.GetEntries(type).GetValues(values);
        return values;
    }
    protected func DefineTexts()
    protected func DefineSubtitles()
    protected func Text(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderNeutralEntry> = this.m_interfaceEntries.Get(hash) as GenderNeutralEntry;
        if !IsDefined(entry) {
            entry = GenderNeutralEntry.Create(key);
            this.m_interfaceEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Default, value);
    }
    protected func Text(key: String, valueF: String, valueM: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_interfaceEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_interfaceEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Female, valueF);
        entry.SetVariant(PlayerGender.Male, valueM);
    }
    protected func TextF(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_interfaceEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_interfaceEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Female, value);
    }
    protected func TextM(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_interfaceEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_interfaceEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Male, value);
    }
    protected func Subtitle(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderNeutralEntry> = this.m_subtitleEntries.Get(hash) as GenderNeutralEntry;
        if !IsDefined(entry) {
            entry = GenderNeutralEntry.Create(key);
            this.m_subtitleEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Default, value);
    }
    protected func Subtitle(key: String, valueF: String, valueM: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_subtitleEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_subtitleEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Female, valueF);
        entry.SetVariant(PlayerGender.Male, valueM);
    }
    protected func SubtitleF(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_subtitleEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_subtitleEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Female, value);
    }
    protected func SubtitleM(key: String, value: String) {
        let hash: Uint64 = LocalizationEntry.Hash(key);
        let entry: ref<GenderSensitiveEntry> = this.m_subtitleEntries.Get(hash) as GenderSensitiveEntry;
        if !IsDefined(entry) {
            entry = GenderSensitiveEntry.Create(key);
            this.m_subtitleEntries.Insert(hash, entry);
        }
        entry.SetVariant(PlayerGender.Male, value);
    }
}

public abstract class ModLocalizationProvider extends ScriptableSystem {
    protected func OnAttach() {
        GameInstance.GetScriptableSystemsContainer(this.GetGameInstance())
            .QueueRequest(RegisterProviderRequest.Create(this));
    }
    public func GetPackage(language: CName) -> ref<ModLocalizationPackage>
    public func GetFallback() -> CName
    public func OnLocaleChange()
    public func OnGenderChange()
    public func GetOnScreenEntries(language: CName, out nativeEntries: array<localizationPersistenceOnScreenEntry>) {
        let packages: array<ref<ModLocalizationPackage>>;
        let fallback = this.GetFallback();
        if NotEquals(language, fallback) {
            let fallbackPackage = this.GetPackage(fallback);
            if IsDefined(fallbackPackage) {
                ArrayPush(packages, fallbackPackage);
            }
        }
        let mainPackage = this.GetPackage(language);
        if IsDefined(mainPackage) {
            ArrayPush(packages, mainPackage);
        }
        for package in packages {
            let values: array<wref<IScriptable>>;
            package.GetEntries(EntryType.Interface).GetValues(values);
            for value in values {
                let scriptEntry = value as LocalizationEntry;
                let nativeEntry: localizationPersistenceOnScreenEntry;
                nativeEntry.primaryKey = 0ul;
                nativeEntry.secondaryKey = scriptEntry.GetKey();
                nativeEntry.femaleVariant = scriptEntry.GetVariant(PlayerGender.Female);
                nativeEntry.maleVariant = scriptEntry.GetVariant(PlayerGender.Male);
                ArrayPush(nativeEntries, nativeEntry);
            }
        }
    }
}

public class RegisterProviderRequest extends ScriptableSystemRequest {
    private let m_provider: ref<ModLocalizationProvider>;
    public func GetProvider() -> ref<ModLocalizationProvider> {
        return this.m_provider;
    }
    public static func Create(provider: ref<ModLocalizationProvider>) -> ref<RegisterProviderRequest> {
        let self = new RegisterProviderRequest();
        self.m_provider = provider;
        return self;
    }
}

public class UpdateGenderRequest extends ScriptableSystemRequest {
    public static func Create() -> ref<UpdateGenderRequest> {
        return new UpdateGenderRequest();
    }
}

public class UpdateLocaleRequest extends ScriptableSystemRequest {
    private let m_type: CName;
    public func GetType() -> CName {
        return this.m_type;
    }
    public static func Create(type: CName) -> ref<UpdateLocaleRequest> {
        let self = new UpdateLocaleRequest();
        self.m_type = type;
        return self;
    }
}

public class UpdateTranslationsRequest extends ScriptableSystemRequest {
    private let m_force: Bool;
    public func IsForced() -> Bool {
        return this.m_force;
    }
    public static func Create(opt force: Bool) -> ref<UpdateTranslationsRequest> {
        let self = new UpdateTranslationsRequest();
        self.m_force = force;
        return self;
    }
}

public class LanguageSettingsWatcher extends ConfigVarListener {
    private let m_game: GameInstance;
    public func Initialize(game: GameInstance) {
        this.m_game = game;
    }
    public func Start() {
        this.Register(n"/language");
    }
    protected cb func OnVarModified(groupPath: CName, varName: CName, varType: ConfigVarType, reason: ConfigChangeReason) {
        if Equals(reason, ConfigChangeReason.Accepted) {
            GameInstance.GetScriptableSystemsContainer(this.m_game)
                .QueueRequest(UpdateLocaleRequest.Create(varName));
        }
    }
}

public class PlayerGenderWatcher {
    private let m_game: GameInstance;
    private let m_callbackID: Uint32;
    public func Initialize(game: GameInstance) {
        this.m_game = game;
    }
    public func Start() {
        this.m_callbackID = GameInstance.GetPlayerSystem(this.m_game)
            .RegisterPlayerPuppetAttachedCallback(this, n"OnPlayerAttached");
    }
    public func Stop() {
        GameInstance.GetPlayerSystem(this.m_game)
            .UnregisterPlayerPuppetAttachedCallback(this.m_callbackID);
    }
    private func OnPlayerAttached(player: ref<GameObject>) {
        GameInstance.GetScriptableSystemsContainer(this.m_game)
            .QueueRequest(UpdateGenderRequest.Create());
    }
}
