class ContestsController < ApplicationController
  def create
    @debate = Debate.find(params[:debate_id])
    @contest = @debate.contests.create(params[:contest])
    redirect_to debate_path(@debate)
  end
end
