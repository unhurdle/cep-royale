package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class HostEnvironment {
		/**
		 * @class HostEnvironment
		 * Stores information about the environment in which the extension is loaded.
		 *
		 * @param appName   The application's name.
		 * @param appVersion    The application's version.
		 * @param appLocale The application's current license locale.
		 * @param appUILocale   The application's current UI locale.
		 * @param appId     The application's unique identifier.
		 * @param isAppOnline  True if the application is currently online.
		 * @param appSkinInfo   An \c #AppSkinInfo object containing the application's default color and font styles.
		 *
		 * @return A new \c HostEnvironment object.
		 */
		public function HostEnvironment(appName : String = "", appVersion : String = "", appLocale : String = "", appUILocale : String = "", appId : String = "", isAppOnline : Boolean = false, appSkinInfo : AppSkinInfo = null) {
			this.appName = appName;
			this.appVersion = appVersion;
			this.appLocale = appLocale;
			this.appUILocale = appUILocale;
			this.appId = appId;
			this.isAppOnline = isAppOnline;
			this.appSkinInfo = appSkinInfo;
		}

		public var appName : String;
		public var appVersion : String;
		public var appLocale : String;
		public var appUILocale : String;
		public var appId : String;
		public var isAppOnline : Boolean;
		public var appSkinInfo : AppSkinInfo;
	}
}