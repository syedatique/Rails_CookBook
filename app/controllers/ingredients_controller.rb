class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]


  def index
    if params[:name]
    @ingredients = Ingredient.where("name ilike ?", "%#{params[:name]}%")
    else
    @ingredients = Ingredient.all
    end
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
    @recipes = Recipe.all
  end

  def edit
    @recipes = Recipe.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'ingredient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Ingredient was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :recipe_ids => [])
    end
end
