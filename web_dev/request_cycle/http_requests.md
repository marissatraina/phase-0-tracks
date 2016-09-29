# HTTP REQUESTS

1. What are some common HTTP status codes?
[tutorialspoint](https://www.tutorialspoint.com/http/http_status_codes.htm)

> HTTP status codes are 3 digit integers where the first digit of the status code define the class of server response.

### 1xx: request has been received and process is continuing
### 2xx: success -- action was successfully received, understood and accepted
### 3xx: redirection -- further action must be taken to complete request
### 4xx: client error -- request contains incorrect syntax or cannot be fulfilled
### 5xx: server error -- server failed to fulfill an apparently valid request

* 5 of the most popular error codes are 403, 404, 500, 503, and 504
- 403: Forbidden -- access to the resource is forbidden. One common reason for this is the users machine is not on a list of approved access (not on whitelist)
- 404: Not Found -- request resource is no longer available. typos are a common reason for 404 or a result of the aging web 
- 500: Internal Server Error -- catchall error when none of the other 5xx error codes make sense
- 503: Service unavailable -- basically means web server isn't available. could be temporary issue that is a result of being in the middle of being restarted, is overloaded and taking to many requests at one time, or perhaps just down for maintenance
-504: Gateway Timeout -- there could be a DNS issue, a network device may be down, etc. This can only happen where a caching or proxy server is directly serving the webpage

2. What is the difference between a GET request and a POST  request? When might each be used?
The request line begins with a method token. A possible method token can either be GET or POST. A GET method is used to retrieve information from the given server using a given uniform resource identifier (URI). Requests using GET should only retrieve data and should have no other effect on the data. A POST method on the other hand is used to send data to the server, for example, customer information, file upload, etc.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie can be seen as an identification tag stored in the user's web browser while the user is browsing. They are sent to the user's web browser by the server in an HTTP request so that when the next request sent to the same server is from the same user, that user can be identified/remembered. This can be useful in a lot of cases to improve user experience--the user may want to be remembered such that their login can be saved or their shopping basket can be remembered if they leave a certain online shopping page accidentally. However, when a page's cookie is approved for one specific reason, that same cookie can be picked up on other servers without a user's full knowledge and used for advertising purposes (for example).  