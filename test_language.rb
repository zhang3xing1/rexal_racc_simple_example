require './lexer.rb'

class TestLanguageTester
	@evaluator = TestLanguage.new
	@evaluator.tokenize("u")
end