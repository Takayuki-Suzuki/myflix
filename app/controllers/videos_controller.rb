class VideosController < ApplicationController
  before_action :require_user

  def index
    @categories = Category.all
  end

  def search
    @result = Video.search_by_title(params[:search_term])
  end
end