require './lexer'
 
class TestLanguageTester
  describe 'Testing the Lexer' do
    before do
      @evaluator = TestLanguage.new
    end
    
    it 'tests for a single u' do
      result = @evaluator.tokenize("u")
      result[0].should == "Single u."
    end

    it 'tests for a double u' do
      result = @evaluator.tokenize("uu")
      result[0].should == "Double u."
    end
    
    it 'tests for a triple u' do
      result = @evaluator.tokenize("uuu")
      result[0].should == "Triple u."
    end
    
    it 'tests for a no match' do
      result = @evaluator.tokenize("y")
      result[0].should == "Could not match."
    end
    
  end
end