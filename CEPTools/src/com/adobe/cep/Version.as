package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Version {
		public function Version() {
		}

		/**
		 * The maximum value allowed for a numeric version component.
		 * This reflects the maximum value allowed in PlugPlug and the manifest schema.
		 */
		static public  const MAX : Number = 999999999;
		public var major : uint;
		public var minor : uint;
		public var micro : uint;
		public var special : String;
	}
}
