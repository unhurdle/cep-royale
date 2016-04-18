package com.adobe {
	/**
	 * @author harbs
	 */
	public class Vulcan {
		public function Vulcan() {
		}

		/**
		 * Gets all available application specifiers on the local machine.
		 *
		 * @return The array of all available application specifiers.
		 */
		public function getTargetSpecifiers() : Array {return null;}

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
		public function launchApp(targetSpecifier : String, focus : Boolean=false, cmdLine : String=null) : Boolean {
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
		public function isAppRunning(targetSpecifier : String) : Boolean {return true;}

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
		public function isAppInstalled(targetSpecifier : String) : Boolean {return true;}

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
		public function getAppPath(targetSpecifier : String) : String {return "";}

		/**
		 * Registers a message listener callback function for a Vulcan message.
		 *
		 * @param type            The message type.
		 * @param callback        The callback function that handles the message.
		 *            Takes one argument, the message object.
		 * @param obj             Optional, the object containing the callback method, if any.
		 *            Default is null.
		 */
		public function addMessageListener(type : String, callback : Function, obj : Object=null) : void {
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
		public function removeMessageListener(type : String, callback : Function, obj : Object=null) : void {
		}

		/**
		 * Dispatches a Vulcan message.
		 *
		 * @param vulcanMessage   The message object.
		 */
		public function dispatchMessage(vulcanMessage :VulcanMessage) : void {
		}

		/**
		 * Retrieves the message payload of a Vulcan message for the registered message listener callback function.
		 *
		 * @param vulcanMessage   The message object.
		 * @return                A string containing the message payload.
		 */
		public function getPayload(vulcanMessage :VulcanMessage) : String {
			return null;
		}
	}
}
