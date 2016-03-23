class MeeseeksController < ApplicationController
  before_action :set_meeseek, only: [:show, :edit, :update, :destroy]

  # GET /meeseeks
  # GET /meeseeks.json
  def index
    if params[:search].present?
      @meeseeks = Meeseek.near(params[:search])
    else
      @meeseeks = Meeseek.all
    end
  end

  # GET /meeseeks/1
  # GET /meeseeks/1.json
  def show
  end

  # GET /meeseeks/new
  def new
    @meeseek = Meeseek.new
  end

  # GET /meeseeks/1/edit
  def edit
  end

  # POST /meeseeks
  # POST /meeseeks.json
  def create
    @meeseek = Meeseek.new(meeseek_params)

    respond_to do |format|
      if @meeseek.save
        format.html { redirect_to @meeseek, notice: 'Meeseek was successfully created.' }
        format.json { render :show, status: :created, location: @meeseek }
      else
        format.html { render :new }
        format.json { render json: @meeseek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeseeks/1
  # PATCH/PUT /meeseeks/1.json
  def update
    respond_to do |format|
      if @meeseek.update(meeseek_params)
        format.html { redirect_to @meeseek, notice: 'Meeseek was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeseek }
      else
        format.html { render :edit }
        format.json { render json: @meeseek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeseeks/1
  # DELETE /meeseeks/1.json
  def destroy
    @meeseek.destroy
    respond_to do |format|
      format.html { redirect_to meeseeks_url, notice: 'Meeseek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeseek
      @meeseek = Meeseek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeseek_params
      params.require(:meeseek).permit(:name, :address, :latitude, :longitude)
    end
end
