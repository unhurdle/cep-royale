package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class GradientStop {
		/**
		 * @class GradientStop
		 * Stores gradient stop information.
		 *
		 * @param offset   The offset of the gradient stop, in the range [0.0 to 1.0].
		 * @param rgbColor The color of the gradient at this point, an \c #RGBColor object.
		 *
		 * @return GradientStop object.
		 */
		public function GradientStop(info:Object) {
		    this.offset = info.offset;
    		this.rgbColor = new CepColor(info.rgbColor);
		}

		public var offset : Number;
		public var rgbColor : CepColor;
	}
}
