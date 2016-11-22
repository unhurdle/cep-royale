package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class HostCapabilities {
		/**
		 * @class HostCapabilities
		 * Stores information about the host capabilities.
		 *
		 * @param EXTENDED_PANEL_MENU True if the application supports panel menu.
		 * @param EXTENDED_PANEL_ICONS True if the application supports panel icon.
		 * @param DELEGATE_APE_ENGINE True if the application supports delegated APE engine.
		 * @param SUPPORT_HTML_EXTENSIONS True if the application supports HTML extensions.
		 * @param DISABLE_FLASH_EXTENSIONS True if the application disables FLASH extensions.
		 *
		 * @return A new \c HostCapabilities object.
		 */
		function HostCapabilities(EXTENDED_PANEL_MENU : Boolean = false, EXTENDED_PANEL_ICONS : Boolean = false, DELEGATE_APE_ENGINE : Boolean = false, SUPPORT_HTML_EXTENSIONS : Boolean = false, DISABLE_FLASH_EXTENSIONS : Boolean = false) {
			this.EXTENDED_PANEL_MENU = EXTENDED_PANEL_MENU;
			this.EXTENDED_PANEL_ICONS = EXTENDED_PANEL_ICONS;
			this.DELEGATE_APE_ENGINE = DELEGATE_APE_ENGINE;
			this.SUPPORT_HTML_EXTENSIONS = SUPPORT_HTML_EXTENSIONS;
			this.DISABLE_FLASH_EXTENSIONS = DISABLE_FLASH_EXTENSIONS; // Since 5.0.0
		}

		public var EXTENDED_PANEL_MENU : Boolean;
		public var EXTENDED_PANEL_ICONS : Boolean;
		public var DELEGATE_APE_ENGINE : Boolean;
		public var SUPPORT_HTML_EXTENSIONS : Boolean;
		public var DISABLE_FLASH_EXTENSIONS : Boolean;
	}
}
