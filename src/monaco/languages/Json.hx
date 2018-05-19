typedef DiagnosticsOptions = {
	var readonly : Dynamic;
	@:optional
	var validate : Bool;
	@:optional
	var allowComments : Bool;
	@:optional
	var schemas : Array<{ var readonly : Dynamic; var uri : String; @:optional
	var fileMatch : Array<String>; @:optional
	var schema : Dynamic; }>;
};
typedef LanguageServiceDefaults = {
	var readonly : Dynamic;
	var onDidChange : IEvent<LanguageServiceDefaults>;
	var diagnosticsOptions : DiagnosticsOptions;
	function setDiagnosticsOptions(options:DiagnosticsOptions):Void;
};
extern class Monaco.languages.jsonTopLevel {
	static var jsonDefaults : LanguageServiceDefaults;
}
