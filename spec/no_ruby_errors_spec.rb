describe "Not having any errors and being all green" do

  describe 'NameError' do
    it 'raises a NameError when encountering undefined barewords' do
      expect { load './lib/a_name_error.rb' }.not_to raise_error
    end
  end

  describe 'SyntaxError' do
    it 'raises a SyntaxError for nonsensical code' do
      expect { load './lib/a_syntax_error.rb' }.not_to raise_error
    end
  end

  describe 'TypeError' do
    it 'raises a TypeError for objects of the wrong type' do
      expect { load './lib/a_type_error.rb' }.not_to raise_error
    end
  end

  describe 'ZeroDivisionError' do
    it 'raises a ZeroDivisionError for dividing by zero' do
      expect { load './lib/a_division_by_zero_error.rb' }.not_to raise_error
    end
  end
end
