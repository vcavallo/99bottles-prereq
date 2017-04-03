class Bottles
  require_relative 'line_one'
  require_relative 'line_two'

  def verse(number_of_current_bottles)
    @number_of_current_bottles = number_of_current_bottles

<<-VERSE
#{ LineOne.new(number_of_current_bottles).print }
#{ LineTwo.new(number_of_current_bottles).print }
VERSE
  end

  def verses(*range)
    verse_numbers = range.first.downto(range.last)
    verses = verse_numbers.collect do |number_of_bottles|
      verse(number_of_bottles)
    end
    verses.join("\n")
  end

  def song
    verses(99,0)
  end

end
