# frozen_string_literal: true

class UsersController < ApplicationController
  # GET /users or /users.json
  # Do not need an index

  # GET /users/1 or /users/1.json
  def show
    @user = current_user
  end

  # GET /users/new
  def new; end

  # GET /users/1/edit

  # POST /users or /users.json
  def create
    user = user_params
    new_user = User.new(user)
    if new_user.save
      # flash[:success] = "Successfully created account!"
      session[:user_id] = new_user.id
      redirect_to user_dashboard_path(new_user.id), notice: 'Successfully created account!'
    elsif user[:password] != user[:password_confirmation]
      redirect_to registration_path, alert: 'Passwords do not match.'
      # If the user
    elsif User.exists?(username: new_user.username)
      redirect_to registration_path, alert: 'Username taken.'
    else
      # flash[:error] = "Unable to register, please try again."
      redirect_to registration_path, alert: 'Unable to register, please try again.'
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy; end

  private

  # def existing_user
  #   User.where(new_user[:username] == user[:username])
  # end

  # Only allow a list of trusted parameters through.
  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
