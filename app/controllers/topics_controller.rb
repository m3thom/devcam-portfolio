class TopicsController < ApplicationController
  before_action :set_sidebar_action
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent
    else  
      @blogs =  @topic.blogs.recent.published
    end
  end

  private

  def set_sidebar_action
    @side_bar_topics = Topic.with_blogs
  end
end
