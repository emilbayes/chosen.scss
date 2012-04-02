Chosen.scss
===========
Chosen.scss is a compass implementation of [Chosen](http://harvesthq.github.com/chosen/). It is currently based on Chosen `0.9.7`
This is currently in version `1.0.5beta` but *is* __production ready__

Installation
------------
Install the gem:

    gem install compass.scss --pre

Add the following line to the top of your `config.rb`:

    require 'chosen.scss'

And install the extension:

    compass install chosen.scss

Usage
-----
Either import all of the Chosen css:

	@import "chosen";

Or import the bits you need:

	//ALWAYS import base styles:
	@import "chosen/chosen-base"; //Which will import chosen/chosen-mixins -> see methods beneath
	
	//Then import any of these as needed:
	@import "chosen/chosen-single";
	@import "chosen/chosen-multi";
	@import "chosen/chosen-rtl";

chosen-mixins
-------------
Be aware that chosen.css comes with a set of predefined mixins that are needed internally.
They are as follows:

* * *

####`linear-gradient($colorStops, $direction: top, $legacyColorStop: 1, $ieColorStops: '')`
#####Params:
* `$colorStops`: A list of color stops and their position
* `$direction`: `top|bottom|left|right`
* `$legacyColorStop`: index in the list that will be used as background-color
* `$ieColorStops`: The two color stops from the list that will be used for IE. Default is first and last. Other Example: ´2 4´. This should be a SASS list
#####Example:

	@include linear-gradient((#f00 0%, #0f0 50%, #00f 100%), top, 1, 1 2); //Uses the first and second color stop for IE

* * *

####`dimensions($dimensions)`
#####Params:
* `$dimensions`: A list with width and then height.
#####Example:

	@include dimensions(200px auto); //200px wide, height auto

* * *

####`block($dimensions)`
Adds display:block;` to above mixin. Made for ease of reading scss styles.
#####Params:
see dimensions mixin

* * *

####`pos($type, $position)`
Inspired by Stylus Compass equivilant nib's pos mixin
#####Params:
* `$type`: `absolute|fixed|relative|static|inherit`
* `$position`: List of positions. See examples for `absolute()`, `fixed()`, `relative()`

* * *

####`fixed($position)`, `relative($position)`, `absolute($position)`
All 'child' mixins of `pos()`. Made for ease of reading scss styles.
#####Example(s):

	@include absolute(top right); //Absolutely positions an element in the top right corner
	@include relative(top 15px left -20px); //Relativly positions an element 15px down and 20px left
	@include fixed(top left 20px); //Fixes a postion at coordinates (0, 20), which is in the top and 20 px in from the left