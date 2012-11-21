require 'spec_helper'

describe Book do
  describe "class" do
    before :each do
      @book = Book.new("Twain, Mark", "HuckleBerry Finn", "123-ABC-DEF-456", "Once upon a time...")
      
    end
    
    it "should have reader methods accessible" do
      @book.should respond_to :author
      @book.should respond_to :title
      @book.should respond_to :isbn
      @book.should respond_to :content
    end
  end

end 

describe Library do
  describe "class" do
    before :each do
      @library = Library.new("input_data/input")
      
    end
    
    it "should have reader methods accessible" do
      @library.should respond_to :card_catalog_in
    end
    
    it "should have 3 books ready for checkout" do
    	@library.card_catalog_in.size.should == 3
    end
    
  end

end 

