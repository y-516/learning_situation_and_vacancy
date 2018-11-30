class ReadersController < ApplicationController
  def index
    @reader_all = User.where(position:1).page(params[:page]).per(5)
  end

  def show
    @reader_show=User.find(params[:id])
  end
end
