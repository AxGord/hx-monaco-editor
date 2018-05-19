typedef DiagnosticsOptions = {
	var readonly : Dynamic;
	@:optional
	var validate : Bool;
	@:optional
	var lint : { var readonly : Dynamic; @:optional
	var compatibleVendorPrefixes : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var vendorPrefix : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var duplicateProperties : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var emptyRules : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var importStatement : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var boxModel : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var universalSelector : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var zeroUnits : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var fontFaceProperties : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var hexColorLength : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var argumentsInColorFunction : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var unknownProperties : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var ieHack : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var unknownVendorSpecificProperties : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var propertyIgnoredDueToDisplay : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var important : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var float : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; @:optional
	var idSelector : haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>; };
};
typedef LanguageServiceDefaults = {
	var readonly : Dynamic;
	var onDidChange : IEvent<LanguageServiceDefaults>;
	var diagnosticsOptions : DiagnosticsOptions;
	function setDiagnosticsOptions(options:DiagnosticsOptions):Void;
};
extern class Monaco.languages.cssTopLevel {
	static var cssDefaults : LanguageServiceDefaults;
	static var lessDefaults : LanguageServiceDefaults;
	static var scssDefaults : LanguageServiceDefaults;
}
