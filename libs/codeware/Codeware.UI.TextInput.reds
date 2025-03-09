// Codeware 1.15.0
module Codeware.UI.TextInput
import Codeware.UI.inkCustomController

public class Caret extends inkCustomController {
    protected let m_caret: wref<inkRectangle>;
    protected let m_position: Int32;
    protected let m_maxPosition: Int32;
    protected let m_opacity: Float;
    protected let m_fontSize: Float;
    protected let m_padSize: Float;
    protected let m_blinkAnimDef: ref<inkAnimDef>;
    protected let m_blinkAnimProxy: ref<inkAnimProxy>;
    protected cb func OnCreate() {
        this.InitializeProps();
        this.CreateWidgets();
        this.CreateAnimations();
    }
    protected cb func OnInitialize() {
        this.InitializeLayout();
    }
    protected func InitializeProps() {
        this.m_opacity = 0.9;
        this.m_padSize = 6.0;
    }
    protected func CreateWidgets() {
        let caret: ref<inkRectangle> = new inkRectangle();
        caret.SetName(n"caret");
        caret.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        caret.BindProperty(n"tintColor", n"MainColors.White");
        caret.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        this.m_caret = caret;
        this.SetRootWidget(this.m_caret);
    }
    protected func CreateAnimations() {
        let fadeInAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        fadeInAnim.SetStartTransparency(0.0);
        fadeInAnim.SetEndTransparency(this.m_opacity);
        fadeInAnim.SetStartDelay(0.9);
        fadeInAnim.SetDuration(0.1);
        let fadeOutAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        fadeOutAnim.SetStartTransparency(this.m_opacity);
        fadeOutAnim.SetEndTransparency(0.0);
        fadeOutAnim.SetStartDelay(0.4);
        fadeOutAnim.SetDuration(0.1);
        this.m_blinkAnimDef = new inkAnimDef();
        this.m_blinkAnimDef.AddInterpolator(fadeInAnim);
        this.m_blinkAnimDef.AddInterpolator(fadeOutAnim);
    }
    protected func InitializeLayout() {
        this.m_caret.SetSize(new Vector2(4.0, this.m_fontSize + this.m_padSize * 2.0));
    }
    public func GetFontSize() -> Int32 {
        return Cast(this.m_fontSize);
    }
    public func SetFontSize(fontSize: Int32) {
        this.m_fontSize = Cast(fontSize);
        this.InitializeLayout();
    }
    public func GetTintColor() -> HDRColor {
        return this.m_caret.GetTintColor();
    }
    public func SetTintColor(color: HDRColor) {
        this.m_caret.SetTintColor(color);
    }
    public func GetOpacity() -> Float {
        return this.m_opacity;
    }
    public func SetOpacity(opacity: Float) {
        this.m_opacity = opacity;
    }
    public func GetMaxPosition() -> Int32 {
        return this.m_maxPosition;
    }
    public func SetMaxPosition(max: Int32) {
        this.m_maxPosition = max;
    }
    public func GetPosition() -> Int32 {
        return this.m_position;
    }
    public func SetPosition(position: Int32) {
        position = Max(position, 0);
        position = Min(position, this.m_maxPosition);
        this.m_position = position;
    }
    public func AdjustPosition(diff: Int32) {
        this.SetPosition(this.m_position + diff);
    }
    public func MoveToNextChar() {
        this.SetPosition(this.m_position + 1);
    }
    public func MoveToPrevChar() {
        this.SetPosition(this.m_position - 1);
    }
    public func MoveToEnd() {
        this.SetPosition(this.m_maxPosition);
    }
    public func MoveToStart() {
        this.SetPosition(0);
    }
    public func IsAt(position: Int32) -> Bool {
        return this.m_position == position;
    }
    public func IsAtStart() -> Bool {
        return this.m_position == 0;
    }
    public func IsAtEnd() -> Bool {
        return this.m_position == this.m_maxPosition;
    }
    public func UpdateState(isFocused: Bool, caretOffset: Float) {
        this.m_blinkAnimProxy.Stop();
        if isFocused {
            let caretAnimOpts: inkAnimOptions;
            caretAnimOpts.loopInfinite = true;
            caretAnimOpts.loopType = inkanimLoopType.Cycle;
            this.m_blinkAnimProxy = this.m_caret.PlayAnimationWithOptions(this.m_blinkAnimDef, caretAnimOpts);
            this.m_caret.SetVisible(true);
            let caretPos: Vector2 = new Vector2(
                caretOffset,
                (this.m_fontSize - this.m_caret.GetHeight()) / 2.0
            );
            this.m_caret.SetTranslation(caretPos);
        } else {
            this.m_caret.SetVisible(false);
        }
    }
    public func GetSize() -> Vector2 {
        return this.m_caret.GetSize();
    }
    public static func Create(/*offsetProvider: ref<IOffsetProvider>*/) -> ref<Caret> {
        let self: ref<Caret> = new Caret();
        self.CreateInstance();
        return self;
    }
}

