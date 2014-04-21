class TestLanguage
rule
	expression : DIGIT
	| DIGIT ADD  DIGIT {return val[0] + val[2]}
	| DIGIT SUBTRACT DIGIT  { return val[0] - val[2] }
	| DIGIT MULTIPLY DIGIT  { return val[0] * val[2] }
	| DIGIT DIVIDE DIGIT    { return val[0] / val[2] }
end

---- header
  require_relative 'lexer'

---- inner
  def parse(input)
    scan_str(input)
  end
