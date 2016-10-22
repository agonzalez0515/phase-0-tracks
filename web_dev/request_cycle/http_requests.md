# What are some common HTTP status codes?
* 200s - successful response
* 300s - redirection response
* 400s = client-side error
	* 404 - Not Found
	* 403 - Forbidden
* 500s = server-side error
	* 500 - internal server error:catch all error
	* 503 - service unavailable
	* 504 - gateway timeout


# What is the difference between a GET request and a POST request? When might each be used?

Post is more secure than Get. You want to use Get only when trying to display basic information from a website. If you need to transfer secure information, use Post.

GET
* GET requests can be cached
* GET requests remain in the browser history
* GET requests can be bookmarked
* GET requests should never be used when dealing with sensitive data
* GET requests have length restrictions
* GET requests should be used only to retrieve data

POST
* POST requests are never cached
* POST requests do not remain in the browser history
* POST requests cannot be bookmarked
* POST requests have no restrictions on data length

# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
Cookies are used to store information while you are using a website. Like if you add something to a card or want to auto fill some boxes.

I liked this definition the best

from: https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/

> a cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. Once again, the cookie just contains data and isn’t harmful in and of itself.
