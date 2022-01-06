require 'ajax_error_render'

class UsersController < ApplicationController
  include AjaxErrorRender

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name])
    if @user.save
      redirect_to users_path
    else
      render_ajax_error(@user)
    end
  end
end
