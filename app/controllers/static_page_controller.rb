class StaticPageController < ApplicationController
  def home
    @hot_stories = Story.order_by_views.limit(6)
    @stories = Story.search_by_name_or_author(params[:term]).paginate(page: params[:page])
  end
end
