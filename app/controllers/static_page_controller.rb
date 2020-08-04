class StaticPageController < ApplicationController
  def home
    @hot_stories = Story.order("views DESC").limit(6)
    @stories = Story.order("created_at DESC").paginate(page: params[:page])
  end
end
