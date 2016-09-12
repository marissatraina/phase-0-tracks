require_relative 'hangman' 


describe Hangman do
  let(:test) { Hangman.new }
it "creates a blank space array of word length" do
  expect(test.word_choice("bluets")).to eq "*Draws on chalkboard*: _  _  _  _  _  _ "
end

it "does not allow words shorter than 3 letters" do
  expect(test.word_choice("ok")).to eq "That word is too short to play hangman with!"
end

it "does not allow words longer than 11 letters" do
  expect(test.word_choice("antidisestablishmentarianism")).to eq "That word is too long to play hangman with!"
end

it "allows 9 guesses if the word is less <= 7 letters " do
  expect(test.num_of_guesses).to eq 7
end

it "checks whether or not guess is correct" do
  test.word_choice('bluets')
  expect(test.guess('b')).to eq true
end

it "checks for repeat guesses, returns non-repeats" do
  test.guess('b')
  expect(test.repeat_check('a')).to eq 'a'
end

it "draws part of stick figure for wrong guesses" do
  expect(test.draw(12)).to eq "*Chalk breaks and disintegrates...*"
end

it "fills in blanks with correct guesses" do 
  test.word_choice('bluets')
  expect(test.progress('b')).to eq "*Draws in: b _  _  _  _  _ *"
end

end