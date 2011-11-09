The Charlotte Tech community website http://techclt.com

Installation
------------

- git clone https://github.com/charlotte-ruby/techclt.git
- Make sure you are using rvm with a 1.9.x version of Ruby. If not,
  [install rvm](http://beginrescueend.com/).
- cd techclt
- gem install bundler 
- bundle install
- rake db:migrate
- rails server
- visit http://localhost:3000 in a browser.

**ubuntu users may need to:
    
    $ sudo apt-get install libmagickwand-dev libmagick-dev

Contributing
-----------

- Fork the project.
- Read through the outstanding [issues](https://github.com/charlotte-ruby/techclt/issues) or report new ones.
- Write some tests to make sure we don't accidentally break each other's
  code.
- Send a pull request.


TODO
----

* Move to Rails 3.1
* Test coverage
* Calendar integration
* New member approval process
* Image uploading/cropping bug
* Speed up page load
