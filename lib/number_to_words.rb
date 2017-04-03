class NumberToWords

  def initialize(number)
    @number = number
  end

  def print
    if @number < 1
      "No more"
    else
      @number.to_s
    end
  end

end
