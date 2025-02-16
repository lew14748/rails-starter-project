class CategoriesController < ApplicationController
  def show
    @articles = Article.where(category: params[:id]).paginate(page: params[:page], per_page: 2)
    not_found if @articles.blank?
  end
end
