class PagesController < ApplicationController
  # before_action :find_user, only: [:admin_checkups]
  # before_action :find_checkup, only: [:show, :edit, :update, :destroy]


  def welcome
  end

  def home
  end

  def all_profiles
    @users = User.all
  end

  def admin_checkups
    # @user = User.find(params[:user])
  end




end
