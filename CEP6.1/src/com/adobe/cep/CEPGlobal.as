package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class CEPGlobal {

		public function addEventListener(type:String, listener:Function, obj:Object = null):void {}
		public function autoThemeColorChange():void {

		}
		public function closeExtension():void {}
		public function dispatchEvent(event:Object):void {}
		/**
		 * Writes installation information to a file.
		 *
		 * @return The file path.
		 */
		public function dumpInstallationInfo():String {return null;}
		public function evalScript(script:String, callback:Function):void {}
		public function getCurrentApiVersion():String {return null;}
		public function getCurrentImsUserId():Object {return null;}
		public function getExtensionId():String {return null;}
		public function getExtensions(extensionIdsStr:String):String {
			extensionIdsStr;return null;}
		public function getHostCapabilities():String {return null;}
		public function getHostEnvironment():String {return null;}
		public function getNetworkPreferences():String {return null;}
		public function getScaleFactor():Number {return null;}
		public function getSystemPath(path:String):String {path;return null;}
		/**
		 * Establishes an IMS session. Must be called before any IMS access methods.
		 * This method is not thread safe.
		 *
		 * @return An IMS reference string, as returned from IMSLib, which you
		 *  can then use to make further IMS calls to this object's methods.
		 *
		 * @deprecated Please use imsConnectWithEndpoint instead.
		 */
		public function imsConnect():String {return null;}
		public function imsDisconnect(imsRef:String):void {}

		/**
		 * Requests an access token from IMS for a given user and service.
		 *
		 * This function is asynchronous. To handle the result, register a callback for the event 
		 * "com.adobe.csxs.events.internal.ims.FetchAccessToken" or "com.adobe.csxs.events.internal.ims.FetchAccessTokenWithStatus".
		 * For event "com.adobe.csxs.events.internal.ims.FetchAccessToken", the event data is a JSON string 
		 * with format {"toua":"...",...,"emailVerified":"false"}.
		 * For event "com.adobe.csxs.events.internal.ims.FetchAccessTokenWithStatus", the event data is a JSON string
		 * with format {"status":"0","details":{"toua":"...",...,"emailVerified":"false"}}.
		 *
		 * @see addEventListener()
		 *
		 * @param imsRef         An IMS reference returned from the \c IMSConnect() call.
		 * @param clientID       The IMS client ID for your extension, assigned by the IMS team on registration.
		 *               This is the service-code value in the Renga Service Account Object for your client.
		 * @param clientSecret       The client secret associated with the provided client ID
		 * @param userAccountGuid    The unique person GUID for the Renga account, as returned by
		                the <code>fetchAccounts()</code> method. The token is generated for this user.
		 * @param serviceAccountGuid (optional, not currently used) A unique identifier for a Service Account Object (SAO).
		 * @param scope          (optional) A comma delimited list of services for which the refresh and access tokens are requested.
		                By default, this is 'openid,AdobeID'. Scope strings are case sensitive.
		                If the cached version of the refresh token does not match the
		                requested service scopes, a new refresh token is fetched.
		                To request your service's own SAO, add your service to the list;
		                for example,  'openid,AdobeID,browserlab'.
		 *
		 * @return A boolean status. Returning true means only the call to imsFetchAccessToken function itself is successful. 
		 *							Returning false means that failed to fetch access token.
		 */	
		public function imsFetchAccessToken(imsRef:String, clientId:String, clientSecret:String, userAccountGuid:String, serviceAccountGuid:String, scope:String):Boolean {
			imsRef;clientId;clientSecret;userAccountGuid;serviceAccountGuid;scope;return false;}
		public function imsFetchAccounts(imsRef:String, clientId:String):String {
			imsRef;clientId;return null;}
		public function imsSetProxyCredentials(proxyUsername:String, proxyPassword:String):void {}
		public function showAAM(clientId:String, clientSecret:String, redirectUri:String, userAccountGuid:String, serviceAccountGuid:String, scope:String):Boolean {
			clientId;clientSecret;redirectUri;userAccountGuid;serviceAccountGuid;scope;return false;}
		
		public function initResourceBundle():String {return null;}
		public function invokeAsync(command:String,payload:String,callback:Function,obj:Object=null):void {}
		public function invokeSync(command:String,payload:String):* {}
		public function registerInvalidCertificateCallback(callback:Function):* {}
		public function registerKeyEventsInterest(keyEventsInterest:String):* {}
		public function removeEventListener(type:String, listener:Function, obj:Object):void {}
		public function requestOpenExtension(extensionId:String, params:String):void {}
		public function resizeContent(width:Number, height:Number):void {}
		public function setScaleFactorChangedHandler(handler:Function):void {}		
	}

}