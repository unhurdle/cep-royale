package  com.adobe.vulcan{
	import com.adobe.cep.CEPGlobal;

	public class Vulcan {
		
		private static var _cepGlobal:CEPGlobal;
		private static function get cepGlobal():CEPGlobal{
			if(!_cepGlobal){
				_cepGlobal = window["__adobe_cep__"];
			}
			return _cepGlobal;
		}
		/**
		 * Gets all available application specifiers on the local machine.
		 *
		 * @return The array of all available application specifiers.
		 */
		static public function getTargetSpecifiers() : Array {
			return JSON.parse(cepGlobal.invokeSync("vulcanGetTargetSpecifiers", "{}")) as Array;
		}

		/**
		 * Launches a CC application on the local machine, if it is not already running.
		 *
		 * @param targetSpecifier The application specifier; for example "indesign".
		 *
		 *        Note: In Windows 7 64-bit or Windows 8 64-bit system, some target applications (like Photoshop and Illustrator) have both 32-bit version
		 *        and 64-bit version. Therefore, we need to specify the version by this parameter with "photoshop-70.032" or "photoshop-70.064". If you
		 *        installed Photoshop 32-bit and 64-bit on one Windows 64-bit system and invoke this interface with parameter "photoshop-70.032", you may
		 *        receive wrong result.
		 *        The specifiers for Illustrator is "illustrator-17.032", "illustrator-17.064", "illustrator-17" and "illustrator".
		 *
		 *        In other platforms there is no such issue, so we can use "photoshop" or "photoshop-70" as specifier.
		 * @param focus           True to launch in foreground, or false to launch in the background.
		 * @param cmdLine         Optional, command-line parameters to supply to the launch command.
		 * @return True if the app can be launched, false otherwise.
		 */
		static public function launchApp(targetSpecifier : String, focus : String, cmdLine : String) : Boolean {
			if(!requiredParamsValid(targetSpecifier) )
			{
				return false;
			}
			var params:Object = {};
			params.targetSpecifier = targetSpecifier;
			params.focus = focus ? "true" : "false";
			params.cmdLine = (cmdLine == 'undefined' || cmdLine == null) ? "" : cmdLine;
			
			return JSON.parse(cepGlobal.invokeSync("vulcanLaunchApp", JSON.stringify(params))).result;
		}

		/**
		 * Checks whether a CC application is running on the local machine.
		 *
		 * @param targetSpecifier The application specifier; for example "indesign".
		 *
		 *        Note: In Windows 7 64-bit or Windows 8 64-bit system, some target applications (like Photoshop and Illustrator) have both 32-bit version
		 *        and 64-bit version. Therefore, we need to specify the version by this parameter with "photoshop-70.032" or "photoshop-70.064". If you
		 *        installed Photoshop 32-bit and 64-bit on one Windows 64-bit system and invoke this interface with parameter "photoshop-70.032", you may
		 *        receive wrong result.
		 *        The specifiers for Illustrator is "illustrator-17.032", "illustrator-17.064", "illustrator-17" and "illustrator".
		 *
		 *        In other platforms there is no such issue, so we can use "photoshop" or "photoshop-70" as specifier.
		 * @return True if the app is running, false otherwise.
		 */
		static public function isAppRunning(targetSpecifier : String) : Boolean {
			if(!requiredParamsValid(targetSpecifier) )
			{
				return false;
			}
			
			var params:Object = {};
			params.targetSpecifier = targetSpecifier;
			
			return JSON.parse(cepGlobal.invokeSync("vulcanIsAppRunning", JSON.stringify(params))).result;
		}

		/**
		 * Checks whether a CC application is installed on the local machine.
		 *
		 * @param targetSpecifier The application specifier; for example "indesign".
		 *
		 *        Note: In Windows 7 64-bit or Windows 8 64-bit system, some target applications (like Photoshop and Illustrator) have both 32-bit version
		 *        and 64-bit version. Therefore, we need to specify the version by this parameter with "photoshop-70.032" or "photoshop-70.064". If you
		 *        installed Photoshop 32-bit and 64-bit on one Windows 64-bit system and invoke this interface with parameter "photoshop-70.032", you may
		 *        receive wrong result.
		 *        The specifiers for Illustrator is "illustrator-17.032", "illustrator-17.064", "illustrator-17" and "illustrator".
		 *
		 *        In other platforms there is no such issue, so we can use "photoshop" or "photoshop-70" as specifier.
		 * @return True if the app is installed, false otherwise.
		 */
		static public function isAppInstalled(targetSpecifier : String) : Boolean {
			if(!requiredParamsValid(targetSpecifier) )
			{
				return false;
			}
			
			var params:Object = {};
			params.targetSpecifier = targetSpecifier;
			
			return JSON.parse(cepGlobal.invokeSync("vulcanIsAppInstalled", JSON.stringify(params))).result as Boolean;
		}

		/**
		 * Retrieves the local install path of a CC application.
		 *
		 * @param targetSpecifier The application specifier; for example "indesign".
		 *
		 *        Note: In Windows 7 64-bit or Windows 8 64-bit system, some target applications (like Photoshop and Illustrator) have both 32-bit version
		 *        and 64-bit version. Therefore, we need to specify the version by this parameter with "photoshop-70.032" or "photoshop-70.064". If you
		 *        installed Photoshop 32-bit and 64-bit on one Windows 64-bit system and invoke this interface with parameter "photoshop-70.032", you may
		 *        receive wrong result.
		 *        The specifiers for Illustrator is "illustrator-17.032", "illustrator-17.064", "illustrator-17" and "illustrator".
		 *
		 *        In other platforms there is no such issue, so we can use "photoshop" or "photoshop-70" as specifier.
		 * @return The path string if the application is found, "" otherwise.
		 */
		static public function getAppPath(targetSpecifier : String) : String {
			if(!requiredParamsValid(targetSpecifier) )
			{
				return "";
			}
			
			var params:Object = {};
			params.targetSpecifier = targetSpecifier;
			
			return JSON.parse(cepGlobal.invokeSync("vulcanGetAppPath", JSON.stringify(params))).result as String;
		}

		/**
		 * Registers a message listener callback function for a Vulcan message.
		 *
		 * @param type            The message type.
		 * @param callback        The callback function that handles the message.
		 *            Takes one argument, the message object.
		 * @param obj             Optional, the object containing the callback method, if any.
		 *            Default is null.
		 */
		static public function addMessageListener(type : String, callback : Function) : void {
			if(!requiredParamsValid(type, callback) || !strStartsWith(type, VulcanMessage.TYPE_PREFIX))
			{
				return;
			}

			var params:Object = {};
			params.type = type;
			
			cepGlobal.invokeAsync("vulcanAddMessageListener", JSON.stringify(params), callback);
			// cepGlobal.invokeAsync("vulcanAddMessageListener", JSON.stringify(params), callback, obj);
		}

		/**
		 * Removes a registered message listener callback function for a Vulcan message.
		 *
		 * @param type            The message type.
		 * @param callback        The callback function that was registered.
		 *            Takes one argument, the message object.
		 * @param obj             Optional, the object containing the callback method, if any.
		 *            Default is null.
		 */
		static public function removeMessageListener(type : String, callback : Function, obj : Object = null) : void {
			if(!requiredParamsValid(type, callback) || !strStartsWith(type, VulcanMessage.TYPE_PREFIX))
			{
				return;
			}
			
			var params:Object = {};
			params.type = type;
			
			cepGlobal.invokeAsync("vulcanRemoveMessageListener", JSON.stringify(params), callback);
			// cepGlobal.invokeAsync("vulcanRemoveMessageListener", JSON.stringify(params), callback, obj);
		}

		/**
		 * Dispatches a Vulcan message.
		 *
		 * @param vulcanMessage   The message object.
		 */
		static public function dispatchMessage(vulcanMessage : VulcanMessage) : void {
			if(!vulcanMessage.type){
				return;
			}
			if(!requiredParamsValid(vulcanMessage.type) || !strStartsWith(vulcanMessage.type, VulcanMessage.TYPE_PREFIX))
			{
				return;
			}

			var params:Object = {};
			var message:VulcanMessage = new VulcanMessage(vulcanMessage.type);
			message.initialize(vulcanMessage);
			params.vulcanMessage = message;
			trace('JSON.stringify(params)');
			trace(JSON.stringify(params));
			var payload:String = '{"vulcanMessage":{' + vulcanMessage.toString() + '}}'
			trace('payload');
			trace(payload);
			cepGlobal.invokeSync("vulcanDispatchMessage", payload);
		}

		/**
		 * Retrieves the message payload of a Vulcan message for the registered message listener callback function.
		 *
		 * @param vulcanMessage   The message object.
		 * @return                A string containing the message payload.
		 */
		static public function getPayload(vulcanMessage : VulcanMessage) : Object {
			if(!requiredParamsValid(vulcanMessage.type) || !strStartsWith(vulcanMessage.type, VulcanMessage.TYPE_PREFIX))
			{
				return null;
			}

			var message:VulcanMessage = new VulcanMessage(vulcanMessage.type);
			message.initialize(vulcanMessage);
			return message.getPayload();
		}
		/**
		 * Reports whether required parameters are valid.
		 *
		 * @return    True if all required parameters are valid,
		 *            false if any of the required parameters are invalid.
		 */
		static private function requiredParamsValid(s:String,callBack:Function = null):Boolean
		{
			for(var i:int = 0; i< arguments.length; i++)
			{
				var argument:* = arguments[i];
				if(argument == undefined || argument == null)
				{
					return false;
				}
			}

			return true;
		};

		/**
		 * Reports whether a string has a given prefix.
		 *
		 * @param str       The target string.
		 * @param prefix    The specific prefix string.
		 *
		 * @return          True if the string has the prefix, false if not.
		 */
		static private function strStartsWith(str:String, prefix:String):Boolean
		{
			if(typeof str != "string")
			{
				return false;
			}
			return str.indexOf(prefix) === 0;
		};
	}
}
