#encoding:utf-8

file = File.open('district_code.txt', 'r:utf-8')
lines = file.readlines
lines.delete_if {|line| !line.match(/^(\d{6}) (.*)$/)}
puts "amount: #{lines.size}"

h = {}
lines.each_with_index do |line, i|
  if match = line.match(/^(\d{6}) (.*)$/)
    code, name = line.match(/^(\d{6})\s*(\p{Han}*)$/u).captures
    h[i+1] = {code: code.to_i, name: name}
  else
  	puts "no match in line #{i}!"
  end
end
puts "area code info: #{h}"

arr_weight = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]
hash_check_code = {0 =>'1', 1 =>'0', 2 => 'X', 3 => '9', 4 =>'8', 5 => '7', 6 => '6', 7 => '5', 8 => '5', 9 => '3', 10 => '2'}

#generate area code
key = rand(0..h.size)
puts "key: #{key}"
area_code = h[key][:code]
puts "area_code: #{area_code}" 

#generate birthday
random_time = Time.at(rand * Time.now.to_i)
birthday = "#{random_time.strftime('%Y')}#{random_time.strftime('%m')}#{random_time.strftime('%d')}"
puts birthday

#generate sequence code
seq_code = rand(100..999)
puts "sequence code: #{seq_code}" 

certificate_no = "#{area_code}#{birthday}#{seq_code}"
puts "certificate number: #{certificate_no}"

#generate check code
count = 0
for i in (0...certificate_no.size)
  count += certificate_no[i].to_i * arr_weight[i]
end

check_code = hash_check_code[(count%11)]
puts "check code: #{check_code}"

#generate certificate id
certificate_id = "#{certificate_no}#{check_code}" 
puts "certificate number: #{certificate_id}"