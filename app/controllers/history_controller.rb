class HistoryController < ApplicationController
  before_action :authenticate_user!

  def index
    @urls = current_user.urls.order(id: :desc).page params[:page]
  end
end
