# Caesar Cipher for The Odin Project

def caesar(string, shift)
	lower = ('a'..'z').to_a
	upper = ('A'..'Z').to_a

	new_word = ""

	string.each_char do |char|
		if !lower.include?(char) && !upper.include?(char)
			new_word += char
		elsif /[[:lower:]]/.match(char) != nil # is lower
			new_index = (lower.index(char) + shift) % 26
			new_word += lower[new_index]
		else # is upper
			new_index = (upper.index(char) + shift) % 26
			new_word += upper[new_index]
		end
	end

	return new_word

end

puts caesar("What a string!", 5)