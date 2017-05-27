class LinktablesController < ApplicationController
  before_action :set_linktable, only: [:show, :update, :destroy]

  # GET /linktables
  def index
    @linktables = Linktable.all

    render json: @linktables
  end

  # GET /linktables/1
  def show
    render json: @linktable
  end

  # POST /linktables
  def create
    @linktable = Linktable.new(linktable_params)

    if @linktable.save
      render json: @linktable, status: :created, location: @linktable
    else
      render json: @linktable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /linktables/1
  def update
    if @linktable.update(linktable_params)
      render json: @linktable
    else
      render json: @linktable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /linktables/1
  def destroy
    @linktable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linktable
      @linktable = Linktable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def linktable_params
      params.require(:linktable).permit(:feature_id, :project_id, :creator)
    end
end
