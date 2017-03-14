class Topic < ApplicationRecord
has_many :votes, dependent: :destroy
validates_presence_of :title 
validates_presence_of :description

end
