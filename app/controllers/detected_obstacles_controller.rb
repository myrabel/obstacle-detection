class DetectedObstaclesController < ApplicationController
  before_action :set_detected_obstacle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /detected_obstacles
  # GET /detected_obstacles.json
  def index
    @detected_obstacles = DetectedObstacle.all
                                          .paginate(page: params[:page])
                                          .order('timestamps DESC')
  end

  # GET /detected_obstacles/1
  # GET /detected_obstacles/1.json
  # def show
  # end
  #
  # # GET /detected_obstacles/new
  # def new
  #   @detected_obstacle = DetectedObstacle.new
  # end
  #
  # # GET /detected_obstacles/1/edit
  # def edit
  # end
  #
  # # POST /detected_obstacles
  # # POST /detected_obstacles.json
  # def create
  #   @detected_obstacle = DetectedObstacle.new(detected_obstacle_params)
  #
  #   respond_to do |format|
  #     if @detected_obstacle.save
  #       format.html { redirect_to @detected_obstacle, notice: 'Detected obstacle was successfully created.' }
  #       format.json { render :show, status: :created, location: @detected_obstacle }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @detected_obstacle.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /detected_obstacles/1
  # # PATCH/PUT /detected_obstacles/1.json
  # def update
  #   respond_to do |format|
  #     if @detected_obstacle.update(detected_obstacle_params)
  #       format.html { redirect_to @detected_obstacle, notice: 'Detected obstacle was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @detected_obstacle }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @detected_obstacle.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /detected_obstacles/1
  # # DELETE /detected_obstacles/1.json
  # def destroy
  #   @detected_obstacle.destroy
  #   respond_to do |format|
  #     format.html { redirect_to detected_obstacles_url, notice: 'Detected obstacle was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detected_obstacle
      @detected_obstacle = DetectedObstacle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detected_obstacle_params
      params.require(:detected_obstacle).permit(:time, :distance)
    end
end
