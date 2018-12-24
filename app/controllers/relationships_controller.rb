class RelationshipsController < ApplicationController
  before_action :authenticate_user!
  respond_to? :js
  
  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    @user
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    @user
  end

  def index
    user = User.find(current_user.id)
    @relationshop_user = user.following.page(params[:page]).per(5)
  end

  def show
    @relationship_show = User.find(params[:id])
  end
end
