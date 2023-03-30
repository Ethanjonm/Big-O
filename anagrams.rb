require "byebug"
#O(n!)
def first_anagram?(str1,str2)
    str1_a = str1.split("")
    str2_a = str2.split("")

    str1_p = str1_a.permutation.to_a
    str1_p.include?(str2_a)

end
# O(n^2)
def second_anagram?(str1, str2)
    str1_a = str1.split("")
    str2_a = str2.split("")

    str1_a.each do |char|
        idx_del = str2_a.find_index(char)
        if idx_del != nil
        str2_a.delete_at(idx_del)
        #return false
        end
    end
    if str2_a.length == 0
        return true
    end
    false

end
#O(n log n)
def third_anagram?(str1, str2)

    # alpha = ("a".."z").to_a
    str1_a = str1.split("")
    str2_a = str2.split("")

    str1_sorted = str1_a.sort
    str2_sorted = str2_a.sort

    if str1_sorted == str2_sorted
        return true
    end
    false
end
#O(n)
def fourth_anagram?(str1,str2)
    hash1 =Hash.new(0)

    str1.each_char do |ele|
        hash1[ele] += 1
    end
    str2.each_char do |ele|
        hash1[ele] -= 1
    end

    hash1.all? {|k,v| v.zero?}
    
end

