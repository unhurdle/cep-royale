package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Util {
		/**
		 * @constant Invalid URL.
		 */
		static public const ERR_INVALID_URL : int = 201;
		/**
		 * @constant deprecated API.
		 */
		static public const DEPRECATED_API : int = 202;

		/**
		 * Opens a page in the default system browser.
		 *
		 * @param url {string} The URL of the page/file to open, or the email address.
		 * Must use HTTP/HTTPS/file/mailto. For example:
		 *  "http://www.adobe.com"
		 *  "https://github.com"
		 *  "file:///C:/log.txt"
		 *  "mailto:test@adobe.com"
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS</li></ul>
		 **/
		public function openURLInDefaultBrowser(url : String) : Object {
			return null;
		};

		/**
		 * Registers a callback function for extension unload. If called more than once,
		 * the last callback that is successfully registered is used.
		 *
		 * @deprecated since version 6.0.0
		 *
		 * @param callback {function}  The handler function.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_INVALID_PARAMS</li></ul>
		 **/
		public function registerExtensionUnloadCallback(callback : Function) : Object {
			return null;
		};

		/**
		 * Stores the user's proxy credentials
		 *
		 * @param username {string}  proxy username
		 * @param password {string}  proxy password
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of
		 *          <br>NO_ERROR
		 *          <br>ERR_INVALID_PARAMS </li>
		 *      </ul>
		 **/
		public function storeProxyCredentials(username : String, password : String) : Object {
			return null;
		};
	}
}
