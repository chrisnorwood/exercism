module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute first, second
    raise ArgumentError unless first.length == second.length

    sum    = 0
    first  = first.split('')
    second = second.split('')

    first.each_with_index do |first_n, i|
      sum +=1 unless first_n == second[i]
    end
    return sum
  end
end