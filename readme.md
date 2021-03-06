Warning
=======
_20. April 2013_: In one of the coming months I plan to rewrite this library to 
be on par with developments in Sass and also make it more helpful when writing custom
styles to Chosen. I'll therefore (most likely) break backwards compatibility and merge in a 2.0 branch.
I have no idea of the userbase of this gem, but since its release in April 2012 it
has been downloaded over 2,200 times. I have no plan for how long development of the 
new version will last, but it will most likely be within the next couple of months.

You can avoid any problems by tying to a specific version (`1.10`).

Chosen.scss
===========
Chosen.scss is a compass implementation of [Chosen](http://harvesthq.github.com/chosen/). It is currently based on Chosen `0.9.8`
This is currently in version [`1.0.8`](https://rubygems.org/gems/chosen.scss) and *is* __production ready__.

Installation
------------
Install the gem:

    gem install chosen.scss

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
	@import "chosen/chosen-base"; //Which will import chosen/chosen-mixins -> see mixins beneath
	
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
* `$colorStops`: A list of color stops and their position.
* `$direction`: `top|bottom|left|right`.
* `$legacyColorStop`: index in the list that will be used as `background-color`.
* `$ieColorStops`: The two color stops from the list that will be used for IE. Default is first and last. Other Example: `2 4`. This should be a SASS list.

#####Example:

	@include linear-gradient((#f00 0%, #0f0 50%, #00f 100%), top, 1, 1 2); //Uses the first and second color stop for IE

* * *

####`dimensions($dimensions)`
#####Params:
* `$dimensions`: A list with `width` and then `height`.

#####Example:

	@include dimensions(200px auto); //200px wide, height auto

* * *

####`block($dimensions)`
Adds `display:block;` to above mixin. Made for ease of reading scss styles.
#####Params:
* See dimensions mixin.

* * *

####`pos($type, $position)`
Inspired by Stylus' Compass equivilant, nib, pos mixin.
#####Params:
* `$type`: `absolute|fixed|relative|static|inherit`.
* `$position`: List of positions. See examples for `absolute()`, `fixed()`, `relative()`.

* * *

####`fixed($position)`, `relative($position)`, `absolute($position)`
All 'child' mixins of `pos()`. Made for ease of reading scss styles.
#####Example(s):

	@include absolute(top right); //Absolutely positions an element in the top right corner
	@include relative(top 15px left -20px); //Relativly positions an element 15px down and 20px left
	@include fixed(top left 20px); //Fixes a postion at coordinates (0, 20), which is in the top and 20 px in from the left
