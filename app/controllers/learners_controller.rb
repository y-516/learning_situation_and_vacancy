class LearnersController < ApplicationController
  def index
    @learner_all = User.where.not(id: current_user.id).where(position: 0).page(params[:page]).per(10)
    @current_user = User.find(current_user.id)
  end

  def show
    @learner_show = User.find(params[:id])
  end
end
