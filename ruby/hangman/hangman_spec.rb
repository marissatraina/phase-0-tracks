require_relative 'hangman' 


describe Hangman do
  let(:test) { Hangman.new }
it "creates a blank space array of word length" do
  test.word_choice("room")
  expect(test.blanks).to eq [" _ ", " _ ", " _ ", " _ "]
end

it "allows 9 guesses if the word is less <= 7 letters " do
  test.word_choice("bluets")
  expect(test.num_of_guesses).to eq 9
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
  expect(test.draw_figure(11)).to eq "*Chalk breaks and disintegrates...*"
end

it "fills in blanks with correct guesses" do 
  test.word_choice('bluets')
  test.progress('b')
  expect(test.blanks.join('')).to eq "b _  _  _  _  _ "
end

end