public class Selection extends inkCustomController {
    protected let m_selection: wref<inkRectangle>;
    protected let m_startPosition: Int32;
    protected let m_endPosition: Int32;
    protected let m_maxPosition: Int32;
    protected let m_fontSize: Float;
    protected let m_padSize: Float;
    protected cb func OnCreate() {
        this.InitializeProps();
        this.CreateWidgets();
    }
    protected cb func OnInitialize() {
        this.InitializeLayout();
    }
    protected func InitializeProps() {
        this.m_startPosition = -1;
        this.m_endPosition = -1;
        this.m_padSize = 6.0;
    }
    protected func CreateWidgets() {
        let selection: ref<inkRectangle> = new inkRectangle();
        selection.SetName(n"selection");
        selection.SetVisible(false);
        selection.SetOpacity(0.2);
        selection.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        selection.BindProperty(n"tintColor", n"MainColors.Blue");
        selection.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        this.m_selection = selection;
        this.SetRootWidget(this.m_selection);
    }
    protected func InitializeLayout() {
        this.m_selection.SetHeight(this.m_fontSize + this.m_padSize * 2.0);
    }
    public func GetFontSize() -> Int32 {
        return Cast(this.m_fontSize);
    }
    public func SetFontSize(fontSize: Int32) {
        this.m_fontSize = Cast(fontSize);
        this.InitializeLayout();
    }
    public func GetTintColor() -> HDRColor {
        return this.m_selection.GetTintColor();
    }
    public func SetTintColor(color: HDRColor) {
        this.m_selection.SetTintColor(color);
    }
    public func GetOpacity() -> Float {
        return this.m_selection.GetOpacity();
    }
    public func SetOpacity(opacity: Float) {
        this.m_selection.SetOpacity(opacity);
    }
    public func GetMaxPosition() -> Int32 {
        return this.m_maxPosition;
    }
    public func SetMaxPosition(max: Int32) {
        this.m_maxPosition = max;
    }
    public func GetStartPosition() -> Int32 {
        return this.m_startPosition;
    }
    public func SetStartPosition(value: Int32) {
        this.m_startPosition = value;
    }
    public func GetEndPosition() -> Int32 {
        return this.m_endPosition;
    }
    public func SetEndPosition(value: Int32) {
        this.m_endPosition = value;
    }
    public func SelectAll() {
        this.m_startPosition = 0;
        this.m_endPosition = this.m_maxPosition;
    }
    public func Clear() {
        this.m_startPosition = -1;
        this.m_endPosition = -1;
    }
    public func GetLeftPosition() -> Int32 {
        return Min(this.m_startPosition, this.m_endPosition);
    }
    public func GetRightPosition() -> Int32 {
        return Max(this.m_startPosition, this.m_endPosition);
    }
    public func GetRange() -> RectF {
        return new RectF(
            Cast(this.GetLeftPosition()),
            0.0,
            Cast(this.GetRightPosition()),
            0.0
        );
    }
    public func IsEmpty() -> Bool {
        return this.m_startPosition == this.m_endPosition;
    }
    public func UpdateState(isFocused: Bool, selectedBounds: RectF) {
        if isFocused && !this.IsEmpty() {
            this.m_selection.SetVisible(true);
            let selectionWidth: Float = selectedBounds.Right - selectedBounds.Left;
            let selectionPos: Vector2 = new Vector2(
                selectedBounds.Left,
                (this.m_fontSize - this.m_selection.GetHeight()) / 2.0
            );
            this.m_selection.SetWidth(selectionWidth);
            this.m_selection.SetTranslation(selectionPos);
        } else {
            this.m_selection.SetVisible(false);
        }
    }
    public static func Create() -> ref<Selection> {
        let self: ref<Selection> = new Selection();
        self.CreateInstance();
        return self;
    }
}

