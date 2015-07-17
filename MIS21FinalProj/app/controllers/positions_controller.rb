class PositionsController < ApplicationController
  before_action :authenticate_user!
  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def create
     @position = Position.new(position_params)
        if @position.save
            redirect_to root_path
        else
            render 'new'
      end
  end

  def index
    @positions = Position.all
    @candidates = Candidate.all
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
      @position = Position.find(params[:id])
        @position.update(position_params)
        if @position.save
           redirect_to position_path(@position)
        else
          render 'edit'
        end
  end

  def destroy
        @position = Position.find(params[:id])
        @position.destroy()

        redirect_to position_path
  end

  private
  def position_params
    params.require(:position).permit(:name, :candidate_id)
  end
end
