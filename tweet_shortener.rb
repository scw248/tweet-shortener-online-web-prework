# Write your code here.
def dictionary
  shortened_dictionary = {
      "hello" => 'hi',
      "to" => '2', 
      "two" => "2",
      "too" => "2",
      "for" => "4",
      "four" => "4",
      'be' => 'b',
      'you' => 'u',
      "at" => "@", 
      "and" => "&"
}

shortened_dictionary
end

def word_substituter(tweet_one, dictionary)

 tweet_array = tweet.split(" ")
  dictionary
  dictionary_keys = shortened_dictionary.keys 
  
 shortened_array = tweet_array.collect do |word|
    if dictionary_keys.include?(word)
      word = shortened_dictionary[word]
    end
  end
  shortened_array.join(" ")
end