class LineTwo
  require_relative 'bottle_to_words'
  require_relative 'number_to_words'

  def initialize(bottle_count)
    @bottle_count = bottle_count
  end

  def print
    build_line_two
  end

  def build_line_two
    if @bottle_count == 0
     "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{ how_many_to_remove(@bottle_count) } down and pass it around, #{ NumberToWords.new(@bottle_count - 1).print.downcase } #{ BottleToWords.new(@bottle_count - 1).print } of beer on the wall."
    end
  end

  def how_many_to_remove(total_number)
    if total_number == 1
      "it"
    else
      "one"
    end
  end

end
