class PagesController < ApplicationController
  def index
  	@positions = Position.all
  	@candidates = Candidate.all
    @botos = Boto.all
  end

  def about
  end

  def profile
  	@user = current_user
  	@botos = Boto.all
  end
end
