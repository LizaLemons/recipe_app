class RecipesController < ApplicationController

  before_action :authenticate, only: [:new, :create]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.find_or_initialize_by(recipe_params)
    @collection = Collection.find(params[:collection_id])
    @collection.add_recipe(@recipe)

    if @recipe.save
      redirect_to(collection_path(@collection))
    else
      redirect_to new_recipe_path
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @collection = Collection.find(params[:collection_id])
    @collection.add_recipe(@recipe)

    if @recipe.update(recipe_params)
      redirect_to(recipe_path(@recipe))
    else
      redirect_to edit_recipe_path(@recipe)
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to(recipes_path)
  end

  def search
    @recipe = Recipe.new
    search_term = params[:search]
    @search_results = Yummly.search(search_term)
    @shopping_lists = Yummly.filter(@search_results, search_term)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :directions, :image_url, :yummly_id)
  end

end
