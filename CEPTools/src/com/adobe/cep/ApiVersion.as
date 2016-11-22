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
		function ApiVersion(major:Number=0, minor:Number=0, micro:Number=0)
		{
			this.major = major;
			this.minor = minor;
			this.micro = micro;
		}
		public var major:Number;
		public var minor:Number;
		public var micro:Number;
	}
}
