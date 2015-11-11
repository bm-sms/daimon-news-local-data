class <%= singular_name.classify.pluralize %>Controller < ApplicationController
  def index
    @posts = DaimonNews::Post.all
  end

  def show
    @post = DaimonNews::Post.find(params[:id])
  end
end
