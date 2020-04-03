def bubble_sort vals
    
=begin    
    sorted_index = vals.length
    until sorted_index <= 0
        for i in 0...sorted_index-1
            vals[i], vals[i+1] = vals[i+1], vals[i] if vals[i] > vals[i+1]
        end
        sorted_index -= 1
    end
=end
=begin
#    alternative:
    vals.each_with_index do |v, index|
        for i in 0...vals.length-1 - index
            vals[i], vals[i+1] = vals[i+1], vals[i] if vals[i] > vals[i+1]
        end
    end
=end
    bubble_sort_by(vals) { |left, right| left - right}
end

def bubble_sort_by vals
    vals.each_with_index do |v, index|
        for i in 0...vals.length-1 - index
            vals[i], vals[i+1] = vals[i+1], vals[i] if yield(vals[i], vals[i+1]) > 0
        end
    end
    vals.to_s
end

puts bubble_sort([4,3,78,2,0,2])

puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}