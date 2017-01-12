package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class CepColor {
		/**
		 * @class RGBColor
		 * Stores an RGB color with red, green, blue, and alpha values.
		 * All values are in the range [0.0 to 255.0]. Invalid numeric values are
		 * converted to numbers within this range.
		 *
		 * @param red   The red value, in the range [0.0 to 255.0].
		 * @param green The green value, in the range [0.0 to 255.0].
		 * @param blue  The blue value, in the range [0.0 to 255.0].
		 * @param alpha The alpha (transparency) value, in the range [0.0 to 255.0].
		 *      The default, 255.0, means that the color is fully opaque.
		 *
		 * @return A new RGBColor object.
		 */
		function CepColor(info:Object) {
		    this.red = info.red;
    		this.green = info.green;
    		this.blue = info.blue;
    		this.alpha = info.alpha;
		}

		public var red : Number;
		public var green : Number;
		public var blue : Number;
		public var alpha : Number;
	}
}
