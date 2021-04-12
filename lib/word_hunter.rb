class WordHunter
	def self.find(matrix, words)
		inputs = words.split
		comb = matrix + matrix.transpose + inverte(matrix) + inverte(matrix.transpose)

		comb.map do |word|
			if inputs.include?(word.join)
				word.join
			end
		end.compact
	end

	def self.inverte(array)
		array.map do |f|
			f.reverse
		end
	end
end