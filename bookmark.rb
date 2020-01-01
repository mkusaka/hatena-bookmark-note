require 'hatena/bookmark/restful/v1'
CONSUMER_KEY        = ARGV[0]
CONSUMER_SECRET     = ARGV[1]
ACCESS_TOKEN        = ARGV[2]
ACCESS_TOKEN_SECRET = ARGV[3]

credentials = Hatena::Bookmark::Restful::V1::Credentials.new(
  consumer_key:        CONSUMER_KEY,
  consumer_secret:     CONSUMER_SECRET,
  access_token:        ACCESS_TOKEN,
  access_token_secret: ACCESS_TOKEN_SECRET
)
client = Hatena::Bookmark::Restful::V1.new(credentials)

# p client.bookmark('https://github.com/thomasdondorf/puppeteer-cluster').to_hash
p client.create_bookmark('https://www.google.com/').to_hash
p client.my
# p client.bookmark("https://gist.github.com/subfuzion/08c5d85437d5d4f00e58")
