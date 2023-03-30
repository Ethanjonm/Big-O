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

def okay_two_sum?(arr,target)
    left = []
    right = []

    arr.each do |num|
        if num < target
            left << num
        else
            right << num
        end
    end
    sum = []
    i = 0
    while i < left.length
        j = i+1
        while j < left.length
            sum << left[i] + left[j]
            j+=1
        end
        i+=1
    end
    