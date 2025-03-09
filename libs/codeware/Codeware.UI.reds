// Codeware 1.15.0
module Codeware.UI
import Codeware.*
import Codeware.UI.TextInput.*

public class ButtonHintsEx extends inkCustomController {
    private let m_buttonHints: wref<ButtonHints>;
    private let m_isLocked: Bool;
    private let m_style: CName;
    public func AddButtonHint(action: CName, label: CName, holdInteraction: Bool) {
        if !this.m_isLocked {
            this.m_buttonHints.AddButtonHint(action, label, holdInteraction);
            if NotEquals(this.m_style, n"") {
                this.ApplyItemStyle(this.m_buttonHints.CheckForPreExisting(action));
            }
        }
    }
    public func AddButtonHint(action: CName, label: CName) {
        if !this.m_isLocked {
            this.m_buttonHints.AddButtonHint(action, label);
            if NotEquals(this.m_style, n"") {
                this.ApplyItemStyle(this.m_buttonHints.CheckForPreExisting(action));
            }
        }
    }
    public func AddButtonHint(action: CName, label: String) {
        if !this.m_isLocked {
            this.m_buttonHints.AddButtonHint(action, label);
            if NotEquals(this.m_style, n"") {
                this.ApplyItemStyle(this.m_buttonHints.CheckForPreExisting(action));
            }
        }
    }
    public func AddCharacterRoatateButtonHint() {
        if !this.m_isLocked {
            this.m_buttonHints.AddCharacterRoatateButtonHint();
            if NotEquals(this.m_style, n"") {
                this.ApplyLastItemStyle();
            }
        }
    }
    public func RemoveButtonHint(action: CName) {
        if !this.m_isLocked {
            this.m_buttonHints.RemoveButtonHint(action);
        }
    }
    public func ClearButtonHints() {
        if !this.m_isLocked {
            this.m_buttonHints.ClearButtonHints();
        }
    }
    public func Show() {
        this.m_buttonHints.Show();
    }
    public func Hide() {
        this.m_buttonHints.Hide();
    }
    public func IsVisible() -> Bool {
        return this.m_buttonHints.IsVisible();
    }
    public func Lock() {
        this.m_isLocked = true;
    }
    public func Unlock() {
        this.m_isLocked = false;
    }
    public func IsLocked() -> Bool {
        return this.m_isLocked;
    }
    public func SetStyle(styleName: CName) {
        this.m_style = styleName;
        this.ApplyListStyle();
    }
    private func ApplyListStyle() {
        let holder: ref<inkCompoundWidget> = inkCompoundRef.Get(this.m_buttonHints.m_horizontalHolder) as inkCompoundWidget;
        if Equals(this.m_style, n"popup") {
            holder.SetChildMargin(new inkMargin(30.0, 0.0, 0.0, 0.0));
        } else {
            holder.SetChildMargin(new inkMargin(0.0, 0.0, 0.0, 0.0));
        }
    }
    private func ApplyItemStyle(item: ref<ButtonHintListItem>) {
        if Equals(this.m_style, n"popup") {
            let label: wref<inkText> = item.GetWidget(n"holder/label") as inkText;
            if !IsDefined(label) {
                label = item.GetWidget(n"inputDisplayController/label") as inkText;
            }
            label.SetFontSize(38);
            label.SetFontStyle(n"Semi-Bold");
            label.SetLetterCase(textLetterCase.UpperCase);
        }
    }
    private func ApplyLastItemStyle() {
        let holder: ref<inkCompoundWidget> = inkCompoundRef.Get(this.m_buttonHints.m_horizontalHolder) as inkCompoundWidget;
        this.ApplyItemStyle(holder.GetWidgetByIndex(holder.GetNumChildren() - 1).GetController() as ButtonHintListItem);
    }
    public static func Wrap(root: ref<inkWidget>) -> ref<ButtonHintsEx> {
        let buttonHints: ref<ButtonHints> = root.GetController() as ButtonHints;
        if !IsDefined(buttonHints) {
            return null;
        }
        let self: ref<ButtonHintsEx> = new ButtonHintsEx();
        self.m_buttonHints = buttonHints;
        self.Mount(root as inkCompoundWidget);
        return self;
    }
}

public class ButtonHintsManager extends ScriptableService {
    private let m_buttonHints: ref<inkWidget>;
    private let m_inputHint: wref<inkInputDisplayController>;
    private cb func OnUninitialize() {
        this.m_buttonHints = null;
        this.m_inputHint = null;
    }
    public func IsInitialized() -> Bool {
        return IsDefined(this.m_buttonHints);
    }
    public func Initialize(buttonHints: ref<inkWidget>) {
        this.m_buttonHints = buttonHints;
    }
    public func Initialize(buttonHints: ref<ButtonHints>) {
        this.m_buttonHints = buttonHints.GetRootWidget();
    }
    public func Initialize(parent: ref<inkGameController>) {
        let rootWidget = parent.GetRootCompoundWidget();
        let buttonHints = parent.SpawnFromExternal(rootWidget, r"base\\gameplay\\gui\\common\\buttonhints.inkwidget", n"Root");
        this.Initialize(buttonHints);
        rootWidget.RemoveChild(buttonHints);
    }
    public func SpawnButtonHints(parentWidget: wref<inkWidget>) -> ref<ButtonHintsEx> {
        return ButtonHintsEx.Wrap(
            this.m_buttonHints.GetController().SpawnFromLocal(parentWidget, n"Root")
        );
    }
    public func GetActionKey(action: CName) -> String {
        if !IsDefined(this.m_inputHint) {
            let buttonHints = this.m_buttonHints.GetController() as ButtonHints;
            buttonHints.ClearButtonHints();
            buttonHints.AddButtonHint(action, "");
            this.m_inputHint = buttonHints.CheckForPreExisting(action).m_buttonHint;
        }
        this.m_inputHint.SetInputAction(action);
        let icon = this.m_inputHint.GetWidget(n"inputRoot/inputIcon") as inkImage;
        let part = icon.GetTexturePart();
        let key = NameToString(part);
        return key;
    }
    public static func GetInstance() -> ref<ButtonHintsManager> {
        return GameInstance.GetScriptableServiceContainer()
            .GetService(n"Codeware.UI.ButtonHintsManager") as ButtonHintsManager;
    }
    public static func InitializeFromController(controller: ref<inkGameController>) {
        ButtonHintsManager.GetInstance().Initialize(controller);
    }
}
@wrapMethod(SingleplayerMenuGameController)
protected cb func OnInitialize() -> Bool {
    wrappedMethod();
    ButtonHintsManager.InitializeFromController(this);
}
@wrapMethod(DpadWheelGameController)
protected cb func OnInitialize() -> Bool {
    wrappedMethod();
    ButtonHintsManager.InitializeFromController(this);
}

public abstract class CustomButton extends inkCustomController {
    protected let m_root: wref<inkCompoundWidget>;
    protected let m_label: wref<inkText>;
    protected let m_useAnimations: Bool;
    protected let m_useSounds: Bool;
    protected let m_isDisabled: Bool;
    protected let m_isHovered: Bool;
    protected let m_isPressed: Bool;
    protected cb func OnCreate() {
        this.CreateWidgets();
        this.CreateAnimations();
    }
    protected cb func OnInitialize() {
        this.RegisterListeners();
        this.ApplyDisabledState();
        this.ApplyHoveredState();
    }
    protected func CreateWidgets()
    protected func CreateAnimations()
    protected func RegisterListeners() {
        this.RegisterToCallback(n"OnEnter", this, n"OnHoverOver");
        this.RegisterToCallback(n"OnLeave", this, n"OnHoverOut");
        this.RegisterToCallback(n"OnPress", this, n"OnPress");
        this.RegisterToCallback(n"OnRelease", this, n"OnRelease");
    }
    protected func ApplyDisabledState()
    protected func ApplyHoveredState()
    protected func ApplyPressedState()
    protected func SetDisabledState(isDisabled: Bool) {
        if !Equals(this.m_isDisabled, isDisabled) {
            this.m_isDisabled = isDisabled;
            if this.m_isDisabled {
                this.m_isPressed = false;
            }
            this.ApplyDisabledState();
            this.ApplyHoveredState();
            this.ApplyPressedState();
        }
    }
    protected func SetHoveredState(isHovered: Bool) {
        if !Equals(this.m_isHovered, isHovered) {
            this.m_isHovered = isHovered;
            if !this.m_isHovered {
                this.m_isPressed = false;
            }
            if !this.m_isDisabled {
                this.ApplyHoveredState();
                this.ApplyPressedState();
            }
        }
    }
    protected func SetPressedState(isPressed: Bool) {
        if !Equals(this.m_isPressed, isPressed) {
            this.m_isPressed = isPressed;
            if !this.m_isDisabled {
                this.ApplyPressedState();
            }
        }
    }
    protected cb func OnHoverOver(evt: ref<inkPointerEvent>) -> Bool {
        this.SetHoveredState(true);
    }
    protected cb func OnHoverOut(evt: ref<inkPointerEvent>) -> Bool {
        this.SetHoveredState(false);
    }
    protected cb func OnPress(evt: ref<inkPointerEvent>) -> Bool {
        if evt.IsAction(n"click") {
            this.SetPressedState(true);
        }
    }
    protected cb func OnRelease(evt: ref<inkPointerEvent>) -> Bool {
        if evt.IsAction(n"click") {
            if this.m_isPressed {
                if !this.m_isDisabled {
                    if this.m_useSounds {
                        this.PlaySound(n"Button", n"OnPress");
                    }
                    this.CallCustomCallback(n"OnBtnClick");
                }
                this.SetPressedState(false);
            }
        }
    }
    public func GetName() -> CName {
        return this.m_root.GetName();
    }
    public func GetState() -> inkEButtonState {
        if this.m_isDisabled {
            return inkEButtonState.Disabled;
        }
        if this.m_isPressed {
            return inkEButtonState.Press;
        }
        if this.m_isHovered {
            return inkEButtonState.Hover;
        }
        return inkEButtonState.Normal;
    }
    public func GetText() -> String {
        return this.m_label.GetText();
    }
    public func IsEnabled() -> Bool {
        return !this.m_isDisabled;
    }
    public func IsDisabled() -> Bool {
        return this.m_isDisabled;
    }
    public func IsHovered() -> Bool {
        return this.m_isHovered && !this.m_isDisabled;
    }
    public func IsPressed() -> Bool {
        return this.m_isPressed && !this.m_isDisabled;
    }
    public func SetName(name: CName) {
        this.m_root.SetName(name);
    }
    public func SetText(text: String) {
        this.m_label.SetText(text);
    }
    public func SetPosition(x: Float, y: Float) {
        this.m_root.SetMargin(x, y, 0, 0);
    }
    public func SetWidth(width: Float) {
        this.m_root.SetWidth(width);
    }
    public func SetDisabled(isDisabled: Bool) {
        this.SetDisabledState(isDisabled);
    }
    public func ToggleAnimations(useAnimations: Bool) {
        this.m_useAnimations = useAnimations;
        this.CreateAnimations();
    }
    public func ToggleSounds(useSounds: Bool) {
        this.m_useSounds = useSounds;
    }
}

