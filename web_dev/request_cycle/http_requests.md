1. What are some common HTTP status codes?
100 - informational.
200 - success.
300s - redirects. 
  301 - moved permanently
400s - client error.
  401 - unauthorized
  403 - forbidden
  404 - not found
500s - server error.
  503 - service unavailable.
  504 - gateway timeout.

2. What is the difference between a GET request and a POST request? When might each be used?
A GET request is used to request data from a specified resource. GET requests can be cached, have length restrictions, and should not be used for sensitive data. 
A POST request submits data to be processed. POST requests are not cached and do not have length restrictions. 

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is data that is sent from a website, stored in a users browser to monitor the user while they are browsing a website. A web server specifies it wants a cookie stored by sending an HTTP header named Set-Cookie. 