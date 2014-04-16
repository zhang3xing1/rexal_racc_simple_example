class TestLanguage
rule
  \w    {puts "regular ok" }
  uu    { puts "Double u." }
  u     { puts "Single u." }
  uuu   { puts "Triple u." }
  .     { puts "Could not match." }

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


