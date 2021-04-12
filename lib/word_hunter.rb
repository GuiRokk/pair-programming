class WordHunter
	def self.find(matrix, words)
		words = words.split
		comb = matrix + matrix.transpose + reverse(matrix) + reverse(matrix.transpose)

		comb.map do |word|
			next unless words.include?(word.join)
			word.join
		end.compact
	end

	def self.reverse(array)
		array.map { |letter| letter.reverse }
	end
end