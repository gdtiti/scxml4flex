package scxml.nodes {
	import interfaces.IExecutable;

	dynamic public class Initial extends Array implements IExecutable {
		
		private var functions : Array;
		
		public function Initial(startArray : Array) {
			super();
			for each(var elem : * in startArray)
				push(elem);
			functions = [];
		}
		
		public function setExecFunctions(array : Array) : void {
			functions = array;
		}
		
		public function executeContent(scope : Object, dataModel : Object) : void {
			for each(var f : Function in functions)
				f(scope, dataModel);
		}
	}
}