class TestLanguage
macro
  BLANK     [\ \t]+
  DIGIT     \d+
  ADD       \+
  SUBTRACT  \-
  MULTIPLY  \*
  DIVIDE    \/
 
rule
  {BLANK}      # no action
  {DIGIT}     { [:DIGIT, text.to_i] }
  {ADD}       { [:ADD, text] }
  {SUBTRACT}  { [:SUBTRACT, text] }
  {MULTIPLY}  { [:MULTIPLY, text] }
  {DIVIDE}    { [:DIVIDE, text] }
 
inner
  def tokenize(code)
    scan_setup(code)
    tokens = []
    while token = next_token
      tokens << token
    end
    tokens
  end
end