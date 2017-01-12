package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class ApiVersion {
		
		/**
	 * @class ApiVersion
	 * Stores current api version.
	 *
	 * Since 4.2.0
	 *
	 * @param major  The major version
	 * @param minor  The minor version.
	 * @param micro  The micro version.
	 *
	 * @return ApiVersion object.
	 */
		function ApiVersion(version:Object)
		{
			this.major = version.major;
			this.minor = version.minor;
			this.micro = version.micro;
		}
		public var major:Number;
		public var minor:Number;
		public var micro:Number;
	}
}
