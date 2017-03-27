class VotesController < ApplicationController


  def index

    @votes = Vote.all
  end


  def show
    @votes = topic.votes(params[:id])
  end

  def new
    @votes = Vote.new
  end
  def create
     topic_id = params["topic_id"]

    @votes =Vote.new(stars: params["stars"],topic: Topic.find(params["vote"]["topic_id"]))
    if @votes.save

     flash[:succes] = 'Your vote was succesfully submitted'
     redirect_to topics_path
    else
      render "new"
    end
  end
end

