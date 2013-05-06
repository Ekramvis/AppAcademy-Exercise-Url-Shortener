require 'securerandom'

  class Session
  # sign up
  # enter username and email
  # or
  # sign in with username
  puts "Welcome to URL shortener"
  puts "Sign Up or Sign In"
  action = gets.downcase.chomp()
  if action == "sign up"
    User.sign_up
  elsif action == "sign in"
    User.sign_in
  end






  # enter longUrl, get shortUrl
  # write one comment
  # pick one tag from a list of tags

  # enter shortUrl, launch comments and then page
  # -uses post/get httpRequests
  # Query ShortUrl for # of visits
  # Query ShortUrl for unique visits

end