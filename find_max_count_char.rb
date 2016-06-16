###找出字符串中出现次数最多的字符

str = "helloo,world,,"

#找出字符串中所有字符出现的次数
def find_count_of_all_char(str)
  arr = str.split('').uniq  
  num = {}
  arr.each do |char|
    num[char] = str.count char
  end
  return num
end

#找出字符串中出现次数最多的字符
def find_max_count_of_all_char(str)
  arr = str.split('').uniq  
  num = {}
  arr.each do |char|
    num[char] = str.count char
  end
  return num.select {|k, v| v == num.values.max }
end

puts "字符串中各字符出现的次数：\n#{find_count_of_all_char(str)}"
puts "字符串中出现次数最多的字符：\n#{find_max_count_of_all_char(str)}"



