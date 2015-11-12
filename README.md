# Sinatra Basic Sessions Lab

Session cookies allow a website to keep track of your movements and information from page to page for a single session (log in time to log out time). As soon as you log out, the cookie expires and the browser loses the data.

Server side, you set up a session, and the information from that session is stored in the browser by way of a cookie.

The goal of this lab is to save a piece of data to the `session cookie`, and display that data in a view. 

## Get Building

You'll be coding your solution in both `app.rb` and `views`.


### Step 1:

Make sure you enable sessions in `app.rb` and set a `session_secret`.

### Step 2: 

Set up a controller action that responds to a GET request to the route `'/'`. You'll want this action to render an erb file.

### Step 3:

In the controller action to `'/'`, add a key-value pair to `session`. The key should be `[:name]` and the value should be your name.

Make sure to store the session hash in an instance variable that you can access in the views


### Step 4:

In the view rendered by your controller action, have your name, stored in the session hash, appear in the top right corner of the page, `Hello, ___`.