public class TextFlow extends inkCustomController {
    protected let m_text: wref<inkText>;
    protected let m_value: String;
    protected let m_placeholder: String;
    protected let m_length: Int32;
    protected let m_maxLength: Int32;
    protected let m_charOffsets: array<Float>;
    protected let m_tickProxy: ref<inkAnimProxy>;
    protected cb func OnCreate() {
        this.InitializeProps();
        this.CreateWidgets();
    }
    protected cb func OnInitialize() {
        this.InitializeOffsets();
        this.UpdatePlaceholder();
    }
    protected func InitializeProps() {
        this.m_maxLength = 4096;
    }
    protected func CreateWidgets() {
        let text: ref<inkText> = new inkText();
        text.SetName(n"text");
        text.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        text.SetFontStyle(n"Regular");
        text.SetFontSize(42);
        text.SetStyle(r"base\\gameplay\\gui\\common\\main_colors.inkstyle");
        text.BindProperty(n"tintColor", n"MainColors.Red");
        text.SetHorizontalAlignment(textHorizontalAlignment.Left);
        text.SetVerticalAlignment(textVerticalAlignment.Top);
        text.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        this.m_text = text;
        this.SetRootWidget(text);
    }
    protected func InitializeOffsets() {
        ArrayResize(this.m_charOffsets, this.m_length + 1);
        this.m_charOffsets[0] = 0;
        if this.m_length > 0 {
            let position: Int32 = 1;
            while position <= this.m_length {
                this.m_charOffsets[position] = -1.0;
                position += 1;
            }
        }
    }
    protected func ProcessInsertion(position: Int32, offset: Float) {
        ArrayInsert(this.m_charOffsets, position + 1, offset);
        if offset > 0.0 {
            let diff: Float = offset - this.m_charOffsets[position - 1];
            this.UpdateFollowers(position, diff);
        }
    }
    protected func ProcessDeletion(position: Int32) {
        let diff: Float = this.m_charOffsets[position] - this.m_charOffsets[position + 1];
        ArrayErase(this.m_charOffsets, position + 1);
        this.UpdateFollowers(position, diff);
    }
    protected func ProcessDeletion(start: Int32, end: Int32) {
        let diff: Float = this.m_charOffsets[start] - this.m_charOffsets[end];
        let position: Int32 = start + 1;
        while position <= end {
            ArrayErase(this.m_charOffsets, start + 1);
            position += 1;
        }
        this.UpdateFollowers(start, diff);
    }
    protected func UpdateFollowers(position: Int32, diff: Float) {
        if position != this.m_length {
            position += 1;
            while position <= this.m_length {
                if this.m_charOffsets[position] > 0.0 {
                    this.m_charOffsets[position] += diff;
                }
                position += 1;
            }
        }
    }
    protected func UpdatePlaceholder() {
        if this.IsEmpty() {
            this.m_text.SetText(this.m_placeholder);
            this.m_text.SetOpacity(0.15);
        } else {
            this.m_text.SetOpacity(1.0);
        }
    }
    public func GetText() -> String {
        return this.m_value;
    }
    public func SetText(text: String) {
        this.m_value = text;
        this.m_length = UTF8StrLen(text);
        this.m_text.SetText(this.m_value);
        this.InitializeOffsets();
        this.UpdatePlaceholder();
    }
    public func GetDefaultText() -> String {
        return this.m_placeholder;
    }
    public func SetDefaultText(text: String) {
        this.m_placeholder = text;
        this.UpdatePlaceholder();
    }
    public func GetLength() -> Int32 {
        return this.m_length;
    }
    public func GetMaxLength() -> Int32 {
        return this.m_maxLength;
    }
    public func SetMaxLength(max: Int32) {
        this.m_maxLength = max;
    }
    public func IsEmpty() -> Bool {
        return this.m_length == 0;
    }
    public func IsFull() -> Bool {
        return this.m_length == this.m_maxLength;
    }
    public func GetLetterCase() -> textLetterCase {
        return this.m_text.GetLetterCase();
    }
    public func SetLetterCase(case: textLetterCase) {
        this.m_text.SetLetterCase(case);
    }
    public func GetFontSize() -> Int32 {
        return this.m_text.GetFontSize();
    }
    public func SetFontSize(fontSize: Int32) {
        this.m_text.SetFontSize(fontSize);
    }
    public func GetCharOffset(position: Int32) -> Float {
        if position <= 0 || position > this.m_length {
            return 0.0;
        }
        return this.m_charOffsets[position];
    }
    public func SetCharOffset(position: Int32, offset: Float) {
        if this.m_charOffsets[position] < 0.0 && offset > 0.0 {
            this.m_charOffsets[position] = offset;
            this.UpdateFollowers(position, offset - this.m_charOffsets[position - 1]);
        }
    }
    public func GetCharWidth(position: Int32) -> Float {
        if position <= 0 || position > this.m_length {
            return 0.0;
        }
        return this.m_charOffsets[position] - this.m_charOffsets[position - 1];
    }
    public func SetCharWidth(position: Int32, width: Float) {
        if this.m_charOffsets[position] < 0.0 && width > 0.0 {
            this.m_charOffsets[position] = this.m_charOffsets[position - 1] + width;
            this.UpdateFollowers(position, width);
        }
    }
    public func GetCharPosition(offset: Float) -> Int32 {
        let position: Int32 = 0;
        while position < this.m_length {
            if this.m_charOffsets[position] < 0.0 {
                return 0; // break?
            }
            if this.m_charOffsets[position] >= offset {
                break;
            }
            position += 1;
        }
        return position;
    }
    public func GetCharRange(range: RectF) -> RectF {
        return new RectF(
            this.GetCharOffset(Cast(range.Left)),
            0.0,
            this.GetCharOffset(Cast(range.Right)),
            0.0
        );
    }
    public func GetNextStop(current: Int32) -> Int32 {
        return this.m_length; // FIXME
    }
    public func GetPrevStop(current: Int32) -> Int32 {
        return 0; // FIXME
    }
    public func InsertCharAt(position: Int32, char: String) {
        if this.m_length == this.m_maxLength {
            return;
        }
        position = Max(position, 0);
        position = Min(position, this.m_length);
        switch position {
            case 0:
                this.m_value = char + this.m_value;
                break;
            case this.m_length:
                this.m_value += char;
                break;
            default:
                this.m_value = UTF8StrLeft(this.m_value, position)
                    + char + UTF8StrRight(this.m_value, this.m_length - position);
        }
        this.m_length += 1;
        this.m_text.SetText(this.m_value);
        this.ProcessInsertion(position, -1.0);
        this.UpdatePlaceholder();
    }
    public func InsertTextAt(position: Int32, text: String) {
        let length = UTF8StrLen(text);
        if this.m_length + length > this.m_maxLength {
            return;
        }
        position = Max(position, 0);
        position = Min(position, this.m_length);
        switch position {
            case 0:
                this.m_value = text + this.m_value;
                break;
            case this.m_length:
                this.m_value += text;
                break;
            default:
                this.m_value = UTF8StrLeft(this.m_value, position)
                    + text + UTF8StrRight(this.m_value, this.m_length - position);
        }
        this.m_length += length;
        this.m_text.SetText(this.m_value);
        while length > 0 {
            this.ProcessInsertion(position, -1.0);
            position += 1;
            length -= 1;
        }
        this.UpdatePlaceholder();
    }
    public func DeleteCharAt(position: Int32) {
        position = Max(position, 0);
        position = Min(position, this.m_length - 1);
        switch position {
            case 0:
                this.m_value = UTF8StrRight(this.m_value, this.m_length - 1);
                break;
            case this.m_length - 1:
                this.m_value = UTF8StrLeft(this.m_value, this.m_length - 1);
                break;
            default:
                this.m_value = UTF8StrLeft(this.m_value, position)
                    + UTF8StrRight(this.m_value, this.m_length - position - 1);
        }
        this.m_length -= 1;
        this.m_text.SetText(this.m_value);
        this.ProcessDeletion(position);
        this.UpdatePlaceholder();
    }
    public func DeleteCharRange(start: Int32, end: Int32) {
        start = Max(start, 0);
        start = Min(start, this.m_length - 1);
        end = Max(end, 0);
        end = Min(end, this.m_length);
        if start == end {
            return;
        }
        this.m_value = UTF8StrLeft(this.m_value, start) + UTF8StrRight(this.m_value, this.m_length - end);
        this.m_length = UTF8StrLen(this.m_value);
        this.m_text.SetText(this.m_value);
        this.ProcessDeletion(start, end);
        this.UpdatePlaceholder();
    }
    public func GetDesiredSize() -> Vector2 {
        return new Vector2(
            this.m_charOffsets[this.m_length],
            Cast(this.m_text.GetFontSize())
        );
    }
    public static func Create() -> ref<TextFlow> {
        let self: ref<TextFlow> = new TextFlow();
        self.CreateInstance();
        return self;
    }
}

