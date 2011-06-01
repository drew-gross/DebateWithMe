class SupportsController < ApplicationController
  def create
    @debate = Debate.find(params[:debate_id])
    @support = @debate.supports.create(params[:support])
    redirect_to debate_path(@debate)
  end    
end
