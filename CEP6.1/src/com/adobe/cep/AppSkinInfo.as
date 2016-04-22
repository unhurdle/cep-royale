package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class AppSkinInfo {
		/**
		 * @class AppSkinInfo
		 * Stores window-skin properties, such as color and font. All color parameter values are \c #UIColor objects except that systemHighlightColor is \c #RGBColor object.
		 *
		 * @param baseFontFamily        The base font family of the application.
		 * @param baseFontSize          The base font size of the application.
		 * @param appBarBackgroundColor     The application bar background color.
		 * @param panelBackgroundColor      The background color of the extension panel.
		 * @param appBarBackgroundColorSRGB     The application bar background color, as sRGB.
		 * @param panelBackgroundColorSRGB      The background color of the extension panel, as sRGB.
		 * @param systemHighlightColor          The operating-system highlight color, as sRGB.
		 *
		 * @return AppSkinInfo object.
		 */
		public function AppSkinInfo(baseFontFamily : String = "", baseFontSize : Number = NaN, appBarBackgroundColor : UIColor = null, panelBackgroundColor : UIColor = null, appBarBackgroundColorSRGB : UIColor = null, panelBackgroundColorSRGB : UIColor = null, systemHighlightColor : CepColor = null) {
			this.baseFontFamily = baseFontFamily;
			this.baseFontSize = baseFontSize;
			this.appBarBackgroundColor = appBarBackgroundColor;
			this.panelBackgroundColor = panelBackgroundColor;
			this.appBarBackgroundColorSRGB = appBarBackgroundColorSRGB;
			this.panelBackgroundColorSRGB = panelBackgroundColorSRGB;
			this.systemHighlightColor = systemHighlightColor;
		}

		public var baseFontFamily : String;
		public var baseFontSize : Number;
		public var appBarBackgroundColor : UIColor;
		public var panelBackgroundColor : UIColor;
		public var appBarBackgroundColorSRGB : UIColor;
		public var panelBackgroundColorSRGB : UIColor;
		public var systemHighlightColor : CepColor;
	}
}
