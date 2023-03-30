require "byebug"

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
        end
    end
    if str2_a.length == 0
        return true
    end
    false

end

def third_anagram?(str1, str2)

    # alpha = ("a".."z").to_a
    str1_a = str1.split("")
    str2_a = str2.split("")

    str1_sorted = str1_a.sort
    str2_sorted = str2_a.sort
    debugger
    if str1_sorted == str2_sorted
        return true
    end
    false



end