public class HubLinkButton extends CustomButton {
    protected let m_icon: wref<inkImage>;
    protected let m_fluff: wref<inkImage>;
    protected let m_hover: wref<inkWidget>;
    protected let m_disabledRootAnimDef: ref<inkAnimDef>;
    protected let m_disabledRootAnimProxy: ref<inkAnimProxy>;
    protected let m_hoverFillAnimDef: ref<inkAnimDef>;
    protected let m_hoverFillAnimProxy: ref<inkAnimProxy>;
    protected func CreateWidgets() {
        let root: ref<inkCanvas> = new inkCanvas();
        root.SetName(n"button");
        root.SetSize(new Vector2(500.0, 120.0)); // Big Mode = 160.0
        root.SetAnchorPoint(new Vector2(0.5, 0.5));
        root.SetInteractive(true);
        let flexContainer: ref<inkFlex> = new inkFlex();
        flexContainer.SetName(n"flexContainer");
        flexContainer.SetMargin(new inkMargin(15.0, 0.0, 0.0, 0.0));
        flexContainer.Reparent(root);
        let background: ref<inkImage> = new inkImage();
        background.SetName(n"background");
        background.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        background.SetTexturePart(n"button_big2_bg");
        background.SetNineSliceScale(true);
        background.SetAnchorPoint(new Vector2(0.5, 0.5));
        background.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        background.BindProperty(n"opacity", n"HubMenuButton.bgOpacity");
        background.BindProperty(n"tintColor", n"HubMenuButton.bgColor");
        background.SetSize(new Vector2(532.0, 345.0));
        background.Reparent(flexContainer);
        let frame: ref<inkImage> = new inkImage();
        frame.SetName(n"frame");
        frame.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frame.SetTexturePart(n"button_big2_fg");
        frame.SetNineSliceScale(true);
        frame.SetAnchorPoint(new Vector2(0.5, 0.5));
        frame.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        frame.BindProperty(n"tintColor", n"HubMenuButton.frameColor");
        frame.SetSize(new Vector2(532.0, 345.0));
        frame.Reparent(flexContainer);
        let backgroundLeftBg: ref<inkImage> = new inkImage();
        backgroundLeftBg.SetName(n"background_leftBg");
        backgroundLeftBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        backgroundLeftBg.SetTexturePart(n"item_side_bg");
        backgroundLeftBg.SetNineSliceScale(true);
        backgroundLeftBg.SetMargin(new inkMargin(-15.0, 0.0, 0.0, 0.0));
        backgroundLeftBg.SetHAlign(inkEHorizontalAlign.Left);
        backgroundLeftBg.SetAnchorPoint(new Vector2(0.5, 0.5));
        backgroundLeftBg.SetOpacity(0.5);
        backgroundLeftBg.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        backgroundLeftBg.BindProperty(n"tintColor", n"HubMenuButton.frameColor");
        backgroundLeftBg.SetSize(new Vector2(16.0, 345.0));
        backgroundLeftBg.Reparent(flexContainer);
        let backgroundLeftFrame: ref<inkImage> = new inkImage();
        backgroundLeftFrame.SetName(n"background_leftFrame");
        backgroundLeftFrame.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        backgroundLeftFrame.SetTexturePart(n"item_side_fg");
        backgroundLeftFrame.SetNineSliceScale(true);
        backgroundLeftFrame.SetMargin(new inkMargin(-15.0, 0.0, 0.0, 0.0));
        backgroundLeftFrame.SetHAlign(inkEHorizontalAlign.Left);
        backgroundLeftFrame.SetAnchorPoint(new Vector2(0.5, 0.5));
        backgroundLeftFrame.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        backgroundLeftFrame.BindProperty(n"tintColor", n"HubMenuButton.frameColor");
        backgroundLeftFrame.SetSize(new Vector2(16.0, 345.0));
        backgroundLeftFrame.Reparent(flexContainer);
        let container: ref<inkHorizontalPanel> = new inkHorizontalPanel();
        container.SetName(n"container");
        container.SetFitToContent(true);
        container.SetMargin(new inkMargin(0.0, 5.0, 0.0, 0.0));
        container.SetHAlign(inkEHorizontalAlign.Left);
        container.SetVAlign(inkEVerticalAlign.Top);
        container.Reparent(flexContainer);
        let inkVerticalPanelWidget8: ref<inkVerticalPanel> = new inkVerticalPanel();
        inkVerticalPanelWidget8.SetName(n"inkVerticalPanelWidget8");
        inkVerticalPanelWidget8.SetFitToContent(true);
        inkVerticalPanelWidget8.SetMargin(new inkMargin(20.0, 0.0, -10.0, 0.0));
        inkVerticalPanelWidget8.Reparent(container);
        let icon: ref<inkImage> = new inkImage();
        icon.SetName(n"icon");
        icon.SetAtlasResource(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_atlas.inkatlas");
        icon.SetHAlign(inkEHorizontalAlign.Center);
        icon.SetVAlign(inkEVerticalAlign.Center);
        icon.SetAnchorPoint(new Vector2(0.5, 0.5));
        icon.SetSizeRule(inkESizeRule.Stretch);
        icon.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        icon.BindProperty(n"tintColor", n"HubMenuButton.textColor");
        icon.SetSize(new Vector2(80.0, 80.0));
        icon.SetScale(new Vector2(0.8, 0.8));
        icon.Reparent(inkVerticalPanelWidget8);
        let fluff: ref<inkImage> = new inkImage();
        fluff.SetName(n"fluff");
        fluff.SetAtlasResource(r"base\\gameplay\\gui\\common\\icons\\atlas_common.inkatlas");
        fluff.SetTexturePart(n"fluffcc35_3");
        fluff.SetFitToContent(true);
        fluff.SetMargin(new inkMargin(0.0, 0.0, 0.0, 16.0));
        fluff.SetHAlign(inkEHorizontalAlign.Center);
        fluff.SetVAlign(inkEVerticalAlign.Center);
        fluff.SetAnchorPoint(new Vector2(0.5, 0.5));
        fluff.SetOpacity(0.4);
        fluff.SetStyle(r"base\\gameplay\\gui\\fullscreen\\fullscreen_main_colors.inkstyle");
        fluff.BindProperty(n"tintColor", n"MainColors.PanelBlue");
        fluff.SetSize(new Vector2(90.0, 80.0));
        fluff.Reparent(inkVerticalPanelWidget8);
        let label: ref<inkText> = new inkText();
        label.SetName(n"label");
        label.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        label.SetFontStyle(n"Semi-Bold");
        label.SetFontSize(50);
        label.SetLetterCase(textLetterCase.UpperCase);
        label.SetVerticalAlignment(textVerticalAlignment.Center);
        label.SetContentHAlign(inkEHorizontalAlign.Center);
        label.SetContentVAlign(inkEVerticalAlign.Center);
        label.SetText("STATS");
        label.SetMargin(new inkMargin(20.0, -5.0, 0.0, 0.0));
        label.SetHAlign(inkEHorizontalAlign.Left);
        label.SetVAlign(inkEVerticalAlign.Center);
        label.SetStyle(r"base\\gameplay\\gui\\fullscreen\\hub_menu\\hub_menu_style.inkstyle");
        label.BindProperty(n"tintColor", n"HubMenuButton.textColor");
        label.SetSize(new Vector2(360.0, 120.0));
        label.Reparent(container);
        let hoverFrames: ref<inkFlex> = new inkFlex();
        hoverFrames.SetName(n"hoverFrames");
        hoverFrames.SetOpacity(0.0);
        hoverFrames.SetSize(new Vector2(100.0, 100.0));
        hoverFrames.Reparent(flexContainer);
        let frameHovered: ref<inkImage> = new inkImage();
        frameHovered.SetName(n"frameHovered");
        frameHovered.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frameHovered.SetTexturePart(n"button_big2_fg");
        frameHovered.SetNineSliceScale(true);
        frameHovered.SetAnchorPoint(new Vector2(0.5, 0.5));
        frameHovered.SetStyle(r"base\\gameplay\\gui\\fullscreen\\perks\\perks_style.inkstyle");
        frameHovered.BindProperty(n"tintColor", n"MainColors.PanelRed");
        frameHovered.SetSize(new Vector2(532.0, 345.0));
        frameHovered.Reparent(hoverFrames);
        let frameHoveredBg: ref<inkImage> = new inkImage();
        frameHoveredBg.SetName(n"frameHoveredBg");
        frameHoveredBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frameHoveredBg.SetTexturePart(n"button_big2_bg");
        frameHoveredBg.SetNineSliceScale(true);
        frameHoveredBg.SetAnchorPoint(new Vector2(0.5, 0.5));
        frameHoveredBg.SetOpacity(0.05);
        frameHoveredBg.SetStyle(r"base\\gameplay\\gui\\fullscreen\\perks\\perks_style.inkstyle");
        frameHoveredBg.BindProperty(n"tintColor", n"MainColors.PanelRed");
        frameHoveredBg.SetSize(new Vector2(532.0, 345.0));
        frameHoveredBg.Reparent(hoverFrames);
        let backgroundLeftHover: ref<inkImage> = new inkImage();
        backgroundLeftHover.SetName(n"background_leftHover");
        backgroundLeftHover.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        backgroundLeftHover.SetTexturePart(n"item_side_fg");
        backgroundLeftHover.SetNineSliceScale(true);
        backgroundLeftHover.SetMargin(new inkMargin(-15.0, 0.0, 0.0, 0.0));
        backgroundLeftHover.SetHAlign(inkEHorizontalAlign.Left);
        backgroundLeftHover.SetAnchorPoint(new Vector2(0.5, 0.5));
        backgroundLeftHover.SetStyle(r"base\\gameplay\\gui\\fullscreen\\perks\\perks_style.inkstyle");
        backgroundLeftHover.BindProperty(n"tintColor", n"MainColors.PanelRed");
        backgroundLeftHover.SetSize(new Vector2(16.0, 345.0));
        backgroundLeftHover.Reparent(hoverFrames);
        let backgroundLeftBg: ref<inkImage> = new inkImage();
        backgroundLeftBg.SetName(n"background_leftBg");
        backgroundLeftBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        backgroundLeftBg.SetTexturePart(n"item_side_bg");
        backgroundLeftBg.SetNineSliceScale(true);
        backgroundLeftBg.SetMargin(new inkMargin(-15.0, 0.0, 0.0, 0.0));
        backgroundLeftBg.SetHAlign(inkEHorizontalAlign.Left);
        backgroundLeftBg.SetAnchorPoint(new Vector2(0.5, 0.5));
        backgroundLeftBg.SetOpacity(0.65); // Big Mode = 0.05
        backgroundLeftBg.SetStyle(r"base\\gameplay\\gui\\fullscreen\\perks\\perks_style.inkstyle");
        backgroundLeftBg.BindProperty(n"tintColor", n"MainColors.PanelRed");
        backgroundLeftBg.SetSize(new Vector2(16.0, 345.0));
        backgroundLeftBg.Reparent(hoverFrames);
        let minSize: ref<inkRectangle> = new inkRectangle();
        minSize.SetName(n"minSize");
        minSize.SetVisible(false);
        minSize.SetAffectsLayoutWhenHidden(true);
        minSize.SetHAlign(inkEHorizontalAlign.Left);
        minSize.SetVAlign(inkEVerticalAlign.Center);
        minSize.SetSize(new Vector2(485.0, 120.0));
        minSize.Reparent(flexContainer);
        this.m_root = root;
        this.m_label = label;
        this.m_icon = icon;
        this.m_fluff = fluff;
        this.m_hover = hoverFrames;
        this.SetRootWidget(root);
    }
    protected func CreateAnimations() {
        let disabledRootAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        disabledRootAlphaAnim.SetStartTransparency(1.0);
        disabledRootAlphaAnim.SetEndTransparency(0.3);
        disabledRootAlphaAnim.SetDuration(this.m_useAnimations ? 0.05 : 0.0001);
        this.m_disabledRootAnimDef = new inkAnimDef();
        this.m_disabledRootAnimDef.AddInterpolator(disabledRootAlphaAnim);
        let hoverFillAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        hoverFillAlphaAnim.SetStartTransparency(0.0);
        hoverFillAlphaAnim.SetEndTransparency(1.0);
        hoverFillAlphaAnim.SetDuration(this.m_useAnimations ? 0.2 : 0.0001);
        this.m_hoverFillAnimDef = new inkAnimDef();
        this.m_hoverFillAnimDef.AddInterpolator(hoverFillAlphaAnim);
    }
    protected func ApplyDisabledState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isDisabled;
        this.m_disabledRootAnimProxy.Stop();
        this.m_disabledRootAnimProxy = this.m_root.PlayAnimationWithOptions(this.m_disabledRootAnimDef, reverseAnimOpts);
    }
    protected func ApplyHoveredState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isHovered || this.m_isDisabled;
        this.m_hoverFillAnimProxy.Stop();
        this.m_hoverFillAnimProxy = this.m_hover.PlayAnimationWithOptions(this.m_hoverFillAnimDef, reverseAnimOpts);
    }
    protected func ApplyPressedState() {}
    public func SetIcon(icon: CName) {
        this.m_icon.SetTexturePart(icon);
        if NotEquals(icon, n"") {
            this.m_icon.SetVisible(true);
        } else {
            this.m_icon.SetVisible(false);
            this.m_fluff.SetVisible(false);
        }
    }
    public func SetIcon(icon: CName, atlas: ResRef) {
        this.m_icon.SetAtlasResource(atlas);
        this.SetIcon(icon);
    }
    public static func Create() -> ref<HubLinkButton> {
        let self = new HubLinkButton();
        self.CreateInstance();
        return self;
    }
}

public class PopupButton extends CustomButton {
    protected let m_isFlipped: Bool;
    protected let m_bg: wref<inkImage>;
    protected let m_frame: wref<inkImage>;
    protected let m_input: wref<inkInputDisplayController>;
    protected func CreateWidgets() {
        let root = new inkFlex();
        root.SetName(n"button");
        root.SetInteractive(true);
        root.SetMargin(new inkMargin(0.0, 20.0, 0.0, 0.0));
        root.SetHAlign(inkEHorizontalAlign.Right);
        root.SetVAlign(inkEVerticalAlign.Top);
        root.SetSize(new Vector2(100.0, 100.0));
        let minSize = new inkRectangle();
        minSize.SetName(n"minSize");
        minSize.SetVisible(false);
        minSize.SetAffectsLayoutWhenHidden(true);
        minSize.SetHAlign(inkEHorizontalAlign.Left);
        minSize.SetVAlign(inkEVerticalAlign.Top);
        minSize.SetSize(new Vector2(326.0, 80.0));
        minSize.Reparent(root);
        let background = new inkImage();
        background.SetName(n"background");
        background.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        background.SetTexturePart(n"cell_bg");
        background.SetNineSliceScale(true);
        background.SetAnchorPoint(new Vector2(0.5, 0.5));
        background.SetSize(new Vector2(326.0, 80.0));
        background.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        background.BindProperty(n"tintColor", n"PopupButton.bgColor");
        background.BindProperty(n"opacity", n"PopupButton.bgOpacity");
        background.Reparent(root);
        let frame = new inkImage();
        frame.SetName(n"frame");
        frame.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frame.SetTexturePart(n"cell_fg");
        frame.SetNineSliceScale(true);
        frame.SetVAlign(inkEVerticalAlign.Top);
        frame.SetAnchorPoint(new Vector2(0.5, 0.5));
        frame.SetSize(new Vector2(326.0, 80.0));
        frame.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        frame.BindProperty(n"tintColor", n"PopupButton.frameColor");
        frame.BindProperty(n"opacity", n"PopupButton.frameOpacity");
        frame.Reparent(root);
        let content = new inkHorizontalPanel();
        content.SetName(n"content");
        content.SetFitToContent(true);
        content.SetMargin(new inkMargin(15.0, 0.0, 0.0, 0.0));
        content.SetHAlign(inkEHorizontalAlign.Left);
        content.Reparent(root);
        let inputDisplay = new inkHorizontalPanel();
        inputDisplay.SetName(n"inputDisplay");
        inputDisplay.SetFitToContent(true);
        inputDisplay.SetMargin(new inkMargin(0.0, 0.0, 12.0, 0.0));
        inputDisplay.SetHAlign(inkEHorizontalAlign.Left);
        inputDisplay.SetVAlign(inkEVerticalAlign.Center);
        inputDisplay.SetSize(new Vector2(40.0, 32.0));
        inputDisplay.Reparent(content);
        let inputRoot = new inkCanvas();
        inputRoot.SetName(n"inputRoot");
        inputRoot.SetHAlign(inkEHorizontalAlign.Left);
        inputRoot.SetVAlign(inkEVerticalAlign.Top);
        inputRoot.SetSize(new Vector2(64.0, 64.0));
        inputRoot.Reparent(inputDisplay);
        let inputIcon = new inkImage();
        inputIcon.SetName(n"inputIcon");
        inputIcon.SetAtlasResource(r"base\\gameplay\\gui\\common\\input\\icons_keyboard.inkatlas");
        inputIcon.SetTexturePart(n"kb_enter");
        inputIcon.SetAffectsLayoutWhenHidden(true);
        inputIcon.SetHAlign(inkEHorizontalAlign.Center);
        inputIcon.SetVAlign(inkEVerticalAlign.Center);
        inputIcon.SetAnchor(inkEAnchor.Centered);
        inputIcon.SetAnchorPoint(new Vector2(0.5, 0.5));
        inputIcon.SetSize(new Vector2(64.0, 64.0));
        inputIcon.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        inputIcon.BindProperty(n"tintColor", n"PopupButton.iconColor");
        inputIcon.BindProperty(n"opacity", n"PopupButton.iconOpacity");
        inputIcon.Reparent(inputRoot);
        let inputText = new inkText();
        inputText.SetName(n"inputText");
        inputText.SetVisible(false);
        inputText.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        inputText.SetFontStyle(n"Regular");
        inputText.SetFontSize(45);
        inputText.SetFitToContent(true);
        inputText.SetAnchor(inkEAnchor.Centered);
        inputText.SetAnchorPoint(new Vector2(0.5, 0.5));
        inputText.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        inputText.BindProperty(n"tintColor", n"PopupButton.iconColor");
        inputText.BindProperty(n"opacity", n"PopupButton.iconOpacity");
        inputText.Reparent(inputRoot);
        let inputController = new inkInputDisplayController();
        inputController.fixedIconHeight = 64;
        inputController.iconRef = inkWidgetRef.Create(inputIcon);
        inputController.nameRef = inkWidgetRef.Create(inputText);
        inputController.canvasRef = inkWidgetRef.Create(inputRoot);
        inputDisplay.AttachController(inputController);
        let label = new inkText();
        label.SetName(n"label");
        label.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        label.SetLetterCase(textLetterCase.UpperCase);
        label.SetLineHeight(0.9);
        label.SetHorizontalAlignment(textHorizontalAlignment.Center);
        label.SetVerticalAlignment(textVerticalAlignment.Center);
        label.SetContentHAlign(inkEHorizontalAlign.Center);
        label.SetContentVAlign(inkEVerticalAlign.Center);
        label.SetOverflowPolicy(textOverflowPolicy.AdjustToSize);
        label.SetFitToContent(true);
        label.SetVAlign(inkEVerticalAlign.Center);
        label.SetSize(new Vector2(100.0, 32.0));
        label.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        label.BindProperty(n"fontStyle", n"MainColors.BodyFontWeight");
        label.BindProperty(n"fontSize", n"MainColors.ReadableMedium");
        label.BindProperty(n"tintColor", n"PopupButton.textColor");
        label.BindProperty(n"opacity", n"PopupButton.textOpacity");
        label.Reparent(content);
        this.m_root = root;
        this.m_label = label;
        this.m_bg = background;
        this.m_frame = frame;
        this.m_input = inputController;
        this.SetRootWidget(root);
        this.ApplyFlippedState();
        this.ApplyInputState();
    }
    protected func ApplyFlippedState() {
        this.m_bg.SetTexturePart(this.m_isFlipped ? n"cell_flip_bg" : n"cell_bg");
        this.m_frame.SetTexturePart(this.m_isFlipped ? n"cell_flip_fg" : n"cell_fg");
    }
    protected func ApplyInputState() {
        if NotEquals(this.m_input.GetInputAction(), n"") {
            this.m_input.SetVisible(true);
            this.m_label.SetMargin(new inkMargin(0.0, 0.0, 20.0, 0.0));
        } else {
            this.m_input.SetVisible(false);
            this.m_label.SetMargin(new inkMargin(10.0, 0.0, 20.0, 0.0));
        }
    }
    protected func ApplyHoveredState() {
        this.m_root.SetState(this.m_isHovered ? n"Hover" : n"Default");
    }
    public func SetFlipped(isFlipped: Bool) {
        this.m_isFlipped = isFlipped;
        this.ApplyFlippedState();
    }
    public func GetInputAction() -> CName {
        return this.m_input.GetInputAction();
    }
    public func SetInputAction(action: CName) {
        this.m_input.SetInputAction(action);
        this.ApplyInputState();
    }
    public func SetInputKey(input: inkInputKeyData) {
        this.m_input.SetInputKey(input);
        this.ApplyInputState();
    }
    public static func Create() -> ref<PopupButton> {
        let self = new PopupButton();
        self.CreateInstance();
        return self;
    }
}

