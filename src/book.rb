
class Book 

  attr_reader :isbn, :title, :author, :content
  
  def initialize(isbn, title, author, content)
    @title = title
    @author = author
    @isbn = isbn
    @content = content
    
  end
end

class Member 
  attr_accessor :name, :address, :phone, :email, :current_books
  
  def initialize(name, address, phone, email, current_books)
  	@name = name
  	@phone = phone
  	@email = email
  	@current_books = Array.new
  end
end

class Library 
  
  attr_reader :card_catalog_in 
  
  def initialize(file_path)
  
    @card_catalog_in = Hash.new
    
    read_file file_path
    
  end
  
  def checkout(books_out)
  end
  
  def checkin(books_in)
  end
  
  private 
  
  def read_file(file_path)
    file = File.new(file_path, "r")
    while (line = file.gets)
      if !line.empty?
		    arr=line.split(';')
		    book = Book.new(arr[0],arr[1],arr[2],arr[3])
		    @card_catalog_in.merge!(arr[0] => book)
      end
    end
    file.close
    
  end
  
  
end



