typedef HTMLFormatConfiguration = {
	var readonly : Dynamic;
	var tabSize : Float;
	var insertSpaces : Bool;
	var wrapLineLength : Float;
	var unformatted : String;
	var contentUnformatted : String;
	var indentInnerHtml : Bool;
	var preserveNewLines : Bool;
	var maxPreserveNewLines : Float;
	var indentHandlebars : Bool;
	var endWithNewline : Bool;
	var extraLiners : String;
	var wrapAttributes : haxe.extern.EitherType<String, haxe.extern.EitherType<String, haxe.extern.EitherType<String, String>>>;
};
typedef CompletionConfiguration = { };
typedef Options = {
	var readonly : Dynamic;
	@:optional
	var format : HTMLFormatConfiguration;
	@:optional
	var suggest : CompletionConfiguration;
};
typedef LanguageServiceDefaults = {
	var readonly : Dynamic;
	var onDidChange : IEvent<LanguageServiceDefaults>;
	var options : Options;
	function setOptions(options:Options):Void;
};
extern class Monaco.languages.htmlTopLevel {
	static var htmlDefaults : LanguageServiceDefaults;
	static var handlebarDefaults : LanguageServiceDefaults;
	static var razorDefaults : LanguageServiceDefaults;
}