public class SimpleButton extends CustomButton {
    protected let m_isFlipped: Bool;
    protected let m_bg: wref<inkImage>;
    protected let m_fill: wref<inkImage>;
    protected let m_frame: wref<inkImage>;
    protected let m_disabledRootAnimDef: ref<inkAnimDef>;
    protected let m_disabledRootAnimProxy: ref<inkAnimProxy>;
    protected let m_hoverFillAnimDef: ref<inkAnimDef>;
    protected let m_hoverFillAnimProxy: ref<inkAnimProxy>;
    protected let m_hoverFrameAnimDef: ref<inkAnimDef>;
    protected let m_hoverFrameAnimProxy: ref<inkAnimProxy>;
    protected let m_pressedFillAnimDef: ref<inkAnimDef>;
    protected let m_pressedFillAnimProxy: ref<inkAnimProxy>;
    protected func CreateWidgets() {
        let root: ref<inkCanvas> = new inkCanvas();
        root.SetName(n"button");
        root.SetSize(400.0, 100.0);
        root.SetAnchorPoint(new Vector2(0.5, 0.5));
        root.SetInteractive(true);
        let bg: ref<inkImage> = new inkImage();
        bg.SetName(n"bg");
        bg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bg.BindProperty(n"tintColor", n"MainColors.Fullscreen_PrimaryBackgroundDarkest");
        bg.SetOpacity(0.8);
        bg.SetAnchor(inkEAnchor.Fill);
        bg.SetNineSliceScale(true);
        bg.SetNineSliceGrid(new inkMargin(0.0, 0.0, 10.0, 0.0));
        bg.Reparent(root);
        let fill: ref<inkImage> = new inkImage();
        fill.SetName(n"fill");
        fill.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        fill.SetOpacity(0.0);
        fill.SetAnchor(inkEAnchor.Fill);
        fill.SetNineSliceScale(true);
        fill.SetNineSliceGrid(new inkMargin(0.0, 0.0, 10.0, 0.0));
        fill.Reparent(root);
        let frame: ref<inkImage> = new inkImage();
        frame.SetName(n"frame");
        frame.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frame.SetOpacity(1.0);
        frame.SetAnchor(inkEAnchor.Fill);
        frame.SetNineSliceScale(true);
        frame.SetNineSliceGrid(new inkMargin(0.0, 0.0, 10.0, 0.0));
        frame.Reparent(root);
        let label: ref<inkText> = new inkText();
        label.SetName(n"label");
        label.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        label.SetFontStyle(n"Medium");
        label.SetFontSize(50);
        label.SetLetterCase(textLetterCase.UpperCase);
        label.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        label.BindProperty(n"tintColor", n"MainColors.Blue");
        label.SetAnchor(inkEAnchor.Fill);
        label.SetHorizontalAlignment(textHorizontalAlignment.Center);
        label.SetVerticalAlignment(textVerticalAlignment.Center);
        label.SetText("BUTTON");
        label.Reparent(root);
        this.m_root = root;
        this.m_label = label;
        this.m_bg = bg;
        this.m_fill = fill;
        this.m_frame = frame;
        this.SetRootWidget(root);
        this.ApplyFlippedState();
    }
    protected func CreateAnimations() {
        let disabledRootAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        disabledRootAlphaAnim.SetStartTransparency(1.0);
        disabledRootAlphaAnim.SetEndTransparency(0.3);
        disabledRootAlphaAnim.SetDuration(this.m_useAnimations ? 0.05 : 0.0001);
        this.m_disabledRootAnimDef = new inkAnimDef();
        this.m_disabledRootAnimDef.AddInterpolator(disabledRootAlphaAnim);
        let hoverFillColorAnim: ref<inkAnimColor> = new inkAnimColor();
        hoverFillColorAnim.SetStartColor(ThemeColors.BlackPearl());
        hoverFillColorAnim.SetEndColor(ThemeColors.Bittersweet());
        hoverFillColorAnim.SetDuration(this.m_useAnimations ? 0.2 : 0.0001);
        let hoverFillAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        hoverFillAlphaAnim.SetStartTransparency(0.0);
        hoverFillAlphaAnim.SetEndTransparency(0.3);
        hoverFillAlphaAnim.SetDuration(this.m_useAnimations ? 0.05 : 0.0001);
        this.m_hoverFillAnimDef = new inkAnimDef();
        this.m_hoverFillAnimDef.AddInterpolator(hoverFillColorAnim);
        this.m_hoverFillAnimDef.AddInterpolator(hoverFillAlphaAnim);
        let hoverFrameColorAnim: ref<inkAnimColor> = new inkAnimColor();
        hoverFrameColorAnim.SetStartColor(ThemeColors.RedOxide());
        hoverFrameColorAnim.SetEndColor(ThemeColors.ElectricBlue());
        hoverFrameColorAnim.SetDuration(this.m_useAnimations ? 0.2 : 0.0001);
        this.m_hoverFrameAnimDef = new inkAnimDef();
        this.m_hoverFrameAnimDef.AddInterpolator(hoverFrameColorAnim);
        let pressedFillAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        pressedFillAlphaAnim.SetStartTransparency(0.3);
        pressedFillAlphaAnim.SetEndTransparency(0.4);
        pressedFillAlphaAnim.SetDuration(this.m_useAnimations ? 0.05 : 0.0001);
        this.m_pressedFillAnimDef = new inkAnimDef();
        this.m_pressedFillAnimDef.AddInterpolator(pressedFillAlphaAnim);
    }
    protected func ApplyFlippedState() {
        this.m_bg.SetTexturePart(this.m_isFlipped ? n"cell_flip_bg" : n"cell_bg");
        this.m_fill.SetTexturePart(this.m_isFlipped ? n"cell_flip_bg" : n"cell_bg");
        this.m_frame.SetTexturePart(this.m_isFlipped ? n"cell_flip_fg" : n"cell_fg");
    }
    protected func ApplyDisabledState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isDisabled;
        this.m_disabledRootAnimProxy.Stop();
        this.m_disabledRootAnimProxy = this.m_root.PlayAnimationWithOptions(this.m_disabledRootAnimDef, reverseAnimOpts);
    }
    protected func ApplyHoveredState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isHovered || this.m_isDisabled;
        this.m_hoverFillAnimProxy.Stop();
        this.m_hoverFillAnimProxy = this.m_fill.PlayAnimationWithOptions(this.m_hoverFillAnimDef, reverseAnimOpts);
        this.m_hoverFrameAnimProxy.Stop();
        this.m_hoverFrameAnimProxy = this.m_frame.PlayAnimationWithOptions(this.m_hoverFrameAnimDef, reverseAnimOpts);
    }
    protected func ApplyPressedState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isPressed || this.m_isDisabled;
        this.m_pressedFillAnimProxy.Stop();
        this.m_pressedFillAnimProxy = this.m_fill.PlayAnimationWithOptions(this.m_pressedFillAnimDef, reverseAnimOpts);
    }
    public func SetFlipped(isFlipped: Bool) {
        this.m_isFlipped = isFlipped;
        this.ApplyFlippedState();
    }
    public static func Create() -> ref<SimpleButton> {
        let self: ref<SimpleButton> = new SimpleButton();
        self.CreateInstance();
        return self;
    }
}

public abstract class inkCustomController extends inkLogicController {
    private let m_isCreated: Bool;
    private let m_isInitialized: Bool;
    private let m_detachedWidget: ref<inkWidget>;
    private let m_gameController: wref<inkGameController>;
    private let m_pendingCallbacks: array<inkPendingCallback>;
    protected let m_rootWidget: wref<inkWidget>;
    protected let m_containerWidget: wref<inkCompoundWidget>;
    protected func IsInitialized() -> Bool {
        return this.m_isInitialized;
    }
    protected func SetRootWidget(rootWidget: ref<inkWidget>) {
        this.m_rootWidget = rootWidget;
        if IsDefined(this.m_rootWidget) {
            let controller = this.m_rootWidget.GetController();
            if !IsDefined(controller) {
                this.m_rootWidget.AttachController(this);
            } else {
                controller = this.m_rootWidget.GetControllerByType(this.GetClassName());
                if !IsDefined(controller) {
                    this.m_rootWidget.AttachController(this, true);
                }
            }
            if !inkWidgetHelper.InWindowTree(this.m_rootWidget) {
                this.m_detachedWidget = this.m_rootWidget;
            }
            if ArraySize(this.m_pendingCallbacks) > 0 {
                for callback in this.m_pendingCallbacks {
                    this.m_rootWidget.RegisterToCallback(callback.event, callback.object, callback.function);
                }
                ArrayClear(this.m_pendingCallbacks);
            }
        } else {
            this.m_detachedWidget = null;
        }
    }
    protected func SetContainerWidget(containerWidget: ref<inkCompoundWidget>) {
        this.m_containerWidget = containerWidget;
    }
    protected func SetGameController(gameController: ref<inkGameController>) {
        this.m_gameController = gameController;
    }
    protected func SetGameController(parentController: ref<inkCustomController>) {
        this.m_gameController = parentController.GetGameController();
    }
    protected func CreateInstance() {
        if !this.m_isCreated {
            this.OnCreate();
            this.CallCustomCallback(n"OnCreate");
            if IsDefined(this.m_rootWidget) {
                this.m_isCreated = true;
            }
        }
    }
    protected func InitializeInstance() {
        if this.m_isCreated && !this.m_isInitialized {
            if inkWidgetHelper.InWindowTree(this.m_rootWidget) {
                this.InitializeChildren(this.GetRootCompoundWidget());
                this.OnInitialize();
                this.CallCustomCallback(n"OnInitialize");
                this.m_isInitialized = true;
                this.m_detachedWidget = null;
            }
        }
    }
    protected func InitializeChildren(rootWidget: wref<inkCompoundWidget>) {
        if IsDefined(rootWidget) {
            let index: Int32 = 0;
            let numChildren: Int32 = rootWidget.GetNumChildren();
            let childWidget: wref<inkWidget>;
            let childControllers: array<wref<inkLogicController>>;
            let customController: wref<inkCustomController>;
            while index < numChildren {
                childWidget = rootWidget.GetWidgetByIndex(index);
                childControllers = childWidget.GetControllers();
                for childController in childControllers {
                    customController = childController as inkCustomController;
                    if IsDefined(customController) {
                        customController.SetGameController(this);
                        customController.InitializeInstance();
                    }
                }
                if childWidget.IsA(n"inkCompoundWidget") && !IsDefined(childWidget.GetController() as inkCustomController) {
                    this.InitializeChildren(childWidget as inkCompoundWidget);
                }
                index += 1;
            }
        }
    }
    protected cb func OnCreate()
    protected cb func OnInitialize()
    protected cb func OnUninitialize() ->  Void {
        this.m_detachedWidget = null;
    }
    protected cb func OnReparent(parent: ref<inkCompoundWidget>) ->  Void
    public func GetRootWidget() -> wref<inkWidget> {
        return this.m_rootWidget;
    }
    public func GetRootCompoundWidget() -> wref<inkCompoundWidget> {
        return this.m_rootWidget as inkCompoundWidget;
    }
    public func GetContainerWidget() -> wref<inkCompoundWidget> {
        if IsDefined(this.m_containerWidget) {
            return this.m_containerWidget;
        }
        return this.m_rootWidget as inkCompoundWidget;
    }
    public func GetGameController() -> wref<inkGameController> {
        return this.m_gameController;
    }
    public func GetPlayer() -> ref<PlayerPuppet> {
        return this.m_gameController.GetPlayerControlledObject() as PlayerPuppet;
    }
    public func GetGame() -> GameInstance {
        return this.m_gameController.GetPlayerControlledObject().GetGame();
    }
    public func CallCustomCallback(eventName: CName) {
        if IsDefined(this.m_rootWidget) {
            this.m_rootWidget.CallCustomCallback(eventName);
        }
    }
    public func RegisterToCallback(eventName: CName, object: ref<IScriptable>, functionName: CName) {
        if IsDefined(this.m_rootWidget) {
            this.m_rootWidget.RegisterToCallback(eventName, object, functionName);
        } else {
            ArrayPush(this.m_pendingCallbacks, new inkPendingCallback(eventName, object, functionName));
        }
    }
    public func UnregisterFromCallback(eventName: CName, object: ref<IScriptable>, functionName: CName) {
        if IsDefined(this.m_rootWidget) {
            this.m_rootWidget.UnregisterFromCallback(eventName, object, functionName);
        }
    }
    public func RegisterToGlobalInputCallback(eventName: CName, object: ref<IScriptable>, functionName: CName) {
        if IsDefined(this.m_gameController) {
            this.m_gameController.RegisterToGlobalInputCallback(eventName, object, functionName);
        }
    }
    public func UnregisterFromGlobalInputCallback(eventName: CName, object: ref<IScriptable>, functionName: CName) {
        if IsDefined(this.m_gameController) {
            this.m_gameController.UnregisterFromGlobalInputCallback(eventName, object, functionName);
        }
    }
    public func PlaySound(widgetName: CName, eventName: CName, opt actionKey: CName) {
        if IsDefined(this.m_gameController) {
            this.m_gameController.PlaySound(widgetName, eventName, actionKey);
        }
    }
    public func Reparent(newParent: wref<inkCompoundWidget>) {
        this.Reparent(newParent, -1);
    }
    public func Reparent(newParent: wref<inkCompoundWidget>, index: Int32) {
        this.CreateInstance();
        if IsDefined(this.m_rootWidget) && IsDefined(newParent) {
            this.m_rootWidget.Reparent(newParent, index);
            this.OnReparent(newParent);
            this.CallCustomCallback(n"OnReparent");
            this.InitializeInstance();
        }
    }
    public func Reparent(newParent: wref<inkCompoundWidget>, gameController: ref<inkGameController>) {
        if IsDefined(gameController) {
            this.SetGameController(gameController);
        }
        this.Reparent(newParent, -1);
    }
    public func Reparent(newParent: wref<inkCustomController>) {
        this.Reparent(newParent, -1);
    }
    public func Reparent(newParent: wref<inkCustomController>, index: Int32) {
        if IsDefined(newParent.GetGameController()) {
            this.SetGameController(newParent.GetGameController());
        }
        this.Reparent(newParent.GetContainerWidget(), index);
    }
    public func Mount(rootWidget: ref<inkCompoundWidget>, opt gameController: wref<inkGameController>) {
        if !this.m_isInitialized && IsDefined(rootWidget) {
            this.SetRootWidget(rootWidget);
            this.SetGameController(gameController);
            this.CreateInstance();
            this.InitializeInstance();
        }
    }
    public func Mount(rootController: ref<inkLogicController>, opt gameController: ref<inkGameController>) {
        this.Mount(rootController.GetRootCompoundWidget(), gameController);
    }
    public func Mount(rootController: ref<inkGameController>) {
        this.Mount(rootController.GetRootCompoundWidget(), rootController);
    }
}
private struct inkPendingCallback {
    let event: CName;
    let object: ref<IScriptable>;
    let function: CName;
}

public abstract class inkCustomEvent extends inkEvent {
    protected let controller: ref<inkCustomController>;
    public func GetController() -> wref<inkCustomController> {
        return this.controller;
    }
}

public abstract class inkWidgetHelper {
    public static func InWindowTree(widget: ref<inkWidget>) -> Bool {
        while (IsDefined(widget)) {
            if widget.IsA(n"inkVirtualWindow") {
                return true;
            }
            widget = widget.GetParentWidget();
        }
        return false;
    }
    public static func GetControllersByType(widget: ref<inkWidget>, controllerType: CName, out controllers: array<ref<inkLogicController>>) {
        let controller = widget.GetControllerByType(controllerType);
        if IsDefined(controller) {
            ArrayPush(controllers, controller);
        } else {
            let container = widget as inkCompoundWidget;
            if IsDefined(container) {
                let i = 0;
                let n = container.GetNumChildren();
                while i < n {
                    inkWidgetHelper.GetControllersByType(container.GetWidget(i), controllerType, controllers);
                    i += 1;
                }
            }
        }
    }
    public static func GetClosestControllerByType(widget: ref<inkWidget>, controllerType: CName) -> ref<inkLogicController> {
        while IsDefined(widget) {
            let controller = widget.GetControllerByType(controllerType);
            if IsDefined(controller) {
                return controller;
            }
            widget = widget.parentWidget;
        }
        return null;
    }
}

