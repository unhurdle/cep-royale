package com.adobe {
	/**
	 * @author harbs
	 */
	public class AgoraLibStatus {
		public function AgoraLibStatus(status : String, code : String) {
			this.status = status;
			this.code = code;
		}

		public var status : String;
		public var code : String;
		static public const success : AgoraLibStatus = new AgoraLibStatus("Success", "0");
		static public const updateAvailable : AgoraLibStatus = new AgoraLibStatus("Success. Update available", "1");
		static public const entitlementAlreadyCreated : AgoraLibStatus = new AgoraLibStatus("Success. Entitlement already created", "2");
		static public const perpetualPurchase : AgoraLibStatus = new AgoraLibStatus("Perpetual purchase", "1");
		static public const trialPurchase : AgoraLibStatus = new AgoraLibStatus("Trial purchase", "2");
		static public const subscriptionPurchase : AgoraLibStatus = new AgoraLibStatus("Subscription purchase", "3");
		static public const free : AgoraLibStatus = new AgoraLibStatus("Free", "4");
		static public const userNotEntitledError : AgoraLibStatus = new AgoraLibStatus("User not entitled or product not found", "-1");
		static public const subscriptionExpiredError : AgoraLibStatus = new AgoraLibStatus("Subscription expired", "-2");
		static public const networkDisabledError : AgoraLibStatus = new AgoraLibStatus("Network disabled", "1001");
		static public const networkError : AgoraLibStatus = new AgoraLibStatus("Network error", "1002");
		static public const productNotFoundError : AgoraLibStatus = new AgoraLibStatus("Product not found", "1003");
		static public const UserLoggedOutError : AgoraLibStatus = new AgoraLibStatus("User logged out", "1004");
		static public const internalClientError : AgoraLibStatus = new AgoraLibStatus("Internal client error", "1005");
		static public const internalServerError : AgoraLibStatus = new AgoraLibStatus("Internal server error", "1006");
		static public const creativeCloudFailedToLaunchError : AgoraLibStatus = new AgoraLibStatus("Adobe Creative Cloud Desktop failed to launch", "1007");
		static public const creativeCloudNotFoundError : AgoraLibStatus = new AgoraLibStatus("Adobe Creative Cloud Desktop is not installed", "1008");
		static public const ApiNotSupportedError : AgoraLibStatus = new AgoraLibStatus("API not supported", "1009");
		static public const creativeCloudNotLaunchedError : AgoraLibStatus = new AgoraLibStatus("Creative Cloud was not launched", "1010");
	}
}
