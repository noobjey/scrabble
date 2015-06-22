gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_returns_zero_when_empty_string
    assert_equal 0, Scrabble.new.score("")
  end

  def test_returns_zero_when_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word_with_two_letters
    assert_equal 2, Scrabble.new.score("ae")
  end

  def test_it_can_score_a_word_with_multiples_of_the_same_letter
    assert_equal 17, Scrabble.new.score("jlj")
  end

  def test_acceptance
    assert_equal 8, Scrabble.new.score("hello")
  end
end
