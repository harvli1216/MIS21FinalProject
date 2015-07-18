class PagesController < ApplicationController
  def index
  	@positions = Position.all
  	@candidates = Candidate.all
  end

  def about
  end

  def profile
  	@user = current_user
  	@votes = Vote.all
  end
end
