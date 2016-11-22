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
		function MenuItemStatus(menuItemLabel : String = "", enabled : Boolean = false, checked : Boolean = false) {
			this.menuItemLabel = menuItemLabel;
			this.enabled = enabled;
			this.checked = checked;
		}

		public var menuItemLabel : String;
		public var enabled : Boolean;
		public var checked : Boolean;
	}
}
