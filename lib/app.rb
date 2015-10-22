require 'sinatra'
require 'slim'

get '/create' do
  slim <<-FOO
doctype html
html
  head
    title My Blog - Create
  body
   h1 Post Creation Page
   p 
	a> href="http://localhost:4567" Home
	a> href="http://localhost:4567/create" Create Post
    form action='/create/post' method='POST'
	  p Title:
      input type='text' id='post-title' name='title'
	  p Content:
      textarea id='post-body' name='content'
	  p Author:
	  input type='text' id='post-author' name='author'
      button type='submit' id='submit-post' Submit
FOO
end




get '/setup' do
  $blog_posts = []
  
end



post '/create/post' do
  $blog_posts ||= []
  if $blog_posts.any?{ |hash| hash["title"] == params[:title] }
    "Error! No Duplicates!"
  else
    $blog_posts.push({ "title" => params[:title], "body" => params[:content], "author" => params[:author] })
    
	slim <<-FOO3 
doctype html
html
  body
    h1 Posts Page
	p
      a> href="http://localhost:4567" Home
	  a> href="http://localhost:4567/create" Create Post 
    p
	  div 
        | Submitted!
	h2
	  div
		| List of Posts	  
	  = $blog_posts
	  - $blog_posts.each do |post|
		h3
		  = post["title"] 
		p
		  = post["author"]
	  
FOO3
end

#get '/' do
#  	$blog_posts ||= []
#	$blog_posts.push({ "title" => params[:title], "body" => params[:content], "author" => params[:author] })
  
#end

#post '/' do
#	$blog_posts ||= []
#	$blog_posts.push({ "title" => params[:title], "body" => params[:content], "author" => params[:author] })
#end


  
  #if $blog_posts.any? 
    #$blog_posts.get({ "title" => params[:title], "author" => params[:author] })
	#puts({ "title" => params[:title], "author" => params[:author] })
  #end
end

 
