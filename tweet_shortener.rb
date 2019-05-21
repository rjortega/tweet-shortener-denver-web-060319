def dictionary
    dictionary = {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        "be" => 'b',
        "you" => 'u',
        "at" => "@", 
        "and" => "&"
    }
end

def word_substituter(string)
    string.split(/\b/).map { |i| dictionary[i.downcase] || i }.join
end

def bulk_tweet_shortener(array)
    array.each {|i| puts word_substituter(i)}
end

def selective_tweet_shortener(tweet)
    tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
    word_substituter(tweet)[0..139]
end