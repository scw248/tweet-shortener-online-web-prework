# Write your code here.
def dictionary
  shortened_dictionary = {
      "hello" => 'hi',
      "to" => '2', 
      "two" => "2",
      "too" => "2",
      "for" => "4",
      "For" => "4",
      "four" => "4",
      'be' => 'b',
      'you' => 'u',
      "at" => "@", 
      "and" => "&"
}

shortened_dictionary
end

def word_substituter(tweet)

 tweet_array = tweet.split(" ")
  dictionary_keys = dictionary.keys 
  
 shortened_array = tweet_array.collect do |word|
    if dictionary_keys.include?(word)
      word = dictionary[word]
    else
      word = word
    end
  end
  shortened_array.join(" ")
end



def bulk_tweet_shortener(array)
  array.each do |string|
   puts word_substituter(string)
 end
end


def selective_tweet_shortener(tweet)
    if string.length > 140
      puts word_substituter(string)
end
end