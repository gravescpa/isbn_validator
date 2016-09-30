# def isbnlength(number)
# 	valid10 = 0
# 	valid13 = 0
# 	if number.length == 10
# 		valid10 = "true"
# 	elsif number.length == 13
# 	 	valid13 = "true"
# 	end
# end

#def isbnvalidator(number)
number = '12-345-5732'
number = number.gsub(/[^0-9]/i, "") #This removes - and spaces from string
n = number.to_s.chars.map(&:to_i)
puts n

sum = (n[1]*1)+(n[2]*2)+(n[3]*3)+(n[4]*4)+(n[5]*5)+(n[6]*6)+(n[7]*7)+(n[8]*8)+(n[9]*9)
checksum = sum%11
checkdigit = number + checksum
puts checkdigit
#end
