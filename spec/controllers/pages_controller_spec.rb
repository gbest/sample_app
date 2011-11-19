require 'spec_helper'

describe PagesController do

  #NOTE: title checks do NOT fail if @title instance variable in pages controller
  #      contains characters after the required portion, such as "Home (SUCKS)!!"
  #      Perhaps this is a limitation of .should have_selector's :content attribute?

  #graham:this line customizes this spec to render views as part of testing
  render_views

  #before each test clause
  before(:each) do
    #define a base title
    @base_title = "Ruby on Rails Tutorial Sample App | "
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
				    :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
				    :content => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
				    :content => @base_title + "About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
				    :content => @base_title + "Help")
    end
  end
end
