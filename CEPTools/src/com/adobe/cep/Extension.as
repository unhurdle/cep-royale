package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Extension {
		/**
		 * @class Extension
		 * Encapsulates a CEP-based extension to an Adobe application.
		 *
		 * @param id              The unique identifier of this extension.
		 * @param name            The localizable display name of this extension.
		 * @param mainPath        The path of the "index.html" file.
		 * @param basePath        The base path of this extension.
		 * @param windowType          The window type of the main window of this extension.
		Valid values are defined by \c #CSXSWindowType.
		 * @param width           The default width in pixels of the main window of this extension.
		 * @param height          The default height in pixels of the main window of this extension.
		 * @param minWidth        The minimum width in pixels of the main window of this extension.
		 * @param minHeight       The minimum height in pixels of the main window of this extension.
		 * @param maxWidth        The maximum width in pixels of the main window of this extension.
		 * @param maxHeight       The maximum height in pixels of the main window of this extension.
		 * @param defaultExtensionDataXml The extension data contained in the default \c ExtensionDispatchInfo section of the extension manifest.
		 * @param specialExtensionDataXml The extension data contained in the application-specific \c ExtensionDispatchInfo section of the extension manifest.
		 * @param requiredRuntimeList     An array of \c Runtime objects for runtimes required by this extension.
		 * @param isAutoVisible       True if this extension is visible on loading.
		 * @param isPluginExtension   True if this extension has been deployed in the Plugins folder of the host application.
		 *
		 * @return A new \c Extension object.
		 */
		public function Extension(info:Object) {
		    this.id = info.id;
    		this.name = info.name;
    		this.mainPath = info.mainPath;
    		this.basePath = info.basePath;
    		this.windowType = info.windowType;
    		this.width = info.width;
    		this.height = info.height;
    		this.minWidth = info.minWidth;
    		this.minHeight = info.minHeight;
    		this.maxWidth = info.maxWidth;
    		this.maxHeight = info.maxHeight;
    		this.defaultExtensionDataXml = info.defaultExtensionDataXml;
    		this.specialExtensionDataXml = info.specialExtensionDataXml;
    		this.requiredRuntimeList = info.requiredRuntimeList;
    		this.isAutoVisible = info.isAutoVisible;
    		this.isPluginExtension = info.isPluginExtension;
		}

		public var id : String;
		public var name : String;
		public var mainPath : String;
		public var basePath : String;
		public var windowType : String;
		public var width : Number;
		public var height : Number;
		public var minWidth : Number;
		public var minHeight : Number;
		public var maxWidth : Number;
		public var maxHeight : Number;
		public var defaultExtensionDataXml : String;
		public var specialExtensionDataXml : String;
		public var requiredRuntimeList : Array;
		public var isAutoVisible : Boolean;
		public var isPluginExtension : Boolean;
	}
}
