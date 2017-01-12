package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class VersionRange {
		/**
		 * @class VersionRange
		 * Defines a range of versions using a lower boundary and optional upper boundary.
		 *
		 * @param lowerBound The \c #VersionBound object.
		 * @param upperBound The \c #VersionBound object, or null for a range with no upper boundary.
		 *
		 * @return A new \c VersionRange object.
		 */
		function VersionRange(info:Object) {
			this.lowerBound = new VersionBound(info.lowerBound);
			this.upperBound = new VersionBound(info.upperBound);
		}

		public var lowerBound : VersionBound;
		public var upperBound : VersionBound;
	}
}
