package  {
	/**
	 * @author harbs
	 */
	public class AgoraLib {
		/** AgoraLib - v6.1.0 */
		/**
		 * @class AgoraLib
		 *
		 * AgoraLib provides an interface to the Adobe Exchange service and Exchange plugin.
		 * Please note that Vulcan.js is required.
		 */
		function AgoraLib() {
		}

		static public const IS_ENTITLED : String = "IsEntitled";
		static public const GET_PURCHASE_URL : String = "GetPurchaseUrl";
		static public const CREATE_ENTITLEMENT : String = "CreateEntitlement";
		static public const GET_VERSION : String = "GetVersion";
		static public const STATUS : String = "Status";
		static public const STATUSCODE : String = "StatusCode";
		static public const MESSAGE_TYPE : String = "vulcan.SuiteMessage.cosy.exchangeplugin.ApiRequest";
		static public const RESPONSE_TYPE : String = "vulcan.SuiteMessage.cosy.exchangeplugin.ApiResponse";
		static public const ACCC_STARTED_UP_MESSAGE : String = "vulcan.SuiteMessage.any.cosy.app.StartedUp";
		static public const MESSAGE_REQUEST_TEMPLATE : String = "<Message><Requests>{0}</Requests></Message>";
		static public const MESSAGE_RESPONSE_TEMPLATE : String = "<Message><Responses>{0}</Responses></Message>";
		static public const TIMEOUT : uint = 60000;
		static public var status : Object;

		/**
		 * Triggers a check to determine if the current user is entitled to access the active extension. 
		 * Possible responses are True, False or Unknown. Further information about the response can be found in
		 * the responses status and statusCode properties. For example, if the response is true, status and statusCode can 
		 * return the following combinations:\n
		 * <ul>\n
		 *     <li>1: Perpetual purchase</li>\n
		 *     <li>2: Trial purchase</li>\n
		 *     <li>3: Subscription purchase</li>\n
		 *     <li>4: Subscription expired {date}</li>\n
		 * </ul>\n
		 * 
		 * This API has a dependency on VulcanInterface.js and will throw an error if it is not defined.
		 * 
		 * @param callback  The JavaScript handler function to return the AgoraLibResponse object.
		 * @param ignoreACCC  When true this API will not attempt to launch the Adobe Creative Cloud Connection application if it is not running. The default value is false.
		 * @since 5.2.0
		 */
		public function isEntitled(callback : Function, ignoreACCC : Boolean = false) : void {
		}

		/**
		 * Calls the Adobe Exchange service for a Purchase Url for the active extension. If the request is successful the statusCode in the response will be 0.
		 * 
		 * This API has a dependency on VulcanInterface.js and will throw an error if it is not defined.      
		 *
		 * @param callback  The JavaScript handler function to return the AgoraLibResponse object. The Response property will either be the final checkout page or the product details page (see below).
		 * @param straightToCheckout If set to true the URL returned will be the final checkout page for this Extension on the Adobe Add-ons site. If set to false the
		 *                           URL returned will be the Product details page for this Extension on the Adobe Add-ons site. Default is false. 
		 * @param ignoreACCC  When true this API will not attempt to launch the Adobe Creative Cloud Connection application if it is not running. The default value is false.
		 * @since 5.2.0
		 */
		public function getPurchaseUrl(callback : Function, straightToCheckout : Boolean = false, ignoreACCC : Boolean = false) : void {
		}

		/**
		 * Creates an entitlement for this extension on Adobe Exchange for the signed in user. 
		 * If no user is available then the statusCode in the response will be 1004.
		 * If the request is successful the statusCode in the response will be 0.
		 *          
		 * By adding an entitlement the user will be kept up date with the latest version of the extension
		 * which will be published to Adobe Exchange.
		 * 
		 * This API has a dependency on VulcanInterface.js & CSInterface.js and will throw an error if either is not defined.
		 * 
		 * @param callback  The JavaScript handler function to return the AgoraLibResponse object.
		 * @param ignoreACCC  When true this API will not attempt to launch the Adobe Creative Cloud Connection application if it is not running. The default value is false.
		 * @since 5.2.0
		 */
		public function createEntitlement(callback : Function, ignoreACCC : Boolean = false) : void {
		}
	}
}
