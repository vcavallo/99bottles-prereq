class BottleToWords

  def initialize(number)
    @number = number
  end

  def print
    if @number == 1
      "bottle"
    else
      "bottles"
    end
  end

end
