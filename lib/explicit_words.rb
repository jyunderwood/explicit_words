# coding: utf-8
require 'explicit_words/version'

module ExplicitWords
  EXPLICIT_WORDS = File.open(File.expand_path('../explicit_words.txt', __FILE__)).readlines.collect { |word| word.downcase.chomp }

  def self.check(content)
    explicit_content = false

    content.scan(/[\w]+/).each do |word|
      explicit_content = true if EXPLICIT_WORDS.include?(word.downcase)
    end

    explicit_content
  end
end
