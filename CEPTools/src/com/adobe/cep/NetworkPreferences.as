package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class NetworkPreferences {
		public function NetworkPreferences(prefs:Object) {
			isAdminOnline = prefs.isAdminOnline;
			isUserOnline = prefs.isUserOnline;
			isAppOnline = prefs.isAppOnline;
		}
		
		public var isAdminOnline:Boolean;
		public var isUserOnline:Boolean;
		public var isAppOnline:Boolean;
	}
}
