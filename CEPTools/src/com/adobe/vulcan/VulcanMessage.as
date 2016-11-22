package  com.adobe.vulcan{
	/**
	 * @author harbs
	 */
	public class VulcanMessage {
		public function VulcanMessage(type : String) {
		}

		public static const TYPE_PREFIX : String = "vulcan.SuiteMessage.";
		public static const SCOPE_SUITE : String = "GLOBAL";
		public static const DEFAULT_APP_ID : String = "UNKNOWN";
		public static const DEFAULT_APP_VERSION : String = "UNKNOWN";
		public static const DEFAULT_DATA : String = "<data><payload></payload></data>";
		public static const dataTemplate : String = "<data>{0}</data>";
		public static const payloadTemplate : String = "<payload>{0}</payload>";
		public var type : String;
		public var scope : String;
		public var appId : String;
		public var appVersion : String;
		public var data : String;

		/**
		 * Initializes this message instance.
		 *
		 * @param message         A \c message instance to use for initialization.
		 */
		public function initialize(message : VulcanMessage) : void {
		}

		/**
		 * Retrieve the message data.
		 *
		 * @return A data string in XML format.
		 */
		public function xmlData() : String {
			return this.data;
		}

		/**
		 * Sets the message payload of this message.
		 *
		 * @param payload         A string containing the message payload.
		 */
		public function setPayload(payload : String) : void {
		}

		/**
		 * Retrieves the message payload of this message.
		 *
		 * @return                A string containing the message payload.
		 */
		public function getPayload() : String {
			return "";
		}

		/**
		 * Converts the properties of this instance to a string.
		 *
		 * @return The string version of this instance.
		 */
		public function toString() : String {
			return "";
		}
	}
}
