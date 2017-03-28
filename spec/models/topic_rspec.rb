require 'rails_helper'

RSpec.describe Topic, type: :model do
  it "is invalid without presence of description " do
#    Topic.new( description: nil).should_not be_valid
    expect(Topic.new( description: nil)).to_not be_valid
  end
  it "is invalid without presence of title" do
    Topic.new( title: nil).should_not be_valid
  end
  it "two votes sum" do
    t = Topic.new(title: "fsafas" , description: "fdsdf")
    v1 = Vote.new(stars: 6)
    v2 = Vote.new(stars: 6)
    t.votes << v1
    t.votes << v2
    t.save
    expect(t.number_of_votes).to eq(12)
   end


  end








