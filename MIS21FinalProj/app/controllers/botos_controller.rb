class BotosController < ApplicationController
  def new
  	@boto = Boto.new
  end

  def create
  	  @candidates = Candidate.all
      @boto = Boto.new(boto_params)
      if @boto.save
        redirect_to root_path
      else
        render 'new'
      end
  end

  private
  def boto_params
    params.require(:boto).permit!
  end
end
