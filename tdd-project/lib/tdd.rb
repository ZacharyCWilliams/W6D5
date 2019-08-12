class Array 

  def my_uniq
    output = []
    self.each do |el|
      unless output.include?(el)
        output << el
      end
    end
    output
  end

  def two_sum
    indicies = []
    (0..self.length - 1).each do |i1|
        (i1+1...self.length).each do |i2|
           indicies << [i1,i2] if self[i1] + self[i2] == 0
        end
    end
    indicies
  end

  def my_transpose
    output = []
        idx = 0
        until idx == self.length
            output_sub = []
            self.each do |ele|
                output_sub << ele[idx]
            end
            output << output_sub
            idx +=1
        end
    output
  end

  def stock_picker
    days = Hash.new { |h, k| h[k] = 0 }
    (0..self.length - 1).each do |i1|
        (i1+1...self.length).each do |i2|
          days[[i1, i2]] = (self[i2] - self[i1])
        end
    end
    high_price = days.values.max
    days.key(high_price)
  end

end