package  com.adobe.cep{
	/**
	 * @author harbs
	 */
	public class FS {
		    /**
     * @constant No error.
     */
		static public const NO_ERROR : int = 0;
		/**
		 * @constant Unknown error occurred.
		 */
		static public const ERR_UNKNOWN : int = 1;
		/**
		 * @constant Invalid parameters passed to function.
		 */
		static public const ERR_INVALID_PARAMS : int = 2;
		/**
		 * @constant File or directory was not found.
		 */
		static public const ERR_NOT_FOUND : int = 3;
		/**
		 * @constant File or directory could not be read.
		 */
		static public const ERR_CANT_READ : int = 4;
		/**
		 * @constant An unsupported encoding value was specified.
		 */
		static public const ERR_UNSUPPORTED_ENCODING : int = 5;
		/**
		 * @constant File could not be written.
		 */
		static public const ERR_CANT_WRITE : int = 6;
		/**
		 * @constant Target directory is out of space. File could not be written.
		 */
		static public const ERR_OUT_OF_SPACE : int = 7;
		/**
		 * @constant Specified path does not point to a file.
		 */
		static public const ERR_NOT_FILE : int = 8;
		/**
		 * @constant Specified path does not point to a directory.
		 */
		static public const ERR_NOT_DIRECTORY : int = 9;
		/**
		 * @constant Specified file already exists.
		 */
		static public const ERR_FILE_EXISTS : int = 10;
		/**
		 * @constant The maximum number of processes has been exceeded.
		 */

    /**
     * Displays the OS File Open dialog, allowing the user to select files or directories.
     *
     * @param allowMultipleSelection {boolean} When true, multiple files/folders can be selected.
     * @param chooseDirectory {boolean} When true, only folders can be selected. When false, only
     *        files can be selected.
     * @param title {string} Title of the open dialog.
     * @param initialPath {string} Initial path to display in the dialog. Pass NULL or "" to
     *        display the last path chosen.
     * @param fileTypes {Array.<string>} The file extensions (without the dot) for the types
     *      of files that can be selected. Ignored when chooseDirectory=true.
     *
     * @return An object with these properties:
     *      <ul><li>"data": An array of the full names of the selected files.</li>
     *          <li>"err": The status of the operation, one of
     *          <br>NO_ERROR
     *          <br>ERR_INVALID_PARAMS </li>
     *      </ul>
     **/
		 
		 public function showOpenDialog (allowMultipleSelection:Boolean, chooseDirectory:Boolean, title:String, initialPath:String, fileTypes:Array):Object{
			return null;
		 }
		 
    /**
     * Displays the OS File Open dialog, allowing the user to select files or directories.
     *
     * @param allowMultipleSelection {boolean} When true, multiple files/folders can be selected.
     * @param chooseDirectory {boolean} When true, only folders can be selected. When false, only
     *        files can be selected.
     * @param title {string} Title of the open dialog.
     * @param initialPath {string} Initial path to display in the dialog. Pass NULL or "" to
     *        display the last path chosen.
     * @param fileTypes {Array.<string>} The file extensions (without the dot) for the types
     *      of files that can be selected. Ignored when chooseDirectory=true.
     * @param friendlyFilePrefix {string} String to put in front of the extensions
     *      of files that can be selected. Ignored when chooseDirectory=true. (win only)
     *      For example: 
     *          fileTypes = ["gif", "jpg", "jpeg", "png", "bmp", "webp", "svg"];
     *          friendlyFilePrefix = "Images (*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.webp;*.svg)";
     * @param prompt {string} String for OK button (mac only, default is "Open" on mac, "Open" or "Select Folder" on win).
     *
     * @return An object with these properties:
     *      <ul><li>"data": An array of the full names of the selected files.</li>
     *          <li>"err": The status of the operation, one of
     *          <br>NO_ERROR
     *          <br>ERR_INVALID_PARAMS </li>
     *      </ul>
     **/
		 public function showOpenDialogEx (allowMultipleSelection:Boolean, chooseDirectory:Boolean, title:String, initialPath:String, fileTypes:Array,friendlyFilePrefix:String, prompt:String):Object{
			return null;
		 }
		 
		 
		     /**
     * Displays the OS File Save dialog, allowing the user to type in a file name.
     *
     * @param title {string} Title of the save dialog.
     * @param initialPath {string} Initial path to display in the dialog. Pass NULL or "" to
     *        display the last path chosen.
     * @param fileTypes {Array.<string>} The file extensions (without the dot) for the types
     *      of files that can be selected.
     * @param defaultName {string} String to start with for the file name.
     * @param friendlyFilePrefix {string} String to put in front of the extensions of files that can be selected. (win only)
     *      For example: 
     *          fileTypes = ["gif", "jpg", "jpeg", "png", "bmp", "webp", "svg"];
     *          friendlyFilePrefix = "Images (*.gif;*.jpg;*.jpeg;*.png;*.bmp;*.webp;*.svg)";
     * @param prompt {string} String for Save button (mac only, default is "Save" on mac and win).
     * @param nameFieldLabel {string} String displayed in front of the file name text field (mac only, "File name:" on win).
     *
     * @return An object with these properties:
     *      <ul><li>"data": The file path selected to save at or "" if canceled</li>
     *          <li>"err": The status of the operation, one of
     *          <br>NO_ERROR
     *          <br>ERR_INVALID_PARAMS </li>
     *      </ul>
     **/
    public function showSaveDialogEx (title:String, initialPath:String, fileTypes:Array, defaultName:String, friendlyFilePrefix:String, prompt:String, nameFieldLabel:String):Object {
return null;    };

    /**
     * Reads the contents of a folder.
     *
     * @param path {string} The path of the folder to read.
     *
     * @return An object with these properties:
     *      <ul><li>"data": An array of the names of the contained files (excluding '.' and '..'.</li>
     *          <li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_NOT_FOUND
     *          <br>ERR_CANT_READ </li></ul>
     **/
    public function readdir (path:String):Object {
         return null;
    };

    /**
     * Creates a new folder.
     *
     * @param path {string} The path of the folder to create.
     *
     * @return An object with this property:
     *      <ul><li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS</li></ul>
     **/
    public function makedir (path:String):Object {
        return null;
    };

    /**
     * Renames a file or folder.
     *
     * @param oldPath {string}  The old name of the file or folder.
     * @param newPath {string}  The new name of the file or folder.
     *
     * @return An object with this property:
     *      <ul><li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_NOT_FOUND
     *          <br>ERR_FILE_EXISTS </li></ul>
     **/
    public function rename(oldPath:String, newPath:String):Object {
        return null;
    };

    /**
     * Reports whether an item is a file or folder.
     *
     * @param path {string} The path of the file or folder.
     *
     * @return An object with these properties:
     *      <ul><li>"data": An object with properties
     *          <br>isFile (boolean)
     *          <br>isDirectory (boolean)
     *          <br>mtime (modification DateTime) </li>
     *          <li>"err": The status of the operation, one of
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_NOT_FOUND  </li>
     *      </ul>
     **/
    public function stat (path:String):Object {
        return null;
    };

    /**
     * Reads the entire contents of a file.
     *
     * @param path {string}  The path of the file to read.
     * @param encoding {string}  The encoding of the contents of file, one of
     *      UTF8 (the default) or Base64.
     *
     * @return An object with these properties:
     *      <ul><li>"data": The file contents. </li>
     *          <li>"err": The status of the operation, one of
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_NOT_FOUND
     *          <br>ERR_CANT_READ
     *          <br>ERR_UNSUPPORTED_ENCODING </li>
     *      </ul>
     **/
    public function readFile (path:String, encoding:String):Object {
        return null;
    };

    /**
     * Writes data to a file, replacing the file if it already exists.
     *
     * @param path {string}  The path of the file to write.
     * @param data {string}  The data to write to the file.
     * @param encoding {string}  The encoding of the contents of file, one of
     *      UTF8 (the default) or Base64.
     *
     * @return An object with this property:
     *      <ul><li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_UNSUPPORTED_ENCODING
     *          <br>ERR_CANT_WRITE
     *          <br>ERR_OUT_OF_SPACE </li></ul>
     **/
    public function writeFile (path:String, data:String, encoding:String) {
        return null;
    };

    /**
     * Sets permissions for a file or folder.
     *
     * @param path {string}  The path of the file or folder.
     * @param mode {number}  The permissions in numeric format (for example, 0777).
     *
     * @return An object with this property:
     *      <ul><li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_CANT_WRITE </li></ul>
     **/
    public function chmod (path:String, mode:Number) {
        return null;
    };

    /**
     * Deletes a file.
     *
     * @param path {string}  The path of the file to delete.
     *
     * @return An object with this property:
     *      <ul><li>"err": The status of the operation, one of:
     *          <br>NO_ERROR
     *          <br>ERR_UNKNOWN
     *          <br>ERR_INVALID_PARAMS
     *          <br>ERR_NOT_FOUND
     *          <br>ERR_NOT_FILE </li></ul>
     **/
    public function deleteFile (path:String):Object {
            return null;
    };
		 
	}
}
