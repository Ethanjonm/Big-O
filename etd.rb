def my_min(array)
    smallest = array.first
    array.each_with_index do |num1, idx1|
        array.each_with_index do |num2, idx2| #O(n^2)
            if num1 < num2 && num1 < smallest
                smallest = num1               
            end
        end
    end
    smallest
end


def my_min2(array)
    small = array.first
    i = 0
    while i < array.length #O(n)

        if small > array[i]
            small = array[i]
        end
        i += 1
    end
    small 
end

