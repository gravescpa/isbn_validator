def isbnlength(number)
	valid10 = 0
	valid13 = 0
	if number.length == 10
		valid10 = "true"
	elsif number.length == 13
	 	valid13 = "true"
	end
end


#function to check for valid ISBN 10 check digit
def isbnvalidator10(number)
	

	#This removes the dash and space from the string
	number = number.gsub(/[^0-9A-X]/i, "")

	array10 = number.split(//,)
	
	if array10[9] == "X"
		array10[9] = "10"
	end
	

	#this portion pushes number into an array
	array10 = array10.map(&:to_i)

	
	#this portion performs the math for the ISBN check digit
	sum10 = 0

	array10.each.with_index do |value, index|
		break if index == 9
		sum10 += value * (index +1)
	end

	checksum10 = sum10 % 11

	if checksum10 == array10[9]
		true
	else
		false
	end

	checksum10 == array10[9]

end

#function to check for valid ISBN 13 check digit
def isbnvalidator13(number)
	
	#This removes the dash and space from the string
	number = number.gsub(/[^0-9A-X]/i, "")

	array = number.split(//,)
		
	#this portion pushes number into an array
	array = array.map(&:to_i)
	
	#this portion performs the math for the ISBN check digit
	sum = 0


	array.each.with_index do |value, index|
		break if index == 12
		
		if index % 2 == 0
			sum += value * 1
		else
			sum += value * 3
		end
	end

	checksum = sum % 10
	checksum1 = (10 - checksum)

	if checksum1 == array[12]
		true
	else
		false
	end

	checksum == array[12]

end

