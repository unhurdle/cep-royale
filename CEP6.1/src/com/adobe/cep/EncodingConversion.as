package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class EncodingConversion {
		public function utf8_to_b64(str : String) : String {
			return null;
		}

		public function b64_to_utf8(base64str : String) : String {
			// If a base64 string contains any whitespace character, DOM Exception 5 occurs during window.atob, please see
			// http://stackoverflow.com/questions/14695988/dom-exception-5-invalid-character-error-on-valid-base64-image-string-in-javascri
			return null;
		}

		public function binary_to_b64(binary : String) : String {
			return null;
		}

		public function b64_to_binary(base64str : String) : String {
			return null;
		}

		public function ascii_to_b64(ascii : String) : String {
			return null;
		}

		public function b64_to_ascii(base64str : String) : String {
			return null;
		}
	}
}
