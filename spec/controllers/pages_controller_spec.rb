require 'spec_helper'

describe PagesController do
  render_views 

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      # response.body.should have_selector("head title", :text => "Ruby on Rails Tutorial SampleApp | Home")      
     page.should have_css("title", 
              :content => "Ruby on Rails Tutorial SampleApp | Home")
      
        
    end
      
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content=> "Ruby on Rails Tutorial SampleApp | contact")
    end
  end
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content=> "Ruby on Rails Tutorial SampleApp | about")
    end
  end

end
