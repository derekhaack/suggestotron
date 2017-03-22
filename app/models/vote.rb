class Vote < ApplicationRecord
  belongs_to :topic 
  validates_presence_of :stars, :message => "This field cant be blank" 

  def new
    @vote = Vote.new 
  end 
end