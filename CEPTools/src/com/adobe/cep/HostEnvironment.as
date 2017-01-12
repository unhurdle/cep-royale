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
		public function HostEnvironment(env:Object) {
			this.appName = env.appName;
			this.appVersion = env.appVersion;
			this.appLocale = env.appLocale;
			this.appUILocale = env.appUILocale;
			this.appId = env.appId;
			this.isAppOnline = env.isAppOnline;
			this.appSkinInfo = new AppSkinInfo(env.appSkinInfo);
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
