Padrino and Mongomatic Sample Application
=========================================

This is a sample application showing how to use ['Padrino'](http://padrinorb.com) with ['Mongomatic'](http://mongomatic.com)

Directions
----------
I'm going to assume you're using ['rvm'](http://rvm.beginrescueend.com). If not, *a pox on all your houses!*

Anyway. Ensure you have mongodb running locally. Do the following:
	rvm create gemset padrino-mongomatic-demo
	git clone git://github.com/lusis/padrino-mongomatic-example.git pblog
	rvm gemset use padrino-mongomatic-demo
	gem install bundler --pre
	cd pblog
	bundle install
	padrino start

You should now be able to go to [here](http://localhost:3000/post) and create a new post.

Changes
-------

Lifted a skeleton of the Padrino admin theme for the demo. Looks much better. It even flashes!

Missing Functionality
---------------------
 - No exceptions thrown
  I plan on adding it in.
 - Edit seems to not be populating field elements
  Investigating. I think it has to do with the format of attributes (model["attribute"] vs model.attribute)
  I should be able to test this with some defs in the model. If so, it's a bug in Padrino I think. Other ORMs use the same syntax I *THINK*

Hopefully you can see from the _app/controllers/post.rb_ how to convert Mongomatic conventions into Padrino conventions. That's the real goal and usually the hardest part of using any new framework.
	
