class Show < ActiveRecord::Base
  validates_presence_of :name, :message => "Please specify a name."
  validates_presence_of :picture, :message => "Please specify a picture."
end