public abstract class CustomPopup extends inkCustomController {
    protected let m_notificationData: ref<inkGameNotificationData>;
    protected let m_notificationToken: ref<inkGameNotificationToken>;
    protected let m_transitionAnimProxy: ref<inkAnimProxy>;
    protected let m_closeAction: CName;
    protected func SetNotificationData(notificationData: ref<inkGameNotificationData>) {
        this.m_notificationData = notificationData;
        this.m_notificationToken = notificationData.token;
    }
    protected func ResetNotificationData() {
        this.m_notificationToken.TriggerCallback(this.m_notificationData);
        this.m_notificationToken = null;
        this.m_notificationData = null;
    }
    protected func IsTopPopup() -> Bool {
        let popupData = this.m_notificationData as CustomPopupNotificationData;
        return !IsDefined(popupData) || popupData.manager.IsOnTop(this);
    }
    protected cb func OnInitialize() {
        super.OnInitialize();
        this.m_closeAction = n"cancel";
    }
    protected cb func OnAttach() {
        this.RegisterToGlobalInputCallback(n"OnPostOnRelease", this, n"OnGlobalReleaseInput");
        this.CallCustomCallback(n"OnShow");
        this.OnShow();
    }
    protected cb func OnDetach() {
        this.GetGameController().RequestSetFocus(null);
        this.UnregisterFromGlobalInputCallback(n"OnPostOnRelease", this, n"OnGlobalReleaseInput");
        this.CallCustomCallback(n"OnClose");
        this.CallCustomCallback(n"OnHide");
        this.OnHide();
    }
    protected cb func OnShow() {
        let alphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        alphaAnim.SetStartTransparency(0.0);
        alphaAnim.SetEndTransparency(1.0);
        alphaAnim.SetType(inkanimInterpolationType.Linear);
        alphaAnim.SetMode(inkanimInterpolationMode.EasyIn);
        alphaAnim.SetDuration(0.5);
        let animDef: ref<inkAnimDef> = new inkAnimDef();
        animDef.AddInterpolator(alphaAnim);
        this.m_transitionAnimProxy = this.GetRootWidget().PlayAnimation(animDef);
        this.m_transitionAnimProxy.RegisterToCallback(inkanimEventType.OnFinish, this, n"OnShowFinish");
    }
    protected cb func OnShowFinish(animProxy: ref<inkAnimProxy>) -> Bool {
        this.m_transitionAnimProxy = null;
        this.OnShown();
        this.CallCustomCallback(n"OnShown");
    }
    protected cb func OnShown()
    protected cb func OnHide() {
        let alphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        alphaAnim.SetStartTransparency(1.0);
        alphaAnim.SetEndTransparency(0.0);
        alphaAnim.SetType(inkanimInterpolationType.Linear);
        alphaAnim.SetMode(inkanimInterpolationMode.EasyIn);
        alphaAnim.SetDuration(0.25);
        let animDef: ref<inkAnimDef> = new inkAnimDef();
        animDef.AddInterpolator(alphaAnim);
        this.m_transitionAnimProxy = this.GetRootWidget().PlayAnimation(animDef);
        this.m_transitionAnimProxy.RegisterToCallback(inkanimEventType.OnFinish, this, n"OnHideFinish");
    }
    protected cb func OnHideFinish(animProxy: ref<inkAnimProxy>) -> Bool {
        this.m_transitionAnimProxy = null;
        this.CallCustomCallback(n"OnHidden");
        this.OnHidden();
    }
    protected cb func OnHidden() {
        this.ResetNotificationData();
        this.SetGameController(null);
        this.SetRootWidget(null);
    }
    protected cb func OnGlobalReleaseInput(evt: ref<inkPointerEvent>) -> Bool {
        if evt.IsAction(this.m_closeAction) && !evt.IsHandled() && this.IsTopPopup() {
            this.Close();
            evt.Handle();
            return true;
        }
        if this.UseCursor() && evt.IsAction(n"mouse_left") {
            if !IsDefined(evt.GetTarget()) || !evt.GetTarget().CanSupportFocus() {
                this.GetGameController().RequestSetFocus(null);
            }
        }
        return false;
    }
    public func GetName() -> CName {
        return this.GetClassName();
    }
    public func GetQueueName() -> CName {
        return n"modal_popup";
    }
    public func IsBlocking() -> Bool {
        return true;
    }
    public func UseCursor() -> Bool {
        return false;
    }
    public func Open(requester: wref<inkGameController>) {
        let uiSystem: ref<UISystem> = GameInstance.GetUISystem(requester.GetPlayerControlledObject().GetGame());
        let showEvent: ref<ShowCustomPopupEvent> = ShowCustomPopupEvent.Create(this);
        uiSystem.QueueEvent(showEvent);
    }
    public func Close() {
        let uiSystem: ref<UISystem> = GameInstance.GetUISystem(this.GetGame());
        let hideEvent: ref<HideCustomPopupEvent> = HideCustomPopupEvent.Create(this);
        uiSystem.QueueEvent(hideEvent);
    }
    public func Attach(rootWidget: ref<inkCanvas>, gameController: wref<inkGameController>, notificationData: ref<inkGameNotificationData>) {
        if !this.IsInitialized() {
            this.SetRootWidget(rootWidget);
            this.SetGameController(gameController);
            this.SetNotificationData(notificationData);
            this.CreateInstance();
            this.InitializeInstance();
            this.OnAttach();
            this.CallCustomCallback(n"OnAttach");
        }
    }
    public func Detach() {
        if this.IsInitialized() {
            this.OnDetach();
            this.CallCustomCallback(n"OnDetach");
        }
    }
}

@addField(GenericMessageNotificationData)
public let params: ref<inkTextParams>;
@addField(GenericMessageNotificationData)
public let isInput: Bool;
@addField(GenericMessageNotificationCloseData)
public let input: String;
@addField(GenericMessageNotification)
public let m_textInput: ref<TextInput>;
@addMethod(GenericMessageNotification)
public final static func Show(controller: ref<worlduiIGameController>, title: String, message: String, params: ref<inkTextParams>, type: GenericMessageNotificationType) -> ref<inkGameNotificationToken> {
    let data = GenericMessageNotification.GetBaseData();
    data.title = title;
    data.message = message;
    data.params = params;
    data.type = type;
    return controller.ShowGameNotification(data);
}
@addMethod(GenericMessageNotification)
public final static func ShowInput(controller: ref<worlduiIGameController>, title: String, message: String, type: GenericMessageNotificationType) -> ref<inkGameNotificationToken> {
    let data = GenericMessageNotification.GetBaseData();
    data.title = title;
    data.message = message;
    data.type = type;
    data.isInput = true;
    return controller.ShowGameNotification(data);
}
@wrapMethod(GenericMessageNotification)
protected cb func OnInitialize() -> Bool {
    wrappedMethod();
    if IsDefined(this.m_data.params) {
        inkTextRef.SetText(this.m_message, this.m_data.message, this.m_data.params);
    }
    if this.m_data.isInput {
        let content = this.GetChildWidgetByPath(n"notification/main/inkVerticalPanelWidget18") as inkCompoundWidget;
        let line = this.GetChildWidgetByPath(n"notification/main/inkVerticalPanelWidget18/line");
        let title = this.GetChildWidgetByPath(n"notification/main/inkVerticalPanelWidget18/title");
        let icon = this.GetChildWidgetByPath(n"notification/main/warning_icon");
        this.m_textInput = HubTextInput.Create();
        this.m_textInput.SetName(n"TextInput");
        this.m_textInput.SetLetterCase(textLetterCase.UpperCase);
        this.m_textInput.Reparent(content);
        let textWidget = this.m_textInput.GetRootWidget();
        textWidget.SetMargin(new inkMargin(66.0, 4.0, 50.0, 36.0));
        this.RequestSetFocus(textWidget);
        icon.SetVisible(false);
        line.SetVisible(false);
        title.SetMargin(new inkMargin(66.0, 20.0, 0.0, -30.0));
    }
}
@replaceMethod(GenericMessageNotification)
private final func Close(result: GenericMessageNotificationResult) -> Void {
    this.m_closeData = new GenericMessageNotificationCloseData();
    this.m_closeData.identifier = this.m_data.identifier;
    this.m_closeData.result = result;
    if this.m_data.isInput {
        this.m_closeData.input = this.m_textInput.GetText();
    }
    this.PlayLibraryAnimation(n"outro");
    this.m_data.token.TriggerCallback(this.m_closeData);
}
@wrapMethod(GenericMessageNotification)
protected cb func OnHandlePressInput(evt: ref<inkPointerEvent>) -> Bool {
    wrappedMethod(evt);
    if evt.IsAction(n"click") {
        if !IsDefined(evt.GetTarget()) || !evt.GetTarget().CanSupportFocus() {
            this.RequestSetFocus(null);
        }
    }
}

public abstract class InGamePopup extends CustomPopup {
    protected let m_vignette: wref<inkImage>;
    protected let m_container: wref<inkCompoundWidget>;
    protected cb func OnCreate() {
        super.OnCreate();
        this.CreateVignette();
        this.CreateContainer();
    }
    protected func CreateVignette() {
        let vignette: ref<inkImage> = new inkImage();
        vignette.SetName(n"vignette");
        vignette.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\notifications\\vignette.inkatlas");
        vignette.SetTexturePart(n"vignette_1");
        vignette.SetNineSliceScale(true);
        vignette.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        vignette.BindProperty(n"tintColor", n"MainColors.Red");
        vignette.SetSize(32.0, 32.0);
        vignette.SetAnchor(inkEAnchor.CenterFillHorizontaly);
        vignette.SetAnchorPoint(new Vector2(0.5, 0.5));
        vignette.SetHAlign(inkEHorizontalAlign.Center);
        vignette.SetVAlign(inkEVerticalAlign.Center);
        vignette.SetFitToContent(true);
        vignette.Reparent(this.GetRootCompoundWidget());
        this.m_vignette = vignette;
    }
    protected func CreateContainer() {
        let container: ref<inkCanvas> = new inkCanvas();
        container.SetName(n"container");
        container.SetMargin(new inkMargin(0.0, 0.0, 0.0, 200.0));
        container.SetAnchor(inkEAnchor.Centered);
        container.SetAnchorPoint(new Vector2(0.5, 0.5));
        container.SetSize(new Vector2(1550.0, 840.0));
        container.Reparent(this.GetRootCompoundWidget());
        this.m_container = container;
        this.SetContainerWidget(container);
    }
    protected cb func OnShow() {
        super.OnShow();
        this.SetUIContext();
        this.SetTimeDilation();
        this.SetBackgroundBlur();
        this.PlayShowSound();
    }
    protected cb func OnHide() {
        super.OnHide();
        this.ResetUIContext();
        this.ResetTimeDilation();
        this.ResetBackgroundBlur();
        this.PlayHideSound();
    }
    protected func SetTimeDilation() {
        TimeDilationHelper.SetTimeDilationWithProfile(this.GetPlayer(), "radialMenu", true, true);
    }
    protected func ResetTimeDilation() {
        TimeDilationHelper.SetTimeDilationWithProfile(this.GetPlayer(), "radialMenu", false, false);
    }
    protected func SetBackgroundBlur() {
        PopupStateUtils.SetBackgroundBlur(this.m_gameController, true);
    }
    protected func ResetBackgroundBlur() {
        PopupStateUtils.SetBackgroundBlur(this.m_gameController, false);
    }
    protected func SetUIContext() {
        let uiSystem: ref<UISystem> = GameInstance.GetUISystem(this.GetGame());
        uiSystem.PushGameContext(UIGameContext.ModalPopup);
        uiSystem.RequestNewVisualState(n"inkModalPopupState");
    }
    protected func ResetUIContext() {
        let uiSystem: ref<UISystem> = GameInstance.GetUISystem(this.GetGame());
        uiSystem.PopGameContext(UIGameContext.ModalPopup);
        uiSystem.RestorePreviousVisualState(n"inkModalPopupState");
    }
    protected func PlayShowSound() {
    }
    protected func PlayHideSound() {
    }
    public func GetQueueName() -> CName {
        return n"game_popup";
    }
}

public class InGamePopupContent extends inkCustomController {
    protected let m_content: wref<inkFlex>;
    protected cb func OnCreate() {
        let content: ref<inkFlex> = new inkFlex();
        content.SetName(n"content");
        content.SetMargin(new inkMargin(76.0, 135.0, 0.0, 118.0));
        content.SetAnchor(inkEAnchor.Fill);
        this.m_content = content;
        this.SetRootWidget(content);
    }
    protected cb func OnReparent(parent: ref<inkCompoundWidget>) ->  Void {
        let contentMargin: inkMargin = this.GetRootWidget().GetMargin();
        let contentSize: Vector2 = parent.GetSize();
        contentSize.X -= contentMargin.left + contentMargin.right;
        contentSize.Y -= contentMargin.top + contentMargin.bottom;
        this.m_content.SetSize(contentSize);
    }
    public func GetSize() -> Vector2 {
        return this.m_content.GetSize();
    }
    public static func Create() -> ref<InGamePopupContent> {
        let self: ref<InGamePopupContent> = new InGamePopupContent();
        self.CreateInstance();
        return self;
    }
}

public class InGamePopupFooter extends inkCustomController {
    protected let m_fluffIcon: wref<inkImage>;
    protected let m_fluffText: wref<inkText>;
    protected let m_inputHolder: wref<inkCompoundWidget>;
    protected let m_buttonHints: wref<ButtonHintsEx>;
    protected cb func OnCreate() {
        let footer: ref<inkCanvas> = new inkCanvas();
        footer.SetName(n"footer");
        footer.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        let line: ref<inkRectangle> = new inkRectangle();
        line.SetName(n"line");
        line.SetMargin(new inkMargin(76.0, 0.0, 76.0, 90.0));
        line.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        line.SetAnchorPoint(new Vector2(0.5, 0.5));
        line.SetOpacity(0.133);
        line.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        line.BindProperty(n"tintColor", n"MainColors.Red");
        line.SetSize(new Vector2(1170.0, 2.0));
        line.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        line.Reparent(footer);
        let fluffIcon: ref<inkImage> = new inkImage();
        fluffIcon.SetName(n"fluffIcon");
        fluffIcon.SetVisible(false);
        fluffIcon.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\scanning\\scanner_tooltip\\atlas_scanner.inkatlas");
        fluffIcon.SetFitToContent(true);
        fluffIcon.SetMargin(new inkMargin(76.0, 0.0, 0.0, 10.0));
        fluffIcon.SetHAlign(inkEHorizontalAlign.Center);
        fluffIcon.SetVAlign(inkEVerticalAlign.Center);
        fluffIcon.SetAnchor(inkEAnchor.BottomLeft);
        fluffIcon.SetAnchorPoint(new Vector2(0.0, 1.0));
        fluffIcon.SetOpacity(0.217);
        fluffIcon.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fluffIcon.BindProperty(n"tintColor", n"MainColors.Red");
        fluffIcon.SetSize(new Vector2(32.0, 32.0));
        fluffIcon.Reparent(footer);
        let fluffText: ref<inkText> = new inkText();
        fluffText.SetName(n"fluffText");
        fluffText.SetVisible(false);
        fluffText.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        fluffText.SetFontStyle(n"Regular");
        fluffText.SetFontSize(20);
        fluffText.SetFitToContent(true);
        fluffText.SetMargin(new inkMargin(135.0, 0.0, 0.0, 75.0));
        fluffText.SetAnchor(inkEAnchor.BottomLeft);
        fluffText.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fluffText.BindProperty(n"tintColor", n"MainColors.Red");
        fluffText.SetSize(new Vector2(100.0, 32.0));
        fluffText.Reparent(footer);
        let inputHolder: ref<inkCanvas> = new inkCanvas();
        inputHolder.SetName(n"inputHolder");
        inputHolder.SetFitToContent(true);
        inputHolder.SetHAlign(inkEHorizontalAlign.Right);
        inputHolder.SetAnchor(inkEAnchor.BottomRight);
        inputHolder.SetAnchorPoint(new Vector2(1.0, 1.0));
        inputHolder.SetRenderTransformPivot(new Vector2(1.0, 1.0));
        inputHolder.SetMargin(new inkMargin(0.0, 0.0, 32.0, 0.0));
        inputHolder.Reparent(footer);
        this.m_fluffIcon = fluffIcon;
        this.m_fluffText = fluffText;
        this.m_inputHolder = inputHolder;
        this.SetRootWidget(footer);
    }
    protected cb func OnInitialize() {
        this.m_buttonHints = ButtonHintsManager.GetInstance().SpawnButtonHints(this.m_inputHolder);
        this.m_buttonHints.SetStyle(n"popup");
        this.m_buttonHints.AddButtonHint(n"cancel", "UI-UserActions-Close");
    }
    public func GetHints() -> wref<ButtonHintsEx> {
        return this.m_buttonHints;
    }
    public func SetFluffIcon(icon: CName) {
        this.m_fluffIcon.SetTexturePart(icon);
        this.m_fluffIcon.SetVisible(true);
    }
    public func SetFluffIcon(icon: CName, atlas: ResRef) {
        this.m_fluffIcon.SetAtlasResource(atlas);
        this.m_fluffIcon.SetTexturePart(icon);
        this.m_fluffIcon.SetVisible(true);
    }
    public func SetFluffText(text: String) {
        this.m_fluffText.SetText(text);
        this.m_fluffText.SetVisible(true);
    }
    public static func Create() -> ref<InGamePopupFooter> {
        let self: ref<InGamePopupFooter> = new InGamePopupFooter();
        self.CreateInstance();
        return self;
    }
}

