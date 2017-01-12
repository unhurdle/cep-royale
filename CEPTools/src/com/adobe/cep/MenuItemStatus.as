package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class MenuItemStatus {
		/**
		 * @class MenuItemStatus
		 * Stores flyout menu item status
		 *
		 * Since 5.2.0
		 *
		 * @param menuItemLabel  The menu item label.
		 * @param enabled  		 True if user wants to enable the menu item.
		 * @param checked  		 True if user wants to check the menu item.
		 *
		 * @return MenuItemStatus object.
		 */
		function MenuItemStatus(info:Object) {
			this.menuItemLabel = info.menuItemLabel;
			this.enabled = info.enabled;
			this.checked = info.checked;
		}

		public var menuItemLabel : String;
		public var enabled : Boolean;
		public var checked : Boolean;
	}
}
