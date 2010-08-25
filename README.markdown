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

You should now be able to go to [here](http://localhost:3000/post/new) and create a new post.

Missing Functionality
---------------------
- Something resembling a pleasing interface
I suck at interfaces. The point of this demo was to show you the controllers and views. I'll leave pretty up to you.
- No delete
I plan on adding it in.
- No exceptions thrown
I plan on adding it in.

Hopefully you can see from the _app/controllers/post.rb_ how to convert Mongomatic conventions into Padrino conventions. That's the real goal and usually the hardest part of using any new framework.
	
