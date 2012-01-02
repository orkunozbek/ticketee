class Ticket < ActiveRecord::Base
  belongs_to :project
  
  validates_presence_of :title
  validates_presence_of :description
  validates_length_of :title, :minimum => 10
end
