package com.adobe {
	/**
	 * @author harbs
	 */
	public class AgoraLibResponse {
		/**
		 * Returned as the response by all AgoraLib APIs.
		 * @param string response   The main result of the API request
		 * @param string status     Textual description that either provides information of an error or additional information about the response.
		 * @param int statusCode    status code.
		 */
		function AgoraLibResponse(response : String = "", status : String = "", statusCode : int = 0) {
		}

		public var response : String;
		public var status : String;
		public var statusCode : int;
	}
}
