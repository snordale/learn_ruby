class Timer
  #write your code here

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds
    @seconds
  end

  def seconds=(s)
    @seconds = s
  end

  def val_to_string(n)
    if n < 10
      "0#{n}"
    else
      "#{n}"
    end
  end

  def time_string
    if @seconds > 59
      @minutes += @seconds / 60
      @seconds = @seconds % 60
    end

    if @minutes > 59
      @hours += @minutes / 60
      @minutes = @minutes % 60
    end

    sol = val_to_string(@hours) + ":" + val_to_string(@minutes) + ":" + val_to_string(@seconds)
  end
end