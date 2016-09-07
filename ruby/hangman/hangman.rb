#---Hangman Class---

class Hangman

  def initialize 
    @word = word
    @letters = []
    @blanks = []
    @guesses = {}
  end

  def word_choice(word)
    if word.length <= 11 && >= 3
      @word = word 
    end
  end


end

#---Driver Code---
# one = Hangman.new
