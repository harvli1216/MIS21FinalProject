class VotesController < ApplicationController
 before_action :authenticate_user!
  def show
  end

  def new
    @vote = Vote.new
  end

  def create
    @candidates = Candidate.all
    @vote = current_user.votes.new(vote_params)
      if @vote.save
        redirect_to vote_path(@user)
      else
        render 'new'
      end
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def vote_params
    params.require(:vote).permit!
  end
end
