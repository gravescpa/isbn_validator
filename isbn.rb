def isbnlength(number)
	valid10 = 0
	valid13 = 0
	if number.length == 10
		valid10 = "true"
	elsif number.length == 13
	 	valid13 = "true"
	end
end

#this strips out the dashes and spaces and pushes into an array
#number = '12-345-5732'



# n = number.to_s.chars.map(&:to_i) #this puts number into array n

#function to check for valid ISBN check digit
def isbnvalidator10(number)
	number = number.gsub(/[^0-9]/i, "") #This removes - and spaces from string
	
	
	#this portion pushes number into an array
	array = number.to_s.chars.map(&:to_i)


	#this portion performs the math for the ISBN check digit
	sum = 0

	array.each.with_index do |value, index|
		break if index == 9
		sum += value * (index +1)
	end

	checksum = sum % 11

	if checksum == array[9]
		true
	else
		false
	end

	checksum == array[9]

end





