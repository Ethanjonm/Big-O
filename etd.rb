require "byebug"
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

def lcs(array)
    sum = []
    i = 0
    while i < array.length
        j = i
        while j < array.length
            sub_a = array[i..j]
            sum << sub_a
            j+=1
        end
        i+=1
    end
    
    answer = sum[0][0]
    sum.each do |ele|
        if ele.sum > answer
            answer = ele.sum
        end
    end
    answer
end

def lcs2(array)
    sum = array.first
    i = 0
    j = 0
    while i < array.length
        sub_a = array[i..j]
        # sum << sub_a
        if sub_a.sum > sum 
            sum = sub_a.sum 
        end

        
        if j == array.length - 1
            i += 1
            j = i
        else
            j += 1
        end

    end
    sum

end