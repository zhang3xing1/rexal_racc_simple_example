require './lexer'
 
class TestLanguageTester
  describe 'Testing the Lexer' do
    before do
      @evaluator = TestLanguage.new
    end
    
    it 'tests for a digit' do
      result = @evaluator.tokenize("12")
      result[0][0].should == :DIGIT
      result[0][1].should == 12
    end
    
    it 'tests for a word' do
      result = @evaluator.tokenize("testing")
      result[0][0].should == :WORD
      result[0][1].should == "testing"
    end

    it 'tests for spaces' do
      result = @evaluator.tokenize("   ")
      result[0].should == nil
    end

  end
end