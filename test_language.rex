class TestLanguage
rule
  uuu { return "Triple u." }
  uu  { return "Double u." }
  u   { return "Single u." }
  .   { return "Could not match." }

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


