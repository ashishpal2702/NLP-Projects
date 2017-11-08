

install.packages("twitteR")
install.packages("ROAuth")
library(twitteR)
library(ROAuth)
#library(httr)

# Create an object "my_oauth" 

consumerKey = '##################'
consumerSecret = '##################'
requestURL = "https://api.twitter.com/oauth/request_token"
accessURL = "https://api.twitter.com/oauth/access_token"
authURL = "https://api.twitter.com/oauth/authorize"

myoauth = OAuthFactory$new(consumerKey = consumerKey,
                           consumerSecret = consumerSecret,
                           requestURL = requestURL , 
                           accessURL = accessURL , authURL = authURL)

myoauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))


consumer_key = '##############'
consumer_secret = '#######################'
access_token = "#####################"
access_secret = "####################"


# save for later use
save(myoauth, file = "myoauth.Rdata")

setup_twitter_oauth(consumer_key, consumer_secret,access_token ,access_secret)



############# let's Extract Tweets  - 
search_string = "#AppleX"
no_of_tweets = 200

tweets = searchTwitter(search_string,no_of_tweets,lang = "en")
# Print 5 Tweets

head(tweets)



##########################################################################################3










