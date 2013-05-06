require 'securerandom'
require 'launchy'

# log in
# enter username and email
# enter longUrl, get shortUrl
# enter shortUrl, launch comments and then page
# -uses post/get httpRequests
# Query ShortUrl for # of visits
# Query ShortUrl for unique visits
p SecureRandom.base64