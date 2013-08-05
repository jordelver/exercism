class Phrase
  EXCLUDE = /[^a-z\d\s]/

  def initialize(words)
    @words = words
  end

  def words
    @words.downcase.gsub(EXCLUDE, '').split(' ')
  end

  def word_count
    words.each_with_object({}) do |word, result|
      result[word] = result[word].to_i + 1
    end
  end
end

