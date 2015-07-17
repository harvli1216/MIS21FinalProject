class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    @positions = Position.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def create
    @candidate = Candidate.new(candidate_params)
      if @candidate.save
       redirect_to candidate_path(@candidate)
      else
        render 'new'
      end
  end

  def new
    @candidate = Candidate.new
  end

  def update
    @candidate = Candidate.find(params[:id])
    @candidate.update(candidate_params)
    if @candidate.save
      redirect_to candidate_path(@candidate)
    else
      render 'edit'
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy()

    redirect_to candidate_path

  end

  def about
    render 'about'
  end

  private
  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :slogan, :candidate, :position_id)
  end
end
