class PagesController < ApplicationController
  def index
  	@positions = Position.all
  	@candidates = Candidate.all
  end

  def about
  end
end
