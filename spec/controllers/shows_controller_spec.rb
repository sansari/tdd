require 'spec_helper'

describe ShowsController do

  describe "#index" do
    before do
      @show = FactoryGirl.create(:show)
    end

    it "should be successful" do
      get :index

      response.should be_success
      assigns[:shows].should include(@show)
    end
  end

  describe "#new" do
    it "should be successful" do
      get :new

      response.should be_success
    end

    it "should create a new instance of a Show" do
      get :new

      assigns(:show).should be_an_instance_of(Show)
    end
  end

  describe "#create" do
    def perform
      post :create, :show => {:name => "Family Guy", :picture => "http://something.com/pic.png"}
    end

    it "should redirect to the shows index" do
      perform

      response.should be_redirect
      response.location.should == shows_url
    end

    it "should create a Show" do
      lambda do
        perform
      end.should change(Show, :count).by(1)

      show = Show.last
      show.name.should == "Family Guy"
      show.picture.should == "http://something.com/pic.png"
    end

    describe "when passing invalid input" do
      it "should not create a show" do
        lambda do
          post :create, :show => {:name => "Family Guy"}
        end.should_not change(Show, :count)

        response.should_not be_success
      end
    end
  end

end