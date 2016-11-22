package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class VersionBound {
		/**
		 * @class VersionBound
		 * Defines a boundary for a version range, which associates a \c Version object
		 * with a flag for whether it is an inclusive or exclusive boundary.
		 *
		 * @param version   The \c #Version object.
		 * @param inclusive True if this boundary is inclusive, false if it is exclusive.
		 *
		 * @return A new \c VersionBound object.
		 */
		function VersionBound(version : Version = null, inclusive : Boolean = false) {
			this.version = version;
			this.inclusive = inclusive;
		}

		public var version : Version;
		public var inclusive : Boolean;
	}
}
