class <%= class_name %>Controller < ApplicationController
  def index
    @posts = DaimonNews::Post.all
  end

  def show
    @post = DaimonNews::Post.find(params[:id])
  end
end
