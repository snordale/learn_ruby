#write your code here
def echo str
	str
end

def shout str
	str.upcase
end


def repeat str, n
	sol = ""
	while n > 1
		sol += str + " "
		n -= 1
	end
	sol += str
	sol
end

def start_of_word word, i
	word[0, i]
end

def first_word word
	word.partition(" ").first
end

def titleize str
	array = str.split(' ')

	i = 0
	while i < array.length 
		if array[i] != 'and' and array[i] != 'then' and array[i] != 'by' and array[i] != 'or' and array[i] != 'over' and array[i] != 'the'
			array[i] = array[i].capitalize
		end
		i += 1
	end
	array[0] = array[0].capitalize
	array * ' '

	

	

end
