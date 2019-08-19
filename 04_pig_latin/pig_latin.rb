#write your code here

def translate str
	vowels = ['a', 'e', 'i', 'o', 'u']
	sarray = str.split(' ')
	sent = []
	pre, root, first, second = ''

	i = 0
	sarray.each do |word|
		first = word[i, 1]
		second = word[i + 1, 1]
		third = word[i + 2, 1]
		
		if vowels.include? first
			pre = ''
			root = word
		else
			if first == 'q'
				pre = 'qu'
				root = word[i + 2 .. -1]
			elsif !vowels.include? second
				if !vowels.include? third
					if third == 'q'
						pre = first + second + 'qu'
						root = word[i + 2 .. -1]
					else 
						pre = first + second + third
						root = word[i + 3 .. -1]
					end
				elsif second == 'q'
					pre = first + 'qu'
					root = word[i + 3 .. -1]
				else
					pre = first + second
					root = word[i + 2 .. -1]
				end
			else
				pre = first
				root = word[i + 1 .. -1]
			end
		end
		puts(root + ',,,  ' + pre + '  ' + 'ay')
		sent.push(root + pre + 'ay')
	end
	sent = sent.join(' ')
	sent
end
