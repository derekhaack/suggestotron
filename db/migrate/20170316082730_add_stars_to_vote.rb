class AddStarsToVote < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :stars, :integer 
  end
end
