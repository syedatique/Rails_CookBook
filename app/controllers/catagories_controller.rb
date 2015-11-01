class CatagoriesController < ApplicationController
  before_action :set_catagory, only: [:show, :edit, :update, :destroy]

  def index
    if params[:name]
    @catagories = Catagory.where("name ilike ?", "%#{params[:name]}%")
    else
    @catagories = Catagory.all
    end
  end

  def show
  end

  def new
    @catagory = Catagory.new
  end

 
  def edit
  end

  def create
    @catagory = Catagory.new(catagory_params)

    respond_to do |format|
      if @catagory.save
        format.html { redirect_to @catagory, notice: 'Catagory was successfully created.' }
        #format.json { render :show, status: :created, location: @catagory }
      else
        format.html { render :new }
        format.json { render json: @catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @catagory.update(catagory_params)
        format.html { redirect_to @catagory, notice: 'Catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catagory }
      else
        format.html { render :edit }
        format.json { render json: @catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @catagory.destroy
    respond_to do |format|
      format.html { redirect_to catagories_url, notice: 'Catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_catagory
      @catagory = Catagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catagory_params
      params.require(:catagory).permit(:name)
    end
end
