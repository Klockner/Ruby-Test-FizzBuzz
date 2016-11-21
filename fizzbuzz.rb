class FizzBuzz

  def print(numbers)
    if numbers.respond_to?('each')
      array = []
      numbers.each do |number|
        array << test(number)
      end
    else
      array = test(numbers)
    end
    array
  end

  private

  def test(number)
    raise ArgumentError unless number > 0
    raise ArgumentError, "Integers only" unless number.is_a? Integer

    if number%15 == 0
      "FizzBuzz"
    elsif number%3 == 0
      "Fizz"
    elsif number%5 == 0
      "Buzz"
    else
      number.to_s
    end
  end

end
