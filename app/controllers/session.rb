require 'securerandom'

def sign_up
  puts "Please enter username:"
  uname = gets.chomp
  puts "Please enter email:"
  email = gets.chomp

  u = User.new()
  u.username, u.email = uname, email
  u.save!

  User.find_by_username(uname)
end

def sign_in
  puts "Please enter username:"
  uname = gets.chomp
  existing_user = User.find_by_username(uname)

  if existing_user
    return existing_user
  else
    puts "No user found. Please sign up."
  end
end


puts "Welcome to URL shortener"
puts "Sign Up or Sign In"
action = gets.downcase.chomp()

if action == "sign up"
  current_user = sign_up
elsif action == "sign in"
  current_user = sign_in
end

# enter longUrl, get shortUrl
puts "Enter a URL to shorten:"
long_url = gets.chomp
long_url_id = LongUrl.find_by_link(long_url)
if long_url_id
  long_url_id = long_url_id['id']
else
  l = LongUrl.new
  l.link = long_url
  l.save!
  long_url_id = LongUrl.find_by_link(long_url)['id']
end

# write one comment
puts "Add a comment"
comment = gets.chomp
c = Comment.new
c.body = comment
c.long_url_id = long_url_id
c.user_id = current_user.id
c.save!

# pick one tag from a list of tags
puts "Add a tag"
puts Tag.list.join(", ")
tag = gets.chomp
t = Tag.new
t.name = tag
t.save!
tag_link = Tagging.new
tag_link.tag_id = Tag.last.id
tag_link.long_url_id = long_url_id
tag_link.save!
  # enter shortUrl, launch comments and then page
  # -uses post/get httpRequests
  # Query ShortUrl for # of visits
  # Query ShortUrl for unique visits

