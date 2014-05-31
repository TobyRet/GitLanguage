class LanguageCalculator

	def initialize(results)
		@results = results
	end

	def find_languages
		@results.map { |repo| repo['language'] }
	end

end