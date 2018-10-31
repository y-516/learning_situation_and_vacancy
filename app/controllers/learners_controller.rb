class LearnersController < ApplicationController
  def index
    @learner_all=User.where(position:0)
  end

  def show
    @learner_show=User.find(params[:id])
  end
end
