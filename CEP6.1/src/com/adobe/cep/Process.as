package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Process {
		/**
		 * @constant The maximum number of processes has been exceeded.
		 */
		static public const ERR_EXCEED_MAX_NUM_PROCESS : int = 101;

		/**
		 * Creates a process.
		 *
		 * @param arguments {list} The arguments to create process. The first one is the full path of the executable,
		 *                         followed by the arguments of the executable.
		 *
		 * @return An object with these properties:
		 *      <ul><li>"data": The pid of the process, or -1 on error. </li>
		 *          <li>"err": The status of the operation, one of
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_EXCEED_MAX_NUM_PROCESS
		 *          <br>ERR_NOT_FOUND
		 *          <br>ERR_NOT_FILE</li>
		 *      </ul>
		 **/
		public function createProcess() : Object {
			return null;
		};

		/**
		 * Registers a standard-output handler for a process.
		 *
		 * @param pid {int} The pid of the process.
		 * @param callback {function}  The handler function for the standard output callback.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function stdout(pid : int, callback : Function) : Object {
			pid;return null;
		};

		/**
		 * Registers up a standard-error handler for a process.
		 *
		 * @param pid {int} The pid of the process.
		 * @param callback {function}  The handler function for the standard error callback.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function stderr(pid : int, callback : Function):Object {
			pid;return null;
		};

		/**
		 * Writes data to the standard input of a process.
		 *
		 * @param pid {int}  The pid of the process
		 * @param data {string} The data to write.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function stdin(pid : int, data : String):Object {
			pid;data;return null;
		};

		/**
		 * Retrieves the working directory of a process.
		 *
		 * @param pid {int} The pid of the process.
		 *
		 * @return An object with these properties:
		 *      <ul><li>"data": The path of the working directory. </li>
		 *          <li>"err": The status of the operation, one of
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function getWorkingDirectory(pid : int) : Object {
			pid;return null;
		};

		/**
		 * Waits for a process to quit.
		 *
		 * @param pid {int} The pid of the process.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function waitfor(pid : int):Object {
			pid;return null;
		};

		/**
		 * Registers a handler for the onquit callback of a process.
		 *
		 * @param pid {int}  The pid of the process.
		 * @param callback {function}  The handler function.
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function onquit(pid : int, callback : Function):Object {
			pid;return null;
		};

		/**
		 * Reports whether a process is currently running.
		 *
		 * @param pid {int} The pid of the process.
		 *
		 * @return An object with these properties:
		 *      <ul><li>"data": True if the process is running, false otherwise. </li>
		 *          <li>"err": The status of the operation, one of
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function isRunning(pid : int) : Object {
			pid;return null;
		};

		/**
		 * Terminates a process.
		 *
		 * @param pid {int} The pid of the process
		 *
		 * @return An object with this property:
		 *      <ul><li>"err": The status of the operation, one of:
		 *          <br>NO_ERROR
		 *          <br>ERR_UNKNOWN
		 *          <br>ERR_INVALID_PARAMS
		 *          <br>ERR_INVALID_PROCESS_ID </li></ul>
		 **/
		public function terminate(pid : int) : Object {
			pid;return null;
		};
	}
}
