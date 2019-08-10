﻿module uim.bootstrap.vue.inputs.image;

import uim.bootstrap.vue;

class DBV5InputImage : DVUEComponent {
	this() {
		this
		.name("UimInputImage")
	    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
		.computed("classes()", `return [
			'form-control',
    		this.size !== "normal" ? 'form-control-'+this.size : ""];`)
    	.template_(`<input type="text" :class="this.classes">`);	
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"InputImage");

unittest {
  assert(BV5InputImage.name == "UimInputImage");
  assert(BV5InputImage.name("test").name == "test");
}	
