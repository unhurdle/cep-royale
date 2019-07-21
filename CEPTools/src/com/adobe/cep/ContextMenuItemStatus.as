package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class ContextMenuItemStatus {
		/**
		 * @class ContextMenuItemStatus
		 * Stores the status of the context menu item.
		 *
		 * Since 5.2.0
		 *
		 * @param menuItemID     The menu item id.
		 * @param enabled  		 True if user wants to enable the menu item.
		 * @param checked  		 True if user wants to check the menu item.
		 *
		 * @return MenuItemStatus object.
		 */
		public function ContextMenuItemStatus(info:Object) {
			this.menuItemID = info.menuItemID;
			this.enabled = info.enabled;
			this.checked = info.checked;
		}

		public var menuItemID : String;
		public var enabled : Boolean;
		public var checked : Boolean;
	}
}
