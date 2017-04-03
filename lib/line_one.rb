class LineOne
  require_relative 'bottle_to_words'
  require_relative 'number_to_words'

  def initialize(bottle_count)
    @bottle_count = bottle_count
  end

  def print
    build_line_one
  end

  def build_line_one
    if @bottle_count == 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{ NumberToWords.new(@bottle_count).print } #{ BottleToWords.new(@bottle_count).print } of beer on the wall, #{ NumberToWords.new(@bottle_count).print } #{ BottleToWords.new(@bottle_count).print } of beer."
    end
  end


end
