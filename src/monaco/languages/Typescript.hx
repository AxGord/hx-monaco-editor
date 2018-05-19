@:enum abstract ModuleKind(Int) {
	var None = 0;
	var CommonJS = 1;
	var AMD = 2;
	var UMD = 3;
	var System = 4;
	var ES2015 = 5;
}
@:enum abstract JsxEmit(Int) {
	var None = 0;
	var Preserve = 1;
	var React = 2;
}
@:enum abstract NewLineKind(Int) {
	var CarriageReturnLineFeed = 0;
	var LineFeed = 1;
}
@:enum abstract ScriptTarget(Int) {
	var ES3 = 0;
	var ES5 = 1;
	var ES2015 = 2;
	var ES2016 = 3;
	var ES2017 = 4;
	var ESNext = 5;
	var Latest = 5;
}
@:enum abstract ModuleResolutionKind(Int) {
	var Classic = 1;
	var NodeJs = 2;
}
typedef CompilerOptions = {
	@:optional
	var allowJs : Bool;
	@:optional
	var allowSyntheticDefaultImports : Bool;
	@:optional
	var allowUnreachableCode : Bool;
	@:optional
	var allowUnusedLabels : Bool;
	@:optional
	var alwaysStrict : Bool;
	@:optional
	var baseUrl : String;
	@:optional
	var charset : String;
	@:optional
	var declaration : Bool;
	@:optional
	var declarationDir : String;
	@:optional
	var disableSizeLimit : Bool;
	@:optional
	var emitBOM : Bool;
	@:optional
	var emitDecoratorMetadata : Bool;
	@:optional
	var experimentalDecorators : Bool;
	@:optional
	var forceConsistentCasingInFileNames : Bool;
	@:optional
	var importHelpers : Bool;
	@:optional
	var inlineSourceMap : Bool;
	@:optional
	var inlineSources : Bool;
	@:optional
	var isolatedModules : Bool;
	@:optional
	var jsx : JsxEmit;
	@:optional
	var lib : Array<String>;
	@:optional
	var locale : String;
	@:optional
	var mapRoot : String;
	@:optional
	var maxNodeModuleJsDepth : Float;
	@:optional
	var module : ModuleKind;
	@:optional
	var moduleResolution : ModuleResolutionKind;
	@:optional
	var newLine : NewLineKind;
	@:optional
	var noEmit : Bool;
	@:optional
	var noEmitHelpers : Bool;
	@:optional
	var noEmitOnError : Bool;
	@:optional
	var noErrorTruncation : Bool;
	@:optional
	var noFallthroughCasesInSwitch : Bool;
	@:optional
	var noImplicitAny : Bool;
	@:optional
	var noImplicitReturns : Bool;
	@:optional
	var noImplicitThis : Bool;
	@:optional
	var noUnusedLocals : Bool;
	@:optional
	var noUnusedParameters : Bool;
	@:optional
	var noImplicitUseStrict : Bool;
	@:optional
	var noLib : Bool;
	@:optional
	var noResolve : Bool;
	@:optional
	var out : String;
	@:optional
	var outDir : String;
	@:optional
	var outFile : String;
	@:optional
	var preserveConstEnums : Bool;
	@:optional
	var project : String;
	@:optional
	var reactNamespace : String;
	@:optional
	var jsxFactory : String;
	@:optional
	var removeComments : Bool;
	@:optional
	var rootDir : String;
	@:optional
	var rootDirs : Array<String>;
	@:optional
	var skipLibCheck : Bool;
	@:optional
	var skipDefaultLibCheck : Bool;
	@:optional
	var sourceMap : Bool;
	@:optional
	var sourceRoot : String;
	@:optional
	var strictNullChecks : Bool;
	@:optional
	var suppressExcessPropertyErrors : Bool;
	@:optional
	var suppressImplicitAnyIndexErrors : Bool;
	@:optional
	var target : ScriptTarget;
	@:optional
	var traceResolution : Bool;
	@:optional
	var types : Array<String>;
	@:optional
	var typeRoots : Array<String>;
};
typedef DiagnosticsOptions = {
	@:optional
	var noSemanticValidation : Bool;
	@:optional
	var noSyntaxValidation : Bool;
};
typedef LanguageServiceDefaults = {
	function addExtraLib(content:String, ?filePath:String):IDisposable;
	function setCompilerOptions(options:CompilerOptions):Void;
	function setDiagnosticsOptions(options:DiagnosticsOptions):Void;
	function setMaximumWorkerIdleTime(value:Float):Void;
	function setEagerModelSync(value:Bool):Void;
};
extern class Monaco.languages.typescriptTopLevel {
	static var typescriptDefaults : LanguageServiceDefaults;
	static var javascriptDefaults : LanguageServiceDefaults;
	static var getTypeScriptWorker : Void -> Promise<Dynamic>;
	static var getJavaScriptWorker : Void -> Promise<Dynamic>;
}
