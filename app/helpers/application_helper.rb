module ApplicationHelper
  
  # This will be a title helper for our pages  
  def title
    #This will be a local variable
    base_title="Ruby on Rails Tutorial Sample App"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end  
end
