package com.adobe {
	/**
	 * @author harbs
	 */
	public class UIColor {
		/**
		 * @class UIColor
		 * Stores color information, including the type, anti-alias level, and specific color
		 * values in a color object of an appropriate type.
		 *
		 * @param type          The color type, 1 for "rgb" and 2 for "gradient".
		The supplied color object must correspond to this type.
		 * @param antialiasLevel    The anti-alias level constant.
		 * @param color         A \c #RGBColor or \c #GradientColor object containing specific color information.
		 *
		 * @return A new \c UIColor object.
		 */
		function UIColor(type : String = null, antialiasLevel : Number = 0, color : RGBColor = null) {
		}

		public var type : String;
		public var antialiasLevel : Number;
		public var color : RGBColor;
	}
}