public class InGamePopupHeader extends inkCustomController {
    protected let m_title: wref<inkText>;
    protected let m_fluffLeft: wref<inkText>;
    protected let m_fluffRight: wref<inkText>;
    protected cb func OnCreate() {
        let header: ref<inkFlex> = new inkFlex();
        header.SetName(n"header");
        header.SetMargin(new inkMargin(76.0, 32.0, 76.0, 0.0));
        header.SetAnchor(inkEAnchor.TopFillHorizontaly);
        let bar: ref<inkFlex> = new inkFlex();
        bar.SetName(n"bar");
        bar.SetMargin(new inkMargin(24.0, 0.0, 0.0, 0.0));
        bar.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        bar.Reparent(header);
        let bg: ref<inkImage> = new inkImage();
        bg.SetName(n"bg");
        bg.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\notifications\\notification_assets.inkatlas");
        bg.SetTexturePart(n"Plate_main");
        bg.SetNineSliceScale(true);
        bg.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        bg.SetAnchorPoint(new Vector2(1.0, 1.0));
        bg.SetOpacity(0.61);
        bg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bg.BindProperty(n"tintColor", n"MainColors.Fullscreen_PrimaryBackgroundDarkest");
        bg.Reparent(bar);
        let bgr: ref<inkImage> = new inkImage();
        bgr.SetName(n"bgr");
        bgr.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\notifications\\notification_assets.inkatlas");
        bgr.SetTexturePart(n"Plate_main");
        bgr.SetNineSliceScale(true);
        bgr.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        bgr.SetAnchorPoint(new Vector2(1.0, 1.0));
        bgr.SetOpacity(0.07);
        bgr.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bgr.BindProperty(n"tintColor", n"MainColors.PanelDarkRed");
        bgr.SetRenderTransformPivot(new Vector2(1.0, 1.0));
        bgr.Reparent(bar);
        let frame: ref<inkImage> = new inkImage();
        frame.SetName(n"frame");
        frame.SetAtlasResource(r"base\\gameplay\\gui\\widgets\\notifications\\notification_assets.inkatlas");
        frame.SetTexturePart(n"Plate_main_Stroke");
        frame.SetNineSliceScale(true);
        frame.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        frame.SetAnchorPoint(new Vector2(1.0, 1.0));
        frame.SetOpacity(0.217);
        frame.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        frame.BindProperty(n"tintColor", n"MainColors.Red");
        frame.SetRenderTransformPivot(new Vector2(1.0, 1.0));
        frame.Reparent(bar);
        let bracketBg: ref<inkImage> = new inkImage();
        bracketBg.SetName(n"bracketBg");
        bracketBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bracketBg.SetTexturePart(n"notification_bracket_bg");
        bracketBg.SetNineSliceScale(true);
        bracketBg.SetFitToContent(true);
        bracketBg.SetHAlign(inkEHorizontalAlign.Left);
        bracketBg.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        bracketBg.SetAnchorPoint(new Vector2(1.0, 1.0));
        bracketBg.SetOpacity(0.61);
        bracketBg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bracketBg.BindProperty(n"tintColor", n"MainColors.Fullscreen_PrimaryBackgroundDarkest");
        bracketBg.SetRenderTransformPivot(new Vector2(1.0, 1.0));
        bracketBg.Reparent(header);
        let bracketBgr: ref<inkImage> = new inkImage();
        bracketBgr.SetName(n"bracketBgr");
        bracketBgr.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bracketBgr.SetTexturePart(n"notification_bracket_bg");
        bracketBgr.SetNineSliceScale(true);
        bracketBgr.SetFitToContent(true);
        bracketBgr.SetHAlign(inkEHorizontalAlign.Left);
        bracketBgr.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        bracketBgr.SetAnchorPoint(new Vector2(1.0, 1.0));
        bracketBgr.SetOpacity(0.217);
        bracketBgr.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bracketBgr.BindProperty(n"tintColor", n"MainColors.Red");
        bracketBgr.Reparent(header);
        let bracketFg: ref<inkImage> = new inkImage();
        bracketFg.SetName(n"bracketFg");
        bracketFg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bracketFg.SetTexturePart(n"notification_bracket_fg");
        bracketFg.SetNineSliceScale(true);
        bracketFg.SetFitToContent(true);
        bracketFg.SetHAlign(inkEHorizontalAlign.Left);
        bracketFg.SetAnchor(inkEAnchor.BottomFillHorizontaly);
        bracketFg.SetAnchorPoint(new Vector2(1.0, 1.0));
        bracketFg.SetOpacity(0.217);
        bracketFg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bracketFg.BindProperty(n"tintColor", n"MainColors.Red");
        bracketFg.Reparent(header);
        let title: ref<inkText> = new inkText();
        title.SetName(n"title");
        title.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        title.SetFontStyle(n"Medium");
        title.SetFontSize(50);
        title.SetLetterCase(textLetterCase.UpperCase);
        title.SetFitToContent(true);
        title.SetMargin(new inkMargin(48.0, 8.0, 200.0, 6.0));
        title.SetHAlign(inkEHorizontalAlign.Left);
        title.SetVAlign(inkEVerticalAlign.Center);
        title.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        title.BindProperty(n"tintColor", n"MainColors.Blue");
        title.Reparent(header);
        let fluffTextR: ref<inkText> = new inkText();
        fluffTextR.SetName(n"fluffTextR");
        fluffTextR.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        fluffTextR.SetFontStyle(n"Medium");
        fluffTextR.SetFontSize(20);
        fluffTextR.SetLetterCase(textLetterCase.UpperCase);
        fluffTextR.SetHorizontalAlignment(textHorizontalAlignment.Right);
        fluffTextR.SetFitToContent(true);
        fluffTextR.SetMargin(new inkMargin(0.0, -30.0, 0.0, 0.0));
        fluffTextR.SetHAlign(inkEHorizontalAlign.Right);
        fluffTextR.SetAnchor(inkEAnchor.TopRight);
        fluffTextR.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fluffTextR.BindProperty(n"tintColor", n"MainColors.Red");
        fluffTextR.SetRenderTransformPivot(new Vector2(1.0, 0.5));
        fluffTextR.Reparent(header);
        let fluffTextL: ref<inkText> = new inkText();
        fluffTextL.SetName(n"fluffTextL");
        fluffTextL.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        fluffTextL.SetFontStyle(n"Medium");
        fluffTextL.SetFontSize(20);
        fluffTextL.SetLetterCase(textLetterCase.UpperCase);
        fluffTextL.SetText("TRN_TCLAS_800095");
        fluffTextL.SetFitToContent(true);
        fluffTextL.SetMargin(new inkMargin(0.0, -30.0, 0.0, 0.0));
        fluffTextL.SetHAlign(inkEHorizontalAlign.Left);
        fluffTextL.SetAnchor(inkEAnchor.TopRight);
        fluffTextL.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fluffTextL.BindProperty(n"tintColor", n"MainColors.Red");
        fluffTextL.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        fluffTextL.Reparent(header);
        this.m_title = title;
        this.m_fluffLeft = fluffTextL;
        this.m_fluffRight = fluffTextR;
        this.SetRootWidget(header);
    }
    public func SetTitle(text: String) {
        this.m_title.SetText(text);
    }
    public func SetFluffLeft(text: String) {
        this.m_fluffLeft.SetText(text);
    }
    public func SetFluffRight(text: String) {
        this.m_fluffRight.SetText(text);
    }
    public static func Create() -> ref<InGamePopupHeader> {
        let self: ref<InGamePopupHeader> = new InGamePopupHeader();
        self.CreateInstance();
        return self;
    }
}

public abstract class InMenuPopup extends CustomPopup {
    protected let m_container: wref<inkCompoundWidget>;
    protected let m_result: GenericMessageNotificationResult;
    protected let m_confirmAction: CName;
    protected cb func OnCreate() {
        super.OnCreate();
        this.CreateVignette();
        this.CreateContainer();
    }
    protected func CreateVignette() {
        let fader = new inkRectangle();
        fader.SetName(n"fader");
        fader.SetAnchor(inkEAnchor.Fill);
        fader.SetOpacity(0.7);
        fader.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        fader.BindProperty(n"tintColor", n"Popup.faderColor");
        fader.SetSize(new Vector2(64.0, 64.0));
        fader.Reparent(this.GetRootCompoundWidget());
        let bg1 = new inkImage();
        bg1.SetName(n"bg1");
        bg1.SetAtlasResource(r"base\\gameplay\\gui\\common\\masks.inkatlas");
        bg1.SetTexturePart(n"frame_gradient1");
        bg1.SetInteractive(true);
        bg1.SetHAlign(inkEHorizontalAlign.Center);
        bg1.SetVAlign(inkEVerticalAlign.Center);
        bg1.SetAnchor(inkEAnchor.Fill);
        bg1.SetAnchorPoint(new Vector2(0.5, 0.0));
        bg1.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bg1.BindProperty(n"tintColor", n"MainColors.PanelDarkRed");
        bg1.SetSize(new Vector2(32.0, 32.0));
        bg1.Reparent(this.GetRootCompoundWidget());
        let shadow = new inkImage();
        shadow.SetName(n"Shadow");
        shadow.SetAtlasResource(r"base\\gameplay\\gui\\common\\shadow_blobs.inkatlas");
        shadow.SetTexturePart(n"shadowBlobSquare_big");
        shadow.SetMargin(new inkMargin(0.0, 760.0, 0.0, 0.0));
        shadow.SetHAlign(inkEHorizontalAlign.Center);
        shadow.SetVAlign(inkEVerticalAlign.Center);
        shadow.SetAnchor(inkEAnchor.TopCenter);
        shadow.SetAnchorPoint(new Vector2(0.5, 0.5));
        shadow.SetStyle(r"base\\gameplay\\gui\\common\\dialogs_popups.inkstyle");
        shadow.BindProperty(n"tintColor", n"Popup.shadowColor");
        shadow.SetSize(new Vector2(2500.0, 1200.0));
        shadow.Reparent(this.GetRootCompoundWidget());
    }
    protected func CreateContainer() {
        let root = this.GetRootCompoundWidget();
        root.SetAnchor(inkEAnchor.Centered);
        root.SetAnchorPoint(new Vector2(0.5, 0.5));
        let container = new inkVerticalPanel();
        container.SetName(n"container");
        container.SetInteractive(true);
        container.SetFitToContent(true);
        container.SetMargin(new inkMargin(0.0, 600.0, 0.0, 0.0));
        container.SetAnchor(inkEAnchor.TopCenter);
        container.SetAnchorPoint(new Vector2(0.5, 0.0));
        container.Reparent(this.GetRootCompoundWidget());
        this.m_container = container;
        this.SetContainerWidget(container);
    }
    protected cb func OnCancel()
    protected cb func OnConfirm()
    protected cb func OnInitialize() {
        super.OnInitialize();
        this.m_confirmAction = n"proceed";
        let buttons: array<ref<inkLogicController>>;
        inkWidgetHelper.GetControllersByType(this.m_container, n"Codeware.UI.PopupButton", buttons);
        for button in buttons {
            let action = (button as PopupButton).GetInputAction();
            switch action {
                case n"proceed":
                case n"proceed_popup":
                case n"one_click_confirm":
                case n"system_notification_confirm":
                case n"UI_Apply":
                    button.RegisterToCallback(n"OnBtnClick", this, n"OnConfirmClick");
                    this.m_confirmAction = action;
                    break;
                case n"cancel":
                case n"cancel_popup":
                case n"back":
                case n"UI_Cancel":
                    button.RegisterToCallback(n"OnBtnClick", this, n"OnCancelClick");
                    this.m_closeAction = action;
                    break;
            }
        }
    }
	protected cb func OnConfirmClick(widget: wref<inkWidget>) {
		this.Confirm();
	}
	protected cb func OnCancelClick(widget: wref<inkWidget>) {
		this.Cancel();
	}
    protected cb func OnGlobalReleaseInput(evt: ref<inkPointerEvent>) -> Bool {
        if evt.IsAction(this.m_closeAction) && !evt.IsHandled() && this.IsTopPopup() {
            this.Cancel();
            evt.Handle();
            return true;
        }
        if evt.IsAction(this.m_confirmAction) && !evt.IsHandled() && this.IsTopPopup() {
            this.Confirm();
            evt.Handle();
            return true;
        }
        return super.OnGlobalReleaseInput(evt);
    }
    protected func Cancel() {
        this.m_result = GenericMessageNotificationResult.Cancel;
        this.OnCancel();
        this.CallCustomCallback(n"OnCancel");
        this.Close();
    }
    protected func Confirm() {
        this.m_result = GenericMessageNotificationResult.Confirm;
        this.OnConfirm();
        this.CallCustomCallback(n"OnConfirm");
        this.Close();
    }
    public func GetQueueName() -> CName {
        return n"menu_popup";
    }
	public func UseCursor() -> Bool {
		return true;
	}
	public func GetResult() -> GenericMessageNotificationResult {
	    return this.m_result;
	}
}

