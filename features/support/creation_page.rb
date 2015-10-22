require 'page-object'

class CreationPage
  include PageObject

  page_url "http://localhost:4567/create"

  text_field(:title, :id => "post-title")
  button(:submit, :id => "submit-post")
  text_area(:content, :id => "post-body")
  text_field(:author, :id => "post-author")

  def create_valid_post
    self.title = "My Blog Title"
    self.content = "This is my post's content."
	self.author = "Me"
    self.submit
  end
  
  def create_duplicate_posts
    create_valid_post
	goto
	create_valid_post
  end
  
  def list_posts
    create_valid_post
  end
  
  def read_post
    goto
  end
  

class HomePage
  include PageObject
  
  page_url "http://localhost:4567/"
  
  text_field(:title, :id => "post-title")
  button(:submit, :id => "submit-post")
  text_area(:content, :id => "post-body")
  text_field(:author, :id => "post-author")
end
  

end


