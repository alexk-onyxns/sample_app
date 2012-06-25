require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
    get 'home'    
    response.body.should_not have_selector("title", text: "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
    get 'contact'    
    response.body.should have_selector("title", :text => "Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
    get 'about'
    response.body.should have_selector("title", :content => "About")
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
    get 'help'
    response.body.should have_selector("title", :content => " | Help")
    end
  end

end
