class Topic < ApplicationRecord
has_many :votes, dependent: :destroy
validates_presence_of :title, :message => "This field cant be blank" 
validates_presence_of :description, :message => "This field cant be blank" 

end
