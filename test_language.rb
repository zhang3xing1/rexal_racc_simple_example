require './lexer.rb'

class TestLanguageTester
	@evaluator = TestLanguage.new
	@evaluator.tokenize("y")
end