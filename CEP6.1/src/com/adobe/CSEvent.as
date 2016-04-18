package com.adobe {
	/**
	 * @author harbs
	 */
	public class CSEvent {
		/**
		 * @class CSEvent
		 * A standard JavaScript event, the base class for CEP events.
		 *
		 * @param type        The name of the event type.
		 * @param scope       The scope of event, can be "GLOBAL" or "APPLICATION".
		 * @param appId       The unique identifier of the application that generated the event.
		 * @param extensionId     The unique identifier of the extension that generated the event.
		 *
		 * @return A new \c CSEvent object
		 */
		function CSEvent(type : String = "", scope : String = "", appId : String = "", extensionId : String = "") {
		}

		public var type : String;
		public var scope : String;
		public var appId : String;
		public var extensionId : String;
		public var data : Object;
		
		public static const GLOBAL:String = "GLOBAL";
		public static const APPLICATION:String = "APPLICATION";
	}
}