public class TextMeasurer extends inkCustomController {
    protected let m_shadow: wref<inkText>;
    protected let m_isMeasuring: Bool;
    protected let m_isCharMode: Bool;
    protected let m_targetText: String;
    protected let m_targetLength: Int32;
    protected let m_targetPosition: Int32;
    protected let m_resultSize: Vector2;
    protected let m_tickProxy: ref<inkAnimProxy>;
    protected let m_useCharCache: Bool;
    protected let m_charCache: ref<inkStringMap>;
    protected cb func OnCreate() {
        this.InitializeProps();
        this.CreateWidgets();
    }
    protected cb func OnInitialize() {
        this.RegisterTick();
    }
    protected func InitializeProps() {
        this.m_useCharCache = true;
        this.m_charCache = new inkStringMap();
    }
    protected func CreateWidgets() {
        let shadow: ref<inkText> = new inkText();
        shadow.SetName(n"shadow");
        shadow.SetVisible(false);
        shadow.SetAffectsLayoutWhenHidden(true);
        shadow.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        shadow.SetHorizontalAlignment(textHorizontalAlignment.Left);
        shadow.SetVerticalAlignment(textVerticalAlignment.Center);
        shadow.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        this.m_shadow = shadow;
        this.SetRootWidget(shadow);
    }
    protected func RegisterTick() {
        let tickAnim: ref<inkAnimTransparency> = new inkAnimTransparency();
        tickAnim.SetStartTransparency(1.0);
        tickAnim.SetEndTransparency(1.0);
        tickAnim.SetDuration(1.0 / 60.0);
        let tickAnimDef: ref<inkAnimDef> = new inkAnimDef();
        tickAnimDef.AddInterpolator(tickAnim);
        let tickAnimOpts: inkAnimOptions;
        tickAnimOpts.loopInfinite = true;
        tickAnimOpts.loopType = inkanimLoopType.Cycle;
        this.m_tickProxy = this.m_shadow.PlayAnimationWithOptions(tickAnimDef, tickAnimOpts);
        this.m_tickProxy.RegisterToCallback(inkanimEventType.OnStartLoop, this, n"OnTick");
        this.m_tickProxy.Pause();
    }
    protected func MakeTargetChar() -> String {
        return UTF8StrMid(this.m_targetText, Min(UTF8StrLen(this.m_targetText), this.m_targetPosition) - 1, 1);
    }
    protected func MakeTargetChunk() -> String {
        return UTF8StrLeft(this.m_targetText, this.m_targetPosition);
    }
    protected func QueueMeasure(text: String, char: Bool, length: Int32, position: Int32) -> Bool {
        if !this.m_isMeasuring {
            this.m_isCharMode = char;
            this.m_targetText = text;
            this.m_targetLength = length;
            this.m_targetPosition = position;
            if this.m_isCharMode {
                if !this.MeasureWithCache() {
                    this.m_isMeasuring = true;
                    this.m_shadow.SetText(this.MakeTargetChar());
                    this.m_tickProxy.Resume();
                }
            } else {
                this.m_isMeasuring = true;
                this.m_shadow.SetText(this.MakeTargetChunk());
                this.m_tickProxy.Resume();
            }
        }
        return false;
    }
    protected func MeasureWithCache() -> Bool {
        if !this.m_useCharCache {
            return false;
        }
        while this.m_targetPosition <= this.m_targetLength {
            let targetChar: String = this.MakeTargetChar();
            if !this.m_charCache.KeyExist(targetChar) {
                return false;
            }
            this.m_resultSize = new Vector2(
                Cast(this.m_charCache.Get(targetChar)),
                0.0
            );
            this.CallCustomCallback(n"OnCharMeasured");
            this.m_targetPosition += 1;
        }
        this.m_isMeasuring = false;
        this.m_targetPosition = this.m_targetLength;
        return true;
    }
    protected func AddResultToCache() {
        if this.m_useCharCache {
            this.m_charCache.Insert(this.m_shadow.GetText(), Cast(this.m_resultSize.X));
        }
    }
    protected cb func OnTick(anim: ref<inkAnimProxy>) {
        if !this.m_isMeasuring {
            this.m_tickProxy.Pause();
            return;
        }
        this.m_resultSize = this.m_shadow.GetDesiredSize();
        if this.m_resultSize.X < 0.01 {
            this.m_tickProxy.Resume();
            return;
        }
        if this.m_isCharMode {
            this.AddResultToCache();
            this.CallCustomCallback(n"OnCharMeasured");
            if this.m_targetPosition < this.m_targetLength {
                this.m_targetPosition += 1;
                if !this.MeasureWithCache() {
                    this.m_shadow.SetText(this.MakeTargetChar());
                    this.m_tickProxy.Resume();
                    return;
                }
            }
        } else {
            this.CallCustomCallback(n"OnTextMeasured");
            if this.m_targetPosition < this.m_targetLength {
                this.m_targetPosition += 1;
                this.m_shadow.SetText(this.MakeTargetChunk());
                this.m_tickProxy.Resume();
                return;
            }
        }
        this.m_shadow.SetText("");
        this.m_tickProxy.Pause();
        this.m_isMeasuring = false;
    }
    public func IsMeasuring() -> Bool {
        return this.m_isMeasuring;
    }
    public func IsCharMode() -> Bool {
        return this.m_isCharMode;
    }
    public func GetTargetText() -> String {
        return this.m_targetText;
    }
    public func GetTargetLength() -> Int32 {
        return this.m_targetLength;
    }
    public func GetTargetPosition() -> Int32 {
        return this.m_targetPosition;
    }
    public func GetMeasuredSize() -> Vector2 {
        return this.m_resultSize;
    }
    public func CopyTextSettings(source: ref<inkText>) {
        if IsDefined(source) {
            this.m_shadow.SetFontStyle(source.GetFontStyle());
            this.m_shadow.SetFontSize(source.GetFontSize());
        }
    }
    public func CopyTextSettings(source: ref<inkCustomController>) {
        this.CopyTextSettings(source.GetRootWidget() as inkText);
    }
    public func MeasureChar(char: String, opt position: Int32) -> Bool {
        return this.QueueMeasure(char, true, position, position);
    }
    public func MeasureSpan(text: String, position: Int32, length: Int32) -> Bool {
        return this.QueueMeasure(text, true, position + length, position);
    }
    public func MeasureAllChars(text: String) -> Bool {
        return this.QueueMeasure(text, true, UTF8StrLen(text), 1);
    }
    public func MeasureChunk(text: String) -> Bool {
        return this.QueueMeasure(text, false, UTF8StrLen(text), 1);
    }
    public func MeasureChunk(text: String, position: Int32) -> Bool {
        return this.QueueMeasure(text, false, position, position);
    }
    public static func Create() -> ref<TextMeasurer> {
        let self: ref<TextMeasurer> = new TextMeasurer();
        self.CreateInstance();
        return self;
    }
}

