class ResponsesController < ApplicationController
      before_filter :authenticate, :only => :destroy

      def create
      	  @debate = Debate.find(params[:debate_id])
	  @response = @debate.responses.create(params[:response])
	  redirect_to debate_path(@debate)
      end

      def destroy
      	  @debate = Debate.find(params[:debate_id])
	  @debate.responses.find(params[:id]).destroy
	  redirect_to debate_path(@debate)
       end
end
