class SmartagricsController < ApplicationController
  before_action :set_smartagric, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /smartagrics
  # GET /smartagrics.json
  def index
    @smartagrics = Smartagric.all.order('created_at DESC')
  end

  # GET /smartagrics/1
  # GET /smartagrics/1.json
  def show
  end

  # GET /smartagrics/new
  def new
    @smartagric = Smartagric.new
  end

  # GET /smartagrics/1/edit
  def edit
  end

  # POST /smartagrics
  # POST /smartagrics.json
  def create
    @smartagric = Smartagric.new(smartagric_params)

    respond_to do |format|
      if @smartagric.save
        format.html { redirect_to @smartagric, notice: 'Smartagric was successfully created.' }
        format.json { render :show, status: :created, location: @smartagric }
      else
        format.html { render :new }
        format.json { render json: @smartagric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartagrics/1
  # PATCH/PUT /smartagrics/1.json
  def update
    respond_to do |format|
      if @smartagric.update(smartagric_params)
        format.html { redirect_to @smartagric, notice: 'Smartagric was successfully updated.' }
        format.json { render :show, status: :ok, location: @smartagric }
      else
        format.html { render :edit }
        format.json { render json: @smartagric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartagrics/1
  # DELETE /smartagrics/1.json
  def destroy
    @smartagric.destroy
    respond_to do |format|
      format.html { redirect_to smartagrics_url, notice: 'Smartagric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartagric
      @smartagric = Smartagric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smartagric_params
      params.require(:smartagric).permit(:mositurereads, :phreads)
    end
end
