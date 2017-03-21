class VoteController < ApplicationController

belongs_to :topic 
has_many :star 
validates_presence_of :stars, :message => "This field cant be blank" 

  def create 

  @votes = Vote.new 
   
   end 

end

