class CollectionsController < ApplicationController

  # before_action :authenticate, only: [:new, :create]

  def index
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      redirect_to(collection_path(@collection))
    else
      redirect_to new_collection_path
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])

    if @collection.update(collection_params)
      redirect_to(collection_path(@collection))
    else
      redirect_to edit_collection_path(@collection)
    end
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
    redirect_to(collections_path)
  end

  def remove_recipe
    @collection = Collection.find(params[:id])
    @recipe = Recipe.find(params[:recipe_id])
    @collection.remove_recipe(@recipe)
    redirect_to collection_path(@collection)
  end

  private
  def collection_params
    params.require(:collection).permit(:name, :user_id)
  end

end
