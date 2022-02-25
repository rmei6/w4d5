def first_anagram?(str1,str2)
  return str1.split('').permutation.to_a.include?(str2.split('')) 
end

def second_anagram?(str1,str2)
  str = str2.split("")
  r_indices = []
  str1.each_char do |c|
    i = str.find_index(c)
    if i == nil 
      return false 
    end
    str.delete_at(i)

  end
  str.empty?
end


def third_anagram?(str1, str2)
  alphabet = ('a'..'z').to_a
  
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  alphabet.each do |c|
    hash1[c] = 0
    hash2[c] = 0
  end

  str1.each_char do |c|
    hash1[c] += 1
  end

  str2.each_char do |c|
    hash2[c] += 1
  end

  string1 = ""

  string2 = ""

  hash1.each do |char,count|
    string1 += char * count
  end

  hash2.each do |char,count|
    string2 += char * count
  end  
  p string1 
  p string2
  string1 == string2

end


def fourth_anagram? (str1, str2)
  
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

   str1.each_char do |c|
    hash1[c] += 1
  end

  str2.each_char do |c|
    hash2[c] += 1
  end

  hash1 == hash2
end


def n_anagram (str1, str2)
  hash1 = Hash.new(0)
   str1.each_char do |c|
    hash1[c] += 1
  end

  str2.each_char do |c|
    hash1[c] -= 1
  end
  hash1.values.all?(0)
end
p  n_anagram("abcdefg","gfcbdea") #  true 
# practice-exam 



