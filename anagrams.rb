def first_anagram?(str1,str2)
    str1_a = str1.split("")
    str2_a = str2.split("")

    str1_p = str1_a.permutation.to_a
    str1_p.include?(str2_a)

end