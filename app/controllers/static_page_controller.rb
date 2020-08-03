class StaticPageController < ApplicationController
  def home
    @hot_stories = Story.order("views DESC").limit(6)
    @stories = Story.search(params[:term]).paginate(page: params[:page])
  end
end
