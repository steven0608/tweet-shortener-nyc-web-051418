# Write your code here.
def dictionary
  substitute={
    "hello" => "hi",
    "to" => "2",
    "two" =>"2",
    "too" => "2",
    "For" => "4",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(string)
  string.split.collect do |x|
    if dictionary.keys.include? x
      dictionary[x]
    else
      x
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)[0,140]
  
end






