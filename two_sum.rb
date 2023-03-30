require "byebug"

#O(n^2)
def bad_two_sum?(arr,target)
    sum = []
    i = 0
    while i < arr.length
        j = i+1
        while j < arr.length
            sum << arr[i] + arr[j]
            j+=1
        end
        i+=1
    end

    sum.each do |ele|
        if ele == target
            return true
        end
    end
    false
end
#O(n)
def okay_two_sum?(arr,target)

    i = 0
    j = arr.length - 1
    until i == j
        if arr[i] + arr[j] == target
            return true
        elsif arr[i] + arr[j] < target 
            i+=1
        else
            j-=1
        end
    end
    false
end


def two_sum?(arr,target)
    hash = {}

    arr.each do |num|
        debugger
        complement = target - num
        if hash[complement]
          return true
        end
        hash[num] = true
      end
    
      false
end