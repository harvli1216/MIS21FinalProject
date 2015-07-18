class BotosController < ApplicationController
  def new
  	@boto = Boto.new
  end

  def create
  	  @candidates = Candidate.all
      @boto = current_user.botos.new(boto_params)
      if @boto.save
        redirect_to vote_path(@user)
      else
        render 'new'
      end
  end

  private
  def boto_params
    params.require(:boto).permit!
  end
end
