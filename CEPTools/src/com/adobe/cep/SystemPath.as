package  com.adobe.cep{
	/**
	 * @author harbs
	 */
	public class SystemPath {
		/**
		 * @class SystemPath
		 * Stores operating-system-specific location constants for use in the
		 * \c #CSInterface.getSystemPath() method.
		 * @return A new \c SystemPath object.
		 */
		function SystemPath() {
		}

		/** The path to user data.  */
		static public const USER_DATA : String = "userData";
		/** The path to common files for Adobe applications.  */
		static public const COMMON_FILES : String = "commonFiles";
		/** The path to the user's default document folder.  */
		static public const MY_DOCUMENTS : String = "myDocuments";
		/** @deprecated. Use \c #SystemPath.Extension.  */
		static public const APPLICATION : String = "application";
		/** The path to current extension.  */
		static public const EXTENSION : String = "extension";
		/** The path to hosting application's executable.  */
		static public const HOST_APPLICATION : String = "hostApplication";
	}
}