public class InMenuPopupContent extends inkCustomController {
    protected let m_content: wref<inkFlex>;
    protected let m_title: wref<inkText>;
    protected cb func OnCreate() {
        let main: ref<inkFlex> = new inkFlex();
        main.SetName(n"main");
        main.SetAffectsLayoutWhenHidden(true);
        main.SetSize(new Vector2(100.0, 100.0));
        let minSize: ref<inkCanvas> = new inkCanvas();
        minSize.SetName(n"minSize");
        minSize.SetVisible(false);
        minSize.SetAffectsLayoutWhenHidden(true);
        minSize.SetVAlign(inkEVerticalAlign.Top);
        minSize.SetSize(new Vector2(1380.0, 240.0));
        minSize.Reparent(main);
        let wrapper: ref<inkHorizontalPanel> = new inkHorizontalPanel();
        wrapper.SetName(n"wrapper");
        wrapper.SetFitToContent(true);
        wrapper.SetSize(new Vector2(100.0, 100.0));
        wrapper.Reparent(main);
        let left: ref<inkFlex> = new inkFlex();
        left.SetName(n"left");
        left.SetInteractive(true);
        left.SetMargin(new inkMargin(-1.0, 0.0, 0.0, 0.0));
        left.SetHAlign(inkEHorizontalAlign.Left);
        left.SetAnchor(inkEAnchor.LeftFillVerticaly);
        left.SetAnchorPoint(new Vector2(1.0, 0.0));
        left.SetSize(new Vector2(40.0, 400.0));
        left.Reparent(wrapper);
        let sidePartFg: ref<inkImage> = new inkImage();
        sidePartFg.SetName(n"sidePart_fg");
        sidePartFg.SetState(n"Common");
        sidePartFg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        sidePartFg.SetTexturePart(n"notification_bracket_simple_fg");
        sidePartFg.SetNineSliceScale(true);
        sidePartFg.SetMargin(new inkMargin(-2.0, 0.0, 0.0, 0.0));
        sidePartFg.SetHAlign(inkEHorizontalAlign.Left);
        sidePartFg.SetAnchor(inkEAnchor.Fill);
        sidePartFg.SetAnchorPoint(new Vector2(1.0, 0.5));
        sidePartFg.SetOpacity(0.5);
        sidePartFg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        sidePartFg.BindProperty(n"tintColor", n"MainColors.Red");
        sidePartFg.SetSize(new Vector2(40.0, 32.0));
        sidePartFg.Reparent(left);
        let sidePartBg: ref<inkImage> = new inkImage();
        sidePartBg.SetName(n"sidePart_bg");
        sidePartBg.SetState(n"Common");
        sidePartBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        sidePartBg.SetTexturePart(n"notification_bracket_simple_bg");
        sidePartBg.SetNineSliceScale(true);
        sidePartBg.SetMargin(new inkMargin(-2.0, 0.0, 0.0, 0.0));
        sidePartBg.SetHAlign(inkEHorizontalAlign.Left);
        sidePartBg.SetAnchor(inkEAnchor.Fill);
        sidePartBg.SetAnchorPoint(new Vector2(1.0, 0.5));
        sidePartBg.SetOpacity(0.5);
        sidePartBg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        sidePartBg.BindProperty(n"tintColor", n"MainColors.MildRed");
        sidePartBg.SetSize(new Vector2(40.0, 30.0));
        sidePartBg.Reparent(left);
        let sidePartAccent: ref<inkImage> = new inkImage();
        sidePartAccent.SetName(n"sidePart_accent");
        sidePartAccent.SetState(n"Common");
        sidePartAccent.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        sidePartAccent.SetTexturePart(n"perk_cell_side_accent");
        sidePartAccent.SetHAlign(inkEHorizontalAlign.Left);
        sidePartAccent.SetVAlign(inkEVerticalAlign.Center);
        sidePartAccent.SetAnchor(inkEAnchor.CenterLeft);
        sidePartAccent.SetAnchorPoint(new Vector2(0.0, 0.5));
        sidePartAccent.SetOpacity(0.2);
        sidePartAccent.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        sidePartAccent.BindProperty(n"tintColor", n"MainColors.Red");
        sidePartAccent.SetSize(new Vector2(28.0, 8.0));
        sidePartAccent.SetRotation(180.0);
        sidePartAccent.Reparent(left);
        let right: ref<inkFlex> = new inkFlex();
        right.SetName(n"right");
        right.SetAffectsLayoutWhenHidden(true);
        right.SetSizeRule(inkESizeRule.Stretch);
        right.SetSize(new Vector2(1128.0, 400.0));
        right.Reparent(wrapper);
        let accentBg: ref<inkImage> = new inkImage();
        accentBg.SetName(n"accent_bg");
        accentBg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        accentBg.SetTexturePart(n"tooltip_b_bracket_light_bg");
        accentBg.SetNineSliceScale(true);
        accentBg.SetMargin(new inkMargin(0.0, 0.0, -8.0, 0.0));
        accentBg.SetHAlign(inkEHorizontalAlign.Right);
        accentBg.SetVAlign(inkEVerticalAlign.Center);
        accentBg.SetAnchorPoint(new Vector2(0.5, 0.5));
        accentBg.SetOpacity(0.05);
        accentBg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        accentBg.BindProperty(n"tintColor", n"MainColors.MildRed");
        accentBg.SetSize(new Vector2(10.0, 160.0));
        accentBg.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        accentBg.Reparent(right);
        let accentFg: ref<inkImage> = new inkImage();
        accentFg.SetName(n"accent_fg");
        accentFg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        accentFg.SetTexturePart(n"tooltip_b_bracket_light_fg");
        accentFg.SetNineSliceScale(true);
        accentFg.SetMargin(new inkMargin(0.0, 0.0, -8.0, 0.0));
        accentFg.SetHAlign(inkEHorizontalAlign.Right);
        accentFg.SetVAlign(inkEVerticalAlign.Center);
        accentFg.SetAnchorPoint(new Vector2(0.5, 0.5));
        accentFg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        accentFg.BindProperty(n"tintColor", n"MainColors.Red");
        accentFg.SetSize(new Vector2(10.0, 160.0));
        accentFg.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        accentFg.Reparent(right);
        let protocol: ref<inkImage> = new inkImage();
        protocol.SetName(n"protocol");
        protocol.SetAtlasResource(r"base\\gameplay\\gui\\common\\icons\\atlas_common.inkatlas");
        protocol.SetTexturePart(n"fluff_protocol1");
        protocol.SetContentHAlign(inkEHorizontalAlign.Left);
        protocol.SetContentVAlign(inkEVerticalAlign.Top);
        protocol.SetFitToContent(true);
        protocol.SetMargin(new inkMargin(0.0, -54.0, 0.0, 0.0));
        protocol.SetHAlign(inkEHorizontalAlign.Left);
        protocol.SetVAlign(inkEVerticalAlign.Top);
        protocol.SetAnchorPoint(new Vector2(0.5, 0.5));
        protocol.SetOpacity(0.3);
        protocol.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        protocol.BindProperty(n"tintColor", n"MainColors.MildRed");
        protocol.SetSize(new Vector2(32.0, 32.0));
        protocol.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        protocol.SetScale(new Vector2(0.3, 0.3));
        protocol.Reparent(right);
        let bg: ref<inkImage> = new inkImage();
        bg.SetName(n"bg");
        bg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bg.SetTexturePart(n"cell_bg");
        bg.SetNineSliceScale(true);
        bg.SetAffectsLayoutWhenHidden(true);
        bg.SetFitToContent(true);
        bg.SetAnchor(inkEAnchor.Fill);
        bg.SetAnchorPoint(new Vector2(0.5, 0.5));
        bg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bg.BindProperty(n"tintColor", n"MainColors.Fullscreen_PrimaryBackgroundDarkest");
        bg.SetSize(new Vector2(32.0, 32.0));
        bg.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        bg.Reparent(right);
        let fg: ref<inkImage> = new inkImage();
        fg.SetName(n"fg");
        fg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        fg.SetTexturePart(n"cell_fg");
        fg.SetNineSliceScale(true);
        fg.SetAffectsLayoutWhenHidden(true);
        fg.SetFitToContent(true);
        fg.SetMargin(new inkMargin(-1.000002, 0.967965, 1.000002, -0.967965));
        fg.SetAnchor(inkEAnchor.Fill);
        fg.SetAnchorPoint(new Vector2(0.5, 0.5));
        fg.SetOpacity(0.1);
        fg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fg.BindProperty(n"tintColor", n"MainColors.Red");
        fg.SetSize(new Vector2(32.0, 32.0));
        fg.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        fg.Reparent(right);
        let fluffText1: ref<inkImage> = new inkImage();
        fluffText1.SetName(n"fluffText1");
        fluffText1.SetAtlasResource(r"base\\gameplay\\gui\\fullscreen\\inventory\\atlas_inventory.inkatlas");
        fluffText1.SetTexturePart(n"fluffcc35_3");
        fluffText1.SetFitToContent(true);
        fluffText1.SetMargin(new inkMargin(10.0, 0.0, 0.0, 10.0));
        fluffText1.SetHAlign(inkEHorizontalAlign.Left);
        fluffText1.SetVAlign(inkEVerticalAlign.Bottom);
        fluffText1.SetAnchor(inkEAnchor.BottomLeft);
        fluffText1.SetAnchorPoint(new Vector2(0.5, 0.5));
        fluffText1.SetOpacity(0.3);
        fluffText1.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fluffText1.BindProperty(n"tintColor", n"MainColors.MildRed");
        fluffText1.SetSize(new Vector2(30.0, 30.0));
        fluffText1.Reparent(right);
        let warningIcon: ref<inkCanvas> = new inkCanvas();
        warningIcon.SetName(n"warning_icon");
        warningIcon.SetState(n"error_no");
        warningIcon.SetVisible(false);
        warningIcon.SetInteractive(true);
        warningIcon.SetMargin(new inkMargin(70.0, 24.0, 0.0, 0.0));
        warningIcon.SetHAlign(inkEHorizontalAlign.Left);
        warningIcon.SetVAlign(inkEVerticalAlign.Top);
        warningIcon.SetSize(new Vector2(100.0, 100.0));
        warningIcon.Reparent(main);
        let icon: ref<inkImage> = new inkImage();
        icon.SetName(n"icon");
        icon.SetAtlasResource(r"base\\gameplay\\gui\\fullscreen\\common\\fullscreen_elements.inkatlas");
        icon.SetTexturePart(n"fluff_attention_fill");
        icon.SetFitToContent(true);
        icon.SetMargin(new inkMargin(0.0, 10.0, 0.0, 0.0));
        icon.SetHAlign(inkEHorizontalAlign.Center);
        icon.SetVAlign(inkEVerticalAlign.Center);
        icon.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        icon.BindProperty(n"tintColor", n"MainColors.Red");
        icon.SetSize(new Vector2(74.0, 64.0));
        icon.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        icon.SetScale(new Vector2(0.5, 0.5));
        icon.Reparent(warningIcon);
        let inkVerticalPanelWidget18: ref<inkVerticalPanel> = new inkVerticalPanel();
        inkVerticalPanelWidget18.SetName(n"inkVerticalPanelWidget18");
        inkVerticalPanelWidget18.SetFitToContent(true);
        inkVerticalPanelWidget18.SetHAlign(inkEHorizontalAlign.Left);
        inkVerticalPanelWidget18.SetVAlign(inkEVerticalAlign.Top);
        inkVerticalPanelWidget18.Reparent(main);
        let line: ref<inkRectangle> = new inkRectangle();
        line.SetName(n"line");
        line.SetVisible(false);
        line.SetMargin(new inkMargin(174.0, 24.0, 0.0, 0.0));
        line.SetHAlign(inkEHorizontalAlign.Left);
        line.SetVAlign(inkEVerticalAlign.Top);
        line.SetAnchor(inkEAnchor.TopFillHorizontaly);
        line.SetOpacity(0.1);
        line.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        line.BindProperty(n"tintColor", n"MainColors.Red");
        line.SetSize(new Vector2(3.0, 84.0));
        line.SetRenderTransformPivot(new Vector2(0.0, 0.5));
        line.Reparent(inkVerticalPanelWidget18);
        let title: ref<inkText> = new inkText();
        title.SetName(n"title");
        title.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        title.SetFontStyle(n"Semi-Bold");
        title.SetFontSize(50);
        title.SetLetterCase(textLetterCase.UpperCase);
        title.SetAffectsLayoutWhenHidden(true);
        title.SetFitToContent(true);
        title.SetMargin(new inkMargin(66.0, 20.0, 0.0, -30.0));
        title.SetVAlign(inkEVerticalAlign.Top);
        title.SetOpacity(1.0);
        title.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        title.BindProperty(n"tintColor", n"MainColors.Red");
        title.SetSize(new Vector2(100.0, 32.0));
        title.Reparent(inkVerticalPanelWidget18);
        let container = new inkVerticalPanel();
        container.SetAnchor(inkEAnchor.Fill);
        container.SetMargin(new inkMargin(66.0, 40.0, 20.0, 40.0));
        container.Reparent(inkVerticalPanelWidget18);
        this.m_content = main;
        this.m_title = title;
        this.SetRootWidget(main);
        this.SetContainerWidget(container);
    }
    public func GetSize() -> Vector2 {
        return this.m_content.GetSize();
    }
    public func SetTitle(text: String) {
        this.m_title.SetText(text);
    }
    public static func Create() -> ref<InMenuPopupContent> {
        let self = new InMenuPopupContent();
        self.CreateInstance();
        return self;
    }
}

public class InMenuPopupFooter extends inkCustomController {
    protected cb func OnCreate() {
        let buttons: ref<inkHorizontalPanel> = new inkHorizontalPanel();
        buttons.SetName(n"Buttons");
        buttons.SetFitToContent(true);
        buttons.SetMargin(new inkMargin(-40.0, 0.0, -100.0, 0.0));
        buttons.SetHAlign(inkEHorizontalAlign.Right);
        buttons.SetChildMargin(new inkMargin(10.0, 0.0, 0.0, 0.0));
        this.SetRootWidget(buttons);
    }
    public static func Create() -> ref<InMenuPopupFooter> {
        let self = new InMenuPopupFooter();
        self.CreateInstance();
        return self;
    }
}

public abstract class CustomPopupEvent extends inkCustomEvent {
    public func GetPopupController() -> ref<CustomPopup> {
        return this.controller as CustomPopup;
    }
}

public class HideCustomPopupEvent extends CustomPopupEvent {
    public static func Create(controller: ref<CustomPopup>) -> ref<HideCustomPopupEvent> {
        let event: ref<HideCustomPopupEvent> = new HideCustomPopupEvent();
        event.controller = controller;
        return event;
    }
}

public class ShowCustomPopupEvent extends CustomPopupEvent {
    public static func Create(controller: ref<CustomPopup>) -> ref<ShowCustomPopupEvent> {
        let event: ref<ShowCustomPopupEvent> = new ShowCustomPopupEvent();
        event.controller = controller;
        return event;
    }
}

public class CustomPopupAttachCallback extends DelayCallback {
    protected let m_manager: ref<CustomPopupManager>;
    protected let m_request: ref<CustomPopupAttachRequest>;
    public func Call() {
        this.m_manager.AttachPopup(this.m_request);
    }
    public static func Create(manager: ref<CustomPopupManager>, request: ref<CustomPopupAttachRequest>) -> ref<CustomPopupAttachCallback> {
        let self = new CustomPopupAttachCallback();
        self.m_manager = manager;
        self.m_request = request;
        return self;
    }
}

public class CustomPopupAttachRequest {
    public let controller: ref<CustomPopup>;
    public let notificationData: ref<inkGameNotificationData>;
    public let notificationToken: ref<inkGameNotificationToken>;
    public let queueIndex: Int32;
    public func GetPopupController() -> ref<CustomPopup> {
        return this.controller;
    }
    public func GetNotificationData() -> ref<inkGameNotificationData> {
        return this.notificationData;
    }
    public func GetNotificationToken() -> ref<inkGameNotificationToken> {
        return this.notificationToken;
    }
    public func GetQueueIndex() -> Int32 {
        return this.queueIndex;
    }
    public static func Create(controller: ref<CustomPopup>, data: ref<inkGameNotificationData>, token: ref<inkGameNotificationToken>, queueIndex: Int32) -> ref<CustomPopupAttachRequest> {
        let request: ref<CustomPopupAttachRequest> = new CustomPopupAttachRequest();
        request.controller = controller;
        request.notificationData = data;
        request.notificationToken = token;
        request.queueIndex = queueIndex;
        return request;
    }
}

public class CustomPopupManager extends ScriptableService {
    private let m_gameController: wref<inkGameController>;
    private let m_notificationsContainer: wref<inkCompoundWidget>;
    private let m_bracketsContainer: wref<inkCompoundWidget>;
    private let m_notificationQueues: array<CName>;
    public func IsInitialized() -> Bool {
        return IsDefined(this.m_gameController);
    }
    public func Initialize(controller: ref<inkGameController>) {
        this.m_gameController = controller;
        this.m_notificationsContainer = this.m_gameController.GetChildWidgetByPath(n"NotificationsContainer") as inkCompoundWidget;
        this.m_bracketsContainer = this.m_gameController.GetChildWidgetByPath(n"BracketsContainer") as inkCompoundWidget;
        this.m_notificationsContainer.SetChildOrder(inkEChildOrder.Forward);
    }
    public func ShowPopup(popupController: ref<CustomPopup>) {
        if !this.IsInitialized() || !IsDefined(popupController) {
            return;
        }
        if ArrayContains(this.m_notificationQueues, popupController.GetQueueName()) {
            return;
        }
        let notificationData = new CustomPopupNotificationData();
        notificationData.manager = this;
        notificationData.controller = popupController;
        notificationData.notificationName = popupController.GetName();
        notificationData.queueName = popupController.GetQueueName();
        notificationData.isBlocking = popupController.IsBlocking();
        notificationData.useCursor = popupController.UseCursor();
        ArrayPush(this.m_notificationQueues, notificationData.queueName);
        let notificationToken = this.m_gameController.ShowGameNotification(notificationData);
        this.QueueAttachRequest(
            CustomPopupAttachRequest.Create(
                popupController,
                notificationData,
                notificationToken,
                ArraySize(this.m_notificationQueues) - 1
            )
        );
    }
    public func AttachPopup(request: ref<CustomPopupAttachRequest>) {
        let containerWidget = this.m_notificationsContainer.GetWidget(request.GetQueueIndex()) as inkCompoundWidget;
        if !IsDefined(containerWidget) {
            this.QueueAttachRequest(request);
            return;
        }
        let popupController = request.GetPopupController();
        let notificationData = request.GetNotificationData();
        let notificationToken = request.GetNotificationToken();
        let wrapperWidget = new inkCanvas();
        wrapperWidget.SetName(popupController.GetName());
        wrapperWidget.SetAnchor(inkEAnchor.Fill);
        wrapperWidget.SetAnchorPoint(new Vector2(0.5, 0.5));
        wrapperWidget.SetSize(this.m_notificationsContainer.GetSize());
        wrapperWidget.Reparent(containerWidget);
        let rootWidget = new inkCanvas();
        rootWidget.SetName(n"Root");
        rootWidget.SetAnchor(this.m_bracketsContainer.GetAnchor());
        rootWidget.SetAnchorPoint(this.m_bracketsContainer.GetAnchorPoint());
        rootWidget.SetSize(this.m_bracketsContainer.GetSize());
        rootWidget.SetScale(this.m_bracketsContainer.GetScale());
        rootWidget.Reparent(wrapperWidget);
        popupController.Attach(rootWidget, this.m_gameController, notificationData);
        notificationToken.RegisterListener(this, n"OnNotificationClosed");
    }
    public func HidePopup(popupController: ref<CustomPopup>) {
        if IsDefined(popupController) {
            popupController.Detach();
        }
    }
    protected func QueueAttachRequest(request: ref<CustomPopupAttachRequest>) {
        let game = this.m_gameController.GetPlayerControlledObject().GetGame();
        GameInstance.GetDelaySystem(game).DelayCallback(CustomPopupAttachCallback.Create(this, request), 0);
    }
    protected cb func OnNotificationClosed(data: ref<inkGameNotificationData>) -> Bool {
        let notificationData = data as CustomPopupNotificationData;
        let popupController = notificationData.controller;
        ArrayRemove(this.m_notificationQueues, notificationData.queueName);
        if IsDefined(popupController) {
            let wrapperWidget = this.m_notificationsContainer.GetWidgetByPathName(popupController.GetName()) as inkCanvas;
            if IsDefined(wrapperWidget) {
                this.m_notificationsContainer.RemoveChild(wrapperWidget);
            }
        }
    }
    public func IsOnTop(popupController: ref<CustomPopup>) -> Bool {
        let topWidget = this.m_notificationsContainer.GetWidget(this.m_notificationsContainer.GetNumChildren() - 1);
        let popupWidget = popupController.GetRootWidget().GetParentWidget().GetParentWidget();
        return Equals(topWidget, popupWidget);
    }
    public static func GetInstance() -> ref<CustomPopupManager> {
        return GameInstance.GetScriptableServiceContainer()
            .GetService(n"Codeware.UI.CustomPopupManager") as CustomPopupManager;
    }
}
@wrapMethod(PopupsManager)
protected cb func OnPlayerAttach(playerPuppet: ref<GameObject>) -> Bool {
    wrappedMethod(playerPuppet);
    CustomPopupManager.GetInstance().Initialize(this);
}
@addMethod(PopupsManager)
protected cb func OnShowCustomPopup(evt: ref<ShowCustomPopupEvent>) -> Bool {
    CustomPopupManager.GetInstance().ShowPopup(evt.GetPopupController());
}
@addMethod(PopupsManager)
protected cb func OnHideCustomPopup(evt: ref<HideCustomPopupEvent>) -> Bool {
    CustomPopupManager.GetInstance().HidePopup(evt.GetPopupController());
}

public class CustomPopupNotificationData extends inkGameNotificationData {
    public let controller: ref<CustomPopup>;
    public let manager: wref<CustomPopupManager>;
}

