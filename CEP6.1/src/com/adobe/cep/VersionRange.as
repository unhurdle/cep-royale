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
		function VersionRange(lowerBound : VersionBound = null, upperBound : VersionBound = null) {
		}

		public var lowerBound : VersionBound;
		public var upperBound : VersionBound;
	}
}
