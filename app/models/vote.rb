class Vote < ApplicationRecord

 belongs_to :topic
 def number_of_Stars
 	votes.count 
 end
end
