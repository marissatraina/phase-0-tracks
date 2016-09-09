require_relative 'hangman' 


describe Hangman do
  let(:test) { Hangman.new }

it "creates a blank space array of word length" do
  expect(test.word_choice("bluets")).to eq "*Draws on chalkboard*: _ _ _ _ _ _"
end

it "does not allow words shorter than 3 letters" do
  expect(test.word_choice("ok")).to eq "That word is too short to play hangman with!"
end

it "does not allow words longer than 11 letters" do
  expect(test.word_choice("antidisestablishmentarianism")).to eq "That word is too long to play hangman with!"
end

it "allows 7 guesses if the word is less <= 5 letters " do
  expect(test.word_choice("bluets")).to eq "That word is too long to play hangman with!"
end

end