package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Runtime {
		/**
		 * @class Runtime
		 * Represents a runtime related to the CEP infrastructure.
		 * Extensions can declare dependencies on particular
		 * CEP runtime versions in the extension manifest.
		 *
		 * @param name    The runtime name.
		 * @param version A \c #VersionRange object that defines a range of valid versions.
		 *
		 * @return A new \c Runtime object.
		 */
		public function Runtime(info:Object) {
			this.name = info.name;
			this.versionRange = new VersionRange(info.versionRange);
		}

		public var name : String;
		public var versionRange : VersionRange;
	}
}
