class LanguageCalculator

	def initialize(results)
		@results = results
	end

	def find_languages
		@results.map { |repo| repo['language'] }
	end

	def most_common
		self.find_languages.group_by { |language| language }.values.max_by(&:size).first
	end

end