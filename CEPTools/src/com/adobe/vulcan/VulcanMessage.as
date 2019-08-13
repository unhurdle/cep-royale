package  com.adobe.vulcan{
	/**
	 * @author harbs
	 */
	public class VulcanMessage {

		public static function fromObject(obj:Object):VulcanMessage
		{
			var message:VulcanMessage = new VulcanMessage();
			message.type = obj.type ? obj.type : "";
			message.scope = obj.scope ? obj.scope : "";
			message.appId = obj.appId ? obj.appId : "";
			message.appVersion = obj.appVersion ? obj.appVersion : "";
			message.data = obj.data ? obj.data : "";
			// message.setPayload(obj.data);

			return message;
		}

		public function VulcanMessage(type:String = "") {
			this.type = type;
		}

		public static const TYPE_PREFIX : String = "vulcan.SuiteMessage.";
		public static const SCOPE_SUITE : String = "GLOBAL";
		public static const DEFAULT_APP_ID : String = "UNKNOWN";
		public static const DEFAULT_APP_VERSION : String = "UNKNOWN";
		public static const DEFAULT_DATA : String = "<data><payload></payload></data>";
		public var type : String;
		public var scope : String;
		public var appId : String;
		public var appVersion : String;
		private var data : String;

		/**
		 * Initializes this message instance.
		 *
		 * @param message         A \c message instance to use for initialization.
		 */
		public function initialize(message : Object) : void {
			this.type = message.type ? message.type : "";
			this.scope = message.scope ? message.scope : "";
			this.appId = message.appId ? message.appId : "";
			this.appVersion = message.appVersion ? message.appVersion : "";
			// this.data = message.data ? message.data : "";
			setPayload(message.data);
		}

		/**
		 * Retrieve the message data.
		 *
		 * @return A data string in XML format.
		 */
		public function xmlData() : String {
			if(this.data == 'undefined'){
				this.data = DEFAULT_DATA;
			}
			return this.data;
		}

		/**
		 * Sets the message payload of this message.
		 *
		 * @param payload         A string containing the message payload.
		 */
		public function setPayload(payload : String) : void {
			var str:String = cep.encoding.convertion.utf8_to_b64(payload);
			str = "<payload>" + str + "</payload>";
			this.data = "<data>" + str + "</data>";
		}

		/**
		 * Retrieves the message payload of this message.
		 *
		 * @return                A string containing the message payload.
		 */
		public function getPayload() : String {
			var str:String = GetValueByKey(this.data, "payload");
			if(str != null)
			{
				return cep.encoding.convertion.b64_to_utf8(str);
			}

			return null;
		}

		/**
		 * Converts the properties of this instance to a string.
		 *
		 * @return The string version of this instance.
		 */
		public function toString() : String {
			var str:String = '"type":"' + this.type;
			str += '", "scope":"' + this.scope;
			str += '", "appId":"' + this.appId;
			str += '", "appVersion":"' + this.appVersion;
			str += '", "data":"' + this.xmlData() + '"';
			return str;
		}
		// public function toJSON():Object{
		// 	return {
		// 		"type"  : type,
		// 		"scope" : scope,
		// 		"appId" : appId,
		// 		"appVersion" : appVersion,
		// 		"data" : xmlData
		// 	}
		// }
		/**
		 * Retrieves the content of an XML element.
		 *
		 * @param xmlStr    The XML string.
		 * @param key       The name of the tag.
		 *
		 * @return          The content of the tag, or the empty string if such tag is found
		 *          or the tag has no content.
		 */
		public static function GetValueByKey(xmlStr:String, key:String):String
		{
				var parser:DOMParser = new DOMParser();
				try
				{
					var xmlDoc:* = parser.parseFromString(xmlStr, "text/xml");
					var node:* = xmlDoc.getElementsByTagName(key)[0];
					if(node && node.childNodes[0])
					{
						return node.childNodes[0].nodeValue;
					}
				}
				catch(e)
				{
					//log the error
				}
			return "";
		};
	}
}
