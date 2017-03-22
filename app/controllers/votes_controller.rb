class VotesController < ApplicationController
  

 def show
  end

  def new 
    @votes = Vote.new 

end

    def create
    @votes = Vote.new   

    respond_to do |format|
    if @votes.save
      format.html { redirect_to @topics, notice: 'vote was successfully submitted' }
    else
      format.html { render action: "show" }
    end
  end
end
    end

