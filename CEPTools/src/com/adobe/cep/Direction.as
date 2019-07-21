package com.adobe.cep {
	/**
	 * @author harbs
	 */
	public class Direction {
		/**
		 * @class Direction
		 * A point value  in which the y component is 0 and the x component
		 * is positive or negative for a right or left direction,
		 * or the x component is 0 and the y component is positive or negative for
		 * an up or down direction.
		 *
		 * @param x     The horizontal component of the point.
		 * @param y     The vertical component of the point.
		 *
		 * @return A new \c Direction object.
		 */
		public function Direction(info:Object) {
		    this.x = info.x;
    		this.y = info.y;
		}

		public var x : Number;
		public var y : Number;
	}
}