public class Viewport extends inkCustomController {
    protected let m_viewport: wref<inkScrollArea>;
    protected let m_content: wref<inkCanvas>;
    protected let m_caretSize: Vector2;
    protected cb func OnCreate() {
        this.CreateWidgets();
    }
    protected func CreateWidgets() {
        let viewport: ref<inkScrollArea> = new inkScrollArea();
        viewport.SetName(n"viewport");
        viewport.SetAnchor(inkEAnchor.Fill);
        viewport.SetMargin(new inkMargin(8.0, 4.0, 8.0, 4.0));
        viewport.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        viewport.SetFitToContentDirection(inkFitToContentDirection.Vertical);
        viewport.SetConstrainContentPosition(true);
        viewport.SetUseInternalMask(true);
        let content: ref<inkCanvas> = new inkCanvas();
        content.SetName(n"content");
        content.SetRenderTransformPivot(new Vector2(0.0, 0.0));
        content.Reparent(viewport);
        this.m_viewport = viewport;
        this.m_content = content;
        this.SetRootWidget(viewport);
        this.SetContainerWidget(content);
    }
    public func GetCaretSize() -> Vector2 {
        return this.m_caretSize;
    }
    public func SetCaretSize(caretSize: Vector2) {
        this.m_caretSize = caretSize;
    }
    public func UpdateState(contentSize: Vector2, caretOffset: Float) {
        if contentSize.X <= 0.01 {
            contentSize = this.m_caretSize;
        }
        let viewportSize: Vector2 = this.m_viewport.GetViewportSize();
        let contentOffset: Vector2 = this.m_content.GetTranslation();
        if contentSize.X <= viewportSize.X {
            contentOffset.X = 0.0;
        } else {
            let viewportBounds: inkMargin = new inkMargin(
                -contentOffset.X,
                0.0,
                -contentOffset.X + viewportSize.X,
                0.0
            );
            if caretOffset < viewportBounds.left {
                contentOffset.X = -caretOffset;
            } else {
                if caretOffset > viewportBounds.right {
                    contentOffset.X = -(caretOffset - viewportSize.X + this.m_caretSize.X);
                } else {
                    contentOffset.X = MaxF(contentOffset.X, -(contentSize.X - viewportSize.X + this.m_caretSize.X));
                }
            }
        }
        this.m_content.SetSize(contentSize);
        this.m_content.SetTranslation(contentOffset);
    }
    public static func Create() -> ref<Viewport> {
        let self: ref<Viewport> = new Viewport();
        self.CreateInstance();
        return self;
    }
}
