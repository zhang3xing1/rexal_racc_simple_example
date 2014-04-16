class TestLanguage
rule
  u     { puts "Single u." }
  uu    { puts "Double u." }

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


