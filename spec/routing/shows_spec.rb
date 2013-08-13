require 'spec_helper'

describe "shows" do
  it "should route the root to shows#index" do
    {:get => "/"}.should route_to(:controller => "shows", :action => "index")
  end

  it "should route /shows to shows#index" do
    {:get => '/shows'}.should route_to(:controller => "shows", :action => "index")
  end
end