public abstract class ScreenHelper {
    public static func GetResolution(game: GameInstance) -> String {
        let settings = GameInstance.GetSettingsSystem(game);
        let configVar = settings.GetVar(n"/video/display", n"Resolution") as ConfigVarListString;
        return configVar.GetValue();
    }
    public static func GetScreenSize(game: GameInstance) -> Vector2 {
        let resolution = ScreenHelper.GetResolution(game);
        let dimensions = StrSplit(resolution, "x");
        return new Vector2(StringToFloat(dimensions[0]), StringToFloat(dimensions[1]));
    }
}

public class VirtualResolutionData {
    protected let m_resolution: String;
    protected let m_size: Vector2;
    protected let m_scale: Vector2;
    public func GetResolution() -> String {
        return this.m_resolution;
    }
    public func GetSize() -> Vector2 {
        return this.m_size;
    }
    public func GetWidth() -> Float {
        return this.m_size.X;
    }
    public func GetHeight() -> Float {
        return this.m_size.Y;
    }
    public func GetAspectRatio() -> Float {
        return this.m_size.X / this.m_size.Y;
    }
    public func GetScale() -> Vector2 {
        return this.m_scale;
    }
    public func GetScaleX() -> Float {
        return this.m_scale.X;
    }
    public func GetScaleY() -> Float {
        return this.m_scale.Y;
    }
    public func GetSmartScaleFactor() -> Float {
        return this.m_scale.X < this.m_scale.Y ? this.m_scale.X : this.m_scale.Y;
    }
    public func GetSmartScale() -> Vector2 {
        let factor: Float = this.GetSmartScaleFactor();
        return new Vector2(factor, factor);
    }
    public static func Create(resolution: String, size: Vector2, scale: Vector2) -> ref<VirtualResolutionData> {
        let data = new VirtualResolutionData();
        data.m_resolution = resolution;
        data.m_size = size;
        data.m_scale = scale;
        return data;
    }
}

public class VirtualResolutionWatcher extends ConfigVarListener {
    protected let m_initialized: Bool;
    protected let m_window: Vector2;
    protected let m_game: GameInstance;
    protected let m_targets: array<ref<VirtualResolutionTarget>>;
    protected let m_gameControllers: array<wref<inkGameController>>;
    protected let m_logicControllers: array<wref<inkLogicController>>;
    public func Initialize(game: GameInstance) {
        if !this.m_initialized {
            this.m_game = game;
            if this.m_window.X == 0.0 {
                this.m_window = new Vector2(3840.0, 2160.0);
            }
            this.Register(n"/video/display");
            this.ApplyScalingToAllTargets();
            this.SendEventToAllControllers();
            this.m_initialized = true;
        }
    }
    public func SetWindowSize(size: Vector2) {
        this.m_window = size;
        if this.m_initialized {
            this.ApplyScalingToAllTargets();
            this.SendEventToAllControllers();
        }
    }
    public func SetWindowSize(width: Float, height: Float) {
        this.SetWindowSize(new Vector2(width, height));
    }
    public func ScaleWidget(widget: ref<inkWidget>) {
        let target = VirtualResolutionScaleTarget.Create(widget);
        ArrayPush(this.m_targets, target);
        if this.m_initialized {
            this.ApplyScalingToTarget(target);
        }
    }
    public func ResizeWidget(widget: ref<inkWidget>) {
        let target = VirtualResolutionResizeTarget.Create(widget);
        ArrayPush(this.m_targets, target);
        if this.m_initialized {
            this.ApplyScalingToTarget(target);
        }
    }
    public func NotifyController(target: ref<inkGameController>) {
        ArrayPush(this.m_gameControllers, target);
        if this.m_initialized {
            this.SendEventToController(target);
        }
    }
    public func NotifyController(target: ref<inkLogicController>) {
        ArrayPush(this.m_logicControllers, target);
        if this.m_initialized {
            this.SendEventToController(target);
        }
    }
    protected func GetCurrentState() -> ref<VirtualResolutionData> {
        let resolution = ScreenHelper.GetResolution(this.m_game);
        let size = ScreenHelper.GetScreenSize(this.m_game);
        let scale = new Vector2(size.X / this.m_window.X, size.Y / this.m_window.Y);
        return VirtualResolutionData.Create(resolution, size, scale);
    }
    protected cb func OnVarModified(groupPath: CName, varName: CName, varType: ConfigVarType, reason: ConfigChangeReason) {
        if Equals(groupPath, n"/video/display") && Equals(varName, n"Resolution") && Equals(reason, ConfigChangeReason.Accepted) {
            this.ApplyScalingToAllTargets();
            this.SendEventToAllControllers();
        }
    }
    protected func ApplyScalingToAllTargets() {
        let state: ref<VirtualResolutionData> = this.GetCurrentState();
        for target in this.m_targets {
            target.ApplyState(state);
        }
    }
    protected func ApplyScalingToTarget(target: ref<VirtualResolutionTarget>) {
        target.ApplyState(this.GetCurrentState());
    }
    protected func SendEventToAllControllers() {
        let state: ref<VirtualResolutionData> = this.GetCurrentState();
        let event: ref<VirtualResolutionChangeEvent> = VirtualResolutionChangeEvent.Create(state);
        for target in this.m_gameControllers {
            target.QueueEvent(event);
        }
        for target in this.m_logicControllers {
            target.QueueEvent(event);
        }
    }
    protected func SendEventToController(target: wref<inkGameController>) {
        target.QueueEvent(VirtualResolutionChangeEvent.Create(this.GetCurrentState()));
    }
    protected func SendEventToController(target: wref<inkLogicController>) {
        target.QueueEvent(VirtualResolutionChangeEvent.Create(this.GetCurrentState()));
    }
}

public class VirtualResolutionChangeEvent extends inkEvent {
    protected let m_state: ref<VirtualResolutionData>;
    public func GetState() -> wref<VirtualResolutionData> {
        return this.m_state;
    }
    public static func Create(state: ref<VirtualResolutionData>) -> ref<VirtualResolutionChangeEvent> {
        let event = new VirtualResolutionChangeEvent();
        event.m_state = state;
        return event;
    }
}

public abstract class VirtualResolutionTarget {
    protected let m_widget: wref<inkWidget>;
    public func ApplyState(state: ref<VirtualResolutionData>)
}

public class VirtualResolutionResizeTarget extends VirtualResolutionTarget {
    protected let m_size: Vector2;
    public func ApplyState(state: ref<VirtualResolutionData>)
    {
        let scale: Vector2 = state.GetSmartScale();
        this.m_widget.SetSize(new Vector2(this.m_size.X * scale.X, this.m_size.Y * scale.Y));
    }
    public static func Create(widget: wref<inkWidget>) -> ref<VirtualResolutionResizeTarget> {
        let target = new VirtualResolutionResizeTarget();
        target.m_widget = widget;
        target.m_size = widget.GetSize();
        return target;
    }
}

public class VirtualResolutionScaleTarget extends VirtualResolutionTarget {
    public func ApplyState(state: ref<VirtualResolutionData>)
    {
        this.m_widget.SetScale(state.GetSmartScale());
    }
    public static func Create(widget: wref<inkWidget>) -> ref<VirtualResolutionScaleTarget> {
        let target = new VirtualResolutionScaleTarget();
        target.m_widget = widget;
        return target;
    }
}

public abstract class ThemeColors {
    public static func ElectricBlue() -> HDRColor = new HDRColor(0.368627, 0.964706, 1.0, 1.0)
    public static func Bittersweet() -> HDRColor = new HDRColor(1.1761, 0.3809, 0.3476, 1.0)
    public static func Dandelion() -> HDRColor = new HDRColor(1.1192, 0.8441, 0.2565, 1.0)
    public static func LightGreen() -> HDRColor = new HDRColor(0.113725, 0.929412, 0.513726, 1.0)
    public static func BlackPearl() -> HDRColor = new HDRColor(0.054902, 0.054902, 0.090196, 1.0)
    public static func RedOxide() -> HDRColor = new HDRColor(0.411765, 0.086275, 0.090196, 1.0)
    public static func Bordeaux() -> HDRColor = new HDRColor(0.262745, 0.086275, 0.094118, 1.0)
    public static func PureBlack() -> HDRColor = new HDRColor(0.0, 0.0, 0.0, 1.0)
    public static func PureWhite() -> HDRColor = new HDRColor(1.0, 1.0, 1.0, 1.0)
}

public class HubTextInput extends TextInput {
    protected let m_bg: wref<inkImage>;
    protected let m_fill: wref<inkImage>;
    protected let m_frame: wref<inkImage>;
    protected let m_hover: wref<inkImage>;
    protected let m_focus: wref<inkImage>;
    protected let m_useAnimations: Bool;
    protected let m_activeRootAnimDef: ref<inkAnimDef>;
    protected let m_activeRootAnimProxy: ref<inkAnimProxy>;
    protected let m_hoverFrameAnimDef: ref<inkAnimDef>;
    protected let m_hoverFrameAnimProxy: ref<inkAnimProxy>;
    protected let m_focusFillAnimDef: ref<inkAnimDef>;
    protected let m_focusFillAnimProxy: ref<inkAnimProxy>;
    protected let m_focusFrameAnimDef: ref<inkAnimDef>;
    protected let m_focusFrameAnimProxy: ref<inkAnimProxy>;
    protected func CreateWidgets() {
        super.CreateWidgets();
        let fontSize: Int32 = 38;
        let inputHeight: Float = 80.0;
        let textPadding: Vector2 = new Vector2(18.0, (inputHeight - Cast<Float>(fontSize)) / 2.0 - 1.0);
        this.m_text.SetFontSize(fontSize);
        this.m_root.SetHeight(inputHeight);
        this.m_wrapper.SetMargin(new inkMargin(textPadding.X, textPadding.Y, textPadding.X, 0.0));
        let fillPart: CName = n"sorting_bg";
        let framePart: CName = n"sorting_fg";
        let theme: ref<inkFlex> = new inkFlex();
        theme.SetName(n"theme");
        theme.SetAnchor(inkEAnchor.Fill);
        theme.Reparent(this.m_root, 0);
        let bg: ref<inkImage> = new inkImage();
        bg.SetName(n"bg");
        bg.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        bg.SetTexturePart(fillPart);
        bg.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        bg.BindProperty(n"tintColor", n"MainColors.Fullscreen_PrimaryBackgroundDarkest");
        bg.SetOpacity(0.61);
        bg.SetAnchor(inkEAnchor.Fill);
        bg.SetNineSliceScale(true);
        bg.SetNineSliceGrid(new inkMargin(50.0, 30.0, 100.0, 30.0));
        bg.Reparent(theme);
        let fill: ref<inkImage> = new inkImage();
        fill.SetName(n"fill");
        fill.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        fill.SetTexturePart(fillPart);
        fill.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        fill.BindProperty(n"tintColor", n"MainColors.Blue");
        fill.SetAnchor(inkEAnchor.Fill);
        fill.SetNineSliceScale(true);
        fill.SetNineSliceGrid(new inkMargin(50.0, 30.0, 100.0, 30.0));
        fill.Reparent(theme);
        let frame: ref<inkImage> = new inkImage();
        frame.SetName(n"frame");
        frame.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        frame.SetTexturePart(framePart);
        frame.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        frame.BindProperty(n"tintColor", n"MainColors.Fullscreen_SecondaryBackground4");
        frame.SetAnchor(inkEAnchor.Fill);
        frame.SetNineSliceScale(true);
        frame.SetNineSliceGrid(new inkMargin(50.0, 30.0, 100.0, 30.0));
        frame.Reparent(theme);
        let hover: ref<inkImage> = new inkImage();
        hover.SetName(n"hover");
        hover.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        hover.SetTexturePart(framePart);
        hover.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        hover.BindProperty(n"tintColor", n"MainColors.Red");
        hover.SetAnchor(inkEAnchor.Fill);
        hover.SetNineSliceScale(true);
        hover.SetNineSliceGrid(new inkMargin(50.0, 30.0, 100.0, 30.0));
        hover.Reparent(theme);
        let focus: ref<inkImage> = new inkImage();
        focus.SetName(n"focus");
        focus.SetAtlasResource(r"base\\gameplay\\gui\\common\\shapes\\atlas_shapes_sync.inkatlas");
        focus.SetTexturePart(framePart);
        focus.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        focus.BindProperty(n"tintColor", n"MainColors.Blue");
        focus.SetAnchor(inkEAnchor.Fill);
        focus.SetNineSliceScale(true);
        focus.SetNineSliceGrid(new inkMargin(50.0, 30.0, 100.0, 30.0));
        focus.Reparent(theme);
        this.m_fill = fill;
        this.m_frame = frame;
        this.m_hover = hover;
        this.m_focus = focus;
    }
    protected func CreateAnimations() {
        super.CreateAnimations();
        let activeRootAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        activeRootAlphaAnim.SetStartTransparency(1.0);
        activeRootAlphaAnim.SetEndTransparency(0.3);
        activeRootAlphaAnim.SetDuration(this.m_useAnimations ? 0.05 : 0.0001);
        this.m_activeRootAnimDef = new inkAnimDef();
        this.m_activeRootAnimDef.AddInterpolator(activeRootAlphaAnim);
        let hoverFrameAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        hoverFrameAlphaAnim.SetStartTransparency(0.0);
        hoverFrameAlphaAnim.SetEndTransparency(0.6);
        hoverFrameAlphaAnim.SetDuration(this.m_useAnimations ? 0.15 : 0.0001);
        this.m_hoverFrameAnimDef = new inkAnimDef();
        this.m_hoverFrameAnimDef.AddInterpolator(hoverFrameAlphaAnim);
        let focusFillAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        focusFillAlphaAnim.SetStartTransparency(0.0);
        focusFillAlphaAnim.SetEndTransparency(0.02);
        focusFillAlphaAnim.SetDuration(this.m_useAnimations ? 0.1 : 0.0001);
        this.m_focusFillAnimDef = new inkAnimDef();
        this.m_focusFillAnimDef.AddInterpolator(focusFillAlphaAnim);
        let focusFrameAlphaAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        focusFrameAlphaAnim.SetStartTransparency(0.0);
        focusFrameAlphaAnim.SetEndTransparency(1.0);
        focusFrameAlphaAnim.SetDuration(this.m_useAnimations ? 0.15 : 0.0001);
        this.m_focusFrameAnimDef = new inkAnimDef();
        this.m_focusFrameAnimDef.AddInterpolator(focusFrameAlphaAnim);
    }
    protected func ApplyDisabledState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isDisabled;
        this.m_activeRootAnimProxy.Stop();
        this.m_activeRootAnimProxy = this.m_root.PlayAnimationWithOptions(this.m_activeRootAnimDef, reverseAnimOpts);
    }
    protected func ApplyHoveredState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isHovered || this.m_isDisabled;
        this.m_hoverFrameAnimProxy.Stop();
        this.m_hoverFrameAnimProxy = this.m_hover.PlayAnimationWithOptions(this.m_hoverFrameAnimDef, reverseAnimOpts);
    }
    protected func ApplyFocusedState() {
        let reverseAnimOpts: inkAnimOptions;
        reverseAnimOpts.playReversed = !this.m_isFocused || this.m_isDisabled;
        this.m_focusFillAnimProxy.Stop();
        this.m_focusFillAnimProxy = this.m_fill.PlayAnimationWithOptions(this.m_focusFillAnimDef, reverseAnimOpts);
        this.m_focusFrameAnimProxy.Stop();
        this.m_focusFrameAnimProxy = this.m_focus.PlayAnimationWithOptions(this.m_focusFrameAnimDef, reverseAnimOpts);
    }
    public func ToggleAnimations(useAnimations: Bool) {
        this.m_useAnimations = useAnimations;
        this.CreateAnimations();
    }
    public static func Create() -> ref<HubTextInput> {
        let self: ref<HubTextInput> = new HubTextInput();
        self.CreateInstance();
        return self;
    }
}

