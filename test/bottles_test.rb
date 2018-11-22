require 'minitest/autorun'
require_relative "../lib/bottles"

class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected = <<-VERSE 
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new.verse(99)
  end

  def test_another_verse
    expected = <<-VERSE
89 bottles of beer on the wall, 89 bottles of beer.
Take one down and pass it around, 88 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new.verse(89)
  end
  
  def test_verse_2
    expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    assert_equal expected, ::Bottles.new.verse(2)
  end

end