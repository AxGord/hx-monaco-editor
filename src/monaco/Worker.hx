typedef IMirrorModel = {
	var readonly : Dynamic;
	var uri : Uri;
	var version : Float;
	function getValue():String;
};
typedef IWorkerContext = {
	function getMirrorModels():Array<IMirrorModel>;
};
