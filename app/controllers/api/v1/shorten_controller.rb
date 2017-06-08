class Api::V1::ShortenController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :new_params, only: [:create]
  before_action :find_url, only: [:show]

  def show
    @url.update_attributes views: @url.views + 1
    redirect_to @url.origin
  end

  def create
    user_signed_in? ? data = new_params.merge(user_id: current_user.id) : data = new_params
    @url = Url.new data
    if @url.save
      @url.update_attributes alias: encode(@url.id)
    else
      render status: 500
    end
  end
  
  private
  def new_params
    params.require(:url).permit :origin, :user_id
  end

  def find_url
    @url = Url.find_by alias: params[:alias]
    unless @url
      redirect_to root_path
    end
  end
end