public class TextInput extends inkCustomController {
    protected let m_root: wref<inkCompoundWidget>;
    protected let m_wrapper: wref<inkWidget>;
    protected let m_measurer: ref<TextMeasurer>;
    protected let m_viewport: ref<Viewport>;
    protected let m_selection: ref<Selection>;
    protected let m_text: ref<TextFlow>;
    protected let m_caret: ref<Caret>;
    protected let m_isDisabled: Bool;
    protected let m_isHovered: Bool;
    protected let m_isFocused: Bool;
    protected let m_lastInputEvent: ref<inkKeyInputEvent>;
    protected let m_isHoldComplete: Bool;
    protected let m_holdTickCounter: Int32;
    protected let m_holdTickProxy: ref<inkAnimProxy>;
    protected cb func OnCreate() {
        this.CreateWidgets();
        this.CreateAnimations();
    }
    protected cb func OnInitialize() {
        this.RegisterListeners();
        this.RegisterHoldTick();
        this.InitializeLayout();
        this.UpdateLayout();
        this.ApplyDisabledState();
        this.ApplyHoveredState();
        this.ApplyFocusedState();
    }
    protected func CreateWidgets() {
        let root = new inkCanvas();
        root.SetName(n"input");
        root.SetSize(600.0, 64.0);
        root.SetAnchor(inkEAnchor.TopLeft);
        root.SetInteractive(true);
        root.SetSupportFocus(true);
        this.m_root = root;
        this.m_measurer = TextMeasurer.Create();
        this.m_measurer.Reparent(this.m_root);
        this.m_viewport = Viewport.Create();
        this.m_viewport.Reparent(this.m_root);
        this.m_selection = Selection.Create();
        this.m_selection.Reparent(this.m_viewport);
        this.m_text = TextFlow.Create();
        this.m_text.Reparent(this.m_viewport);
        this.m_caret = Caret.Create();
        this.m_caret.Reparent(this.m_viewport);
        this.m_wrapper = this.m_viewport.GetRootWidget();
        this.SetRootWidget(this.m_root);
    }
    protected func CreateAnimations() {}
    protected func InitializeLayout() {
        this.m_caret.SetFontSize(this.m_text.GetFontSize());
        this.m_selection.SetFontSize(this.m_text.GetFontSize());
        this.m_viewport.SetCaretSize(this.m_caret.GetSize());
        this.m_measurer.CopyTextSettings(this.m_text);
    }
    protected func UpdateLayout() {
        let contentSize: Vector2 = this.m_text.GetDesiredSize();
        let selectedBounds: RectF = this.m_text.GetCharRange(this.m_selection.GetRange());
        let caretOffset: Float = this.m_text.GetCharOffset(this.m_caret.GetPosition());
        this.m_viewport.UpdateState(contentSize, caretOffset);
        this.m_selection.UpdateState(this.m_isFocused, selectedBounds);
        this.m_caret.UpdateState(this.m_isFocused, caretOffset);
    }
    protected func ApplyDisabledState() {}
    protected func ApplyHoveredState() {}
    protected func ApplyFocusedState() {}
    protected func SetDisabledState(isDisabled: Bool) {
        if !Equals(this.m_isDisabled, isDisabled) {
            this.m_isDisabled = isDisabled;
            if this.m_isDisabled {
                this.m_isHovered = false;
                this.m_isFocused = false;
            }
            this.ApplyDisabledState();
            this.ApplyHoveredState();
            this.ApplyFocusedState();
            this.UpdateLayout();
        }
    }
    protected func SetHoveredState(isHovered: Bool) {
        if !Equals(this.m_isHovered, isHovered) {
            this.m_isHovered = isHovered;
            if !this.m_isDisabled {
                this.ApplyHoveredState();
            }
        }
    }
    protected func SetFocusedState(isFocused: Bool) {
        if !Equals(this.m_isFocused, isFocused) {
            this.m_isFocused = isFocused;
            if !this.m_isDisabled {
                this.ApplyFocusedState();
                this.UpdateLayout();
            }
        }
    }
    protected func RegisterListeners() {
        this.RegisterToCallback(n"OnEnter", this, n"OnHoverOver");
        this.RegisterToCallback(n"OnLeave", this, n"OnHoverOut");
        this.RegisterToCallback(n"OnFocusReceived", this, n"OnFocusReceived");
        this.RegisterToCallback(n"OnFocusLost", this, n"OnFocusLost");
        this.RegisterToCallback(n"OnRelease", this, n"OnReleaseKey");
        this.RegisterToCallback(n"OnInputKey", this, n"OnInputKey");
        this.m_measurer.RegisterToCallback(n"OnTextMeasured", this, n"OnTextMeasured");
        this.m_measurer.RegisterToCallback(n"OnCharMeasured", this, n"OnTextMeasured");
    }
    protected func RegisterHoldTick() {
        let tickAnim: ref<inkAnimTextValueProgress> = new inkAnimTextValueProgress();
        tickAnim.SetStartProgress(0.0);
        tickAnim.SetEndProgress(0.0);
        tickAnim.SetDuration(1.0 / 60.0);
        let tickAnimDef: ref<inkAnimDef> = new inkAnimDef();
        tickAnimDef.AddInterpolator(tickAnim);
        let tickAnimOpts: inkAnimOptions;
        tickAnimOpts.loopInfinite = true;
        tickAnimOpts.loopType = inkanimLoopType.Cycle;
        this.m_holdTickProxy = this.m_root.PlayAnimationWithOptions(tickAnimDef, tickAnimOpts);
        this.m_holdTickProxy.RegisterToCallback(inkanimEventType.OnStartLoop, this, n"OnHoldTick");
    }
    protected func ProcessInputEvent(event: ref<inkKeyInputEvent>) {
        if !event.IsControlDown() && !event.IsAltDown() && event.IsCharacter() {
            if this.m_text.IsFull() {
                return;
            }
            if this.m_measurer.IsMeasuring() {
                return;
            }
            let char = event.GetCharacter();
            switch this.m_text.GetLetterCase() {
                case textLetterCase.UpperCase:
                    char = UTF8StrUpper(char);
                    break;
                case textLetterCase.LowerCase:
                    char = UTF8StrLower(char);
                    break;
            }
            if !this.m_selection.IsEmpty() {
                this.m_text.DeleteCharRange(
                    this.m_selection.GetLeftPosition(),
                    this.m_selection.GetRightPosition()
                );
            }
            this.m_text.InsertCharAt(this.m_caret.GetPosition(), char);
            this.m_caret.SetMaxPosition(this.m_text.GetLength());
            this.m_caret.MoveToNextChar();
            this.m_selection.SetMaxPosition(this.m_text.GetLength());
            this.m_selection.Clear();
            this.m_measurer.MeasureChar(char, this.m_caret.GetPosition());
            return;
        }
        switch event.GetKey() {
            case EInputKey.IK_Delete:
                if this.m_measurer.IsMeasuring() {
                    break;
                }
                if !this.m_selection.IsEmpty() {
                    this.m_caret.SetPosition(this.m_selection.GetLeftPosition());
                    this.m_text.DeleteCharRange(
                        this.m_selection.GetLeftPosition(),
                        this.m_selection.GetRightPosition()
                    );
                } else {
                    if !this.m_caret.IsAtEnd() {
                        this.m_text.DeleteCharAt(this.m_caret.GetPosition());
                    } else {
                        return;
                    }
                }
                this.m_caret.SetMaxPosition(this.m_text.GetLength());
                this.m_selection.SetMaxPosition(this.m_text.GetLength());
                this.m_selection.Clear();
                this.UpdateLayout();
                this.TriggerChangeCallback();
                break;
            case EInputKey.IK_Backspace:
                if this.m_measurer.IsMeasuring() {
                    break;
                }
                if !this.m_selection.IsEmpty() {
                    this.m_caret.SetPosition(this.m_selection.GetLeftPosition());
                    this.m_text.DeleteCharRange(
                        this.m_selection.GetLeftPosition(),
                        this.m_selection.GetRightPosition()
                    );
                } else {
                    if !this.m_caret.IsAtStart() {
                        this.m_caret.MoveToPrevChar();
                        this.m_text.DeleteCharAt(this.m_caret.GetPosition());
                    } else {
                        return;
                    }
                }
                this.m_caret.SetMaxPosition(this.m_text.GetLength());
                this.m_selection.SetMaxPosition(this.m_text.GetLength());
                this.m_selection.Clear();
                this.UpdateLayout();
                this.TriggerChangeCallback();
                break;
            case EInputKey.IK_Right:
            case EInputKey.IK_End:
                if this.m_measurer.IsMeasuring() {
                    break;
                }
                if this.m_caret.IsAtEnd() {
                    break;
                }
                if event.IsShiftDown() && this.m_selection.IsEmpty() {
                    this.m_selection.SetStartPosition(
                        this.m_caret.GetPosition()
                    );
                }
                if Equals(event.GetKey(), EInputKey.IK_End) {
                    this.m_caret.MoveToEnd();
                } else {
                    if event.IsControlDown() {
                        let stop = this.m_text.GetNextStop(this.m_caret.GetPosition());
                        if stop >= 0 {
                            this.m_caret.SetPosition(stop);
                        } else {
                            this.m_caret.MoveToNextChar();
                        }
                    } else {
                        this.m_caret.MoveToNextChar();
                    }
                }
                if event.IsShiftDown() {
                    this.m_selection.SetEndPosition(
                        this.m_caret.GetPosition()
                    );
                } else {
                    this.m_selection.Clear();
                }
                this.UpdateLayout();
                break;
            case EInputKey.IK_Left:
            case EInputKey.IK_Home:
                if this.m_measurer.IsMeasuring() {
                    break;
                }
                if this.m_caret.IsAtStart() {
                    break;
                }
                if event.IsShiftDown() && this.m_selection.IsEmpty() {
                    this.m_selection.SetStartPosition(
                        this.m_caret.GetPosition()
                    );
                }
                if Equals(event.GetKey(), EInputKey.IK_Home) {
                    this.m_caret.MoveToStart();
                } else {
                    if event.IsControlDown() {
                        let stop: Int32 = this.m_text.GetPrevStop(this.m_caret.GetPosition());
                        if stop >= 0 {
                            this.m_caret.SetPosition(stop);
                        } else {
                            this.m_caret.MoveToPrevChar();
                        }
                    } else {
                        this.m_caret.MoveToPrevChar();
                    }
                }
                if event.IsShiftDown() {
                    this.m_selection.SetEndPosition(
                        this.m_caret.GetPosition()
                    );
                } else {
                    this.m_selection.Clear();
                }
                this.UpdateLayout();
                break;
            case EInputKey.IK_A:
                if event.IsControlDown() {
                    this.m_selection.SelectAll();
                    this.m_caret.MoveToStart();
                    this.UpdateLayout();
                }
                break;
            case EInputKey.IK_C:
                if event.IsControlDown() && !this.m_selection.IsEmpty() {
                    GameInstance.GetInkSystem().SetClipboardText(
                        UTF8StrMid(
                            this.m_text.GetText(),
                            this.m_selection.GetLeftPosition(),
                            this.m_selection.GetRightPosition() - this.m_selection.GetLeftPosition()
                        )
                    );
                }
                break;
            case EInputKey.IK_X:
                if event.IsControlDown() && !this.m_selection.IsEmpty() {
                    GameInstance.GetInkSystem().SetClipboardText(
                        UTF8StrMid(
                            this.m_text.GetText(),
                            this.m_selection.GetLeftPosition(),
                            this.m_selection.GetRightPosition() - this.m_selection.GetLeftPosition()
                        )
                    );
                    let position = this.m_selection.GetLeftPosition();
                    this.m_text.DeleteCharRange(
                        this.m_selection.GetLeftPosition(),
                        this.m_selection.GetRightPosition()
                    );
                    this.m_caret.SetMaxPosition(this.m_text.GetLength());
                    this.m_caret.SetPosition(position);
                    this.m_selection.SetMaxPosition(this.m_text.GetLength());
                    this.m_selection.Clear();
                    this.UpdateLayout();
                    this.TriggerChangeCallback();
                }
                break;
            case EInputKey.IK_V:
                let clipboard = GameInstance.GetInkSystem().GetClipboardText();
                let length = UTF8StrLen(clipboard);
                if event.IsControlDown() && length > 0 {
                    let position = this.m_caret.GetPosition();
                    if !this.m_selection.IsEmpty() {
                        position = this.m_selection.GetLeftPosition();
                        this.m_text.DeleteCharRange(
                            this.m_selection.GetLeftPosition(),
                            this.m_selection.GetRightPosition()
                        );
                        this.m_selection.Clear();
                    }
                    this.m_text.InsertTextAt(position, clipboard);
                    this.m_caret.SetMaxPosition(this.m_text.GetLength());
                    this.m_caret.SetPosition(position + length);
                    this.m_selection.SetMaxPosition(this.m_text.GetLength());
                    this.m_measurer.MeasureSpan(this.m_text.GetText(), position, length);
                }
                break;
        }
    }
    protected func TriggerChangeCallback() {
        this.CallCustomCallback(n"OnInput");
    }
    protected cb func OnInputKey(event: ref<inkKeyInputEvent>) {
        switch event.GetAction() {
            case EInputAction.IACT_Press:
                this.ProcessInputEvent(event);
                this.m_lastInputEvent = event;
                break;
            case EInputAction.IACT_Release:
                if Equals(event.GetKey(), this.m_lastInputEvent.GetKey()) {
                     this.m_lastInputEvent = null;
                }
                break;
        }
        this.m_isHoldComplete = false;
        this.m_holdTickCounter = 0;
    }
    protected cb func OnHoldTick(anim: ref<inkAnimProxy>) {
        if IsDefined(this.m_lastInputEvent) {
            this.m_holdTickCounter += 1;
            if this.m_holdTickCounter == (this.m_isHoldComplete ? 2 : 30) {
                this.ProcessInputEvent(this.m_lastInputEvent);
                this.m_isHoldComplete = true;
                this.m_holdTickCounter = 0;
            }
        }
    }
    protected cb func OnReleaseKey(event: ref<inkPointerEvent>) {
        if !this.m_measurer.IsMeasuring() {
            if event.IsAction(n"unequip_item") {
                this.SetText("");
                return;
            }
            if this.m_isFocused && event.IsAction(n"mouse_left") {
                let clickPoint: Vector2 = WidgetUtils.GlobalToLocal(this.m_text.GetRootWidget(), event.GetScreenSpacePosition());
                let clickPosition: Int32 = this.m_text.GetCharPosition(clickPoint.X);
                this.m_caret.SetPosition(clickPosition);
                this.m_selection.Clear();
                this.UpdateLayout();
            }
        }
    }
    protected cb func OnTextMeasured(widget: ref<inkWidget>) {
        let measuredPosition: Int32 = this.m_measurer.GetTargetPosition();
        let measuredSize: Vector2 = this.m_measurer.GetMeasuredSize();
        if this.m_measurer.IsCharMode() {
            this.m_text.SetCharWidth(measuredPosition, measuredSize.X);
        } else {
            this.m_text.SetCharOffset(measuredPosition, measuredSize.X);
        }
        if this.m_caret.IsAt(measuredPosition) {
            this.UpdateLayout();
            this.TriggerChangeCallback();
        }
    }
    protected cb func OnHoverOver(event: ref<inkPointerEvent>) -> Bool {
        this.SetHoveredState(true);
    }
    protected cb func OnHoverOut(event: ref<inkPointerEvent>) -> Bool {
        this.SetHoveredState(false);
    }
    protected cb func OnFocusReceived(event: ref<inkEvent>) {
        this.SetFocusedState(true);
    }
    protected cb func OnFocusLost(event: ref<inkEvent>) {
        this.SetFocusedState(false);
        this.m_lastInputEvent = null;
        this.m_isHoldComplete = false;
        this.m_holdTickCounter = 0;
    }
    public func GetName() -> CName {
        return this.m_root.GetName();
    }
    public func SetName(name: CName) {
        this.m_root.SetName(name);
    }
    public func GetText() -> String {
        return this.m_text.GetText();
    }
    public func SetText(text: String) {
        this.m_text.SetText(text);
        this.m_measurer.MeasureAllChars(text);
        this.m_selection.SetMaxPosition(this.m_text.GetLength());
        this.m_selection.Clear();
        this.m_caret.SetMaxPosition(this.m_text.GetLength());
        this.m_caret.MoveToStart();
        this.UpdateLayout();
        this.TriggerChangeCallback();
    }
    public func GetDefaultText() -> String {
        return this.m_text.GetDefaultText();
    }
    public func SetDefaultText(text: String) {
        this.m_text.SetDefaultText(text);
    }
    public func GetMaxLength() -> Int32 {
        return this.m_text.GetMaxLength();
    }
    public func SetMaxLength(max: Int32) {
        this.m_text.SetMaxLength(max);
    }
    public func GetLetterCase() -> textLetterCase {
        return this.m_text.GetLetterCase();
    }
    public func SetLetterCase(case: textLetterCase) {
        this.m_text.SetLetterCase(case);
    }
    public func GetWidth() -> Float {
        return this.m_root.GetWidth();
    }
    public func SetWidth(width: Float) {
        this.m_root.SetWidth(width);
        this.UpdateLayout();
    }
    public func GetCaretPosition() -> Int32 {
        return this.m_caret.GetPosition();
    }
    public func SetCaretPosition(position: Int32) {
        this.m_caret.SetPosition(position);
        this.UpdateLayout();
    }
    public func IsHovered() -> Bool {
        return this.m_isHovered && !this.m_isDisabled;
    }
    public func IsFocused() -> Bool {
        return this.m_isFocused && !this.m_isDisabled;
    }
    public func IsDisabled() -> Bool {
        return this.m_isDisabled;
    }
    public func IsEnabled() -> Bool {
        return !this.m_isDisabled;
    }
    public func SetDisabled(isDisabled: Bool) {
        this.SetDisabledState(isDisabled);
        this.UpdateLayout();
    }
    public static func Create() -> ref<TextInput> {
        let self: ref<TextInput> = new TextInput();
        self.CreateInstance();
        return self;
    }
}
