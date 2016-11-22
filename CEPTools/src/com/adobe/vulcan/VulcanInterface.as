package  com.adobe.vulcan{
	/**
	 * @author harbs
	 */
	public class VulcanInterface {
		/**
		 * Gets all available application specifiers on the local machine.
		 *
		 * @return The array of all available application specifiers.
		 */
		static public function getTargetSpecifiers() : void {
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
			targetSpecifier;focus;cmdLine;
			return true;
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
			targetSpecifier;
			return true;
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
			targetSpecifier;
			return true;
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
			targetSpecifier;
			return "";
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
		static public function addMessageListener(type : String, callback : Function, obj : Object) : void {
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
		static public function removeMessageListener(type : String, callback : Function, obj : Object) : void {
		}

		/**
		 * Dispatches a Vulcan message.
		 *
		 * @param vulcanMessage   The message object.
		 */
		static public function dispatchMessag(vulcanMessage : String) : void {
		}

		/**
		 * Retrieves the message payload of a Vulcan message for the registered message listener callback function.
		 *
		 * @param vulcanMessage   The message object.
		 * @return                A string containing the message payload.
		 */
		static public function getPayload(vulcanMessage : String) : Object {
			vulcanMessage;
			return null;
		}
	}
}
