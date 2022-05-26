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
    user[:username] = user[:username].downcase
    new_user = User.new(user)
    if new_user.save
      # flash[:success] = "Successfully created account!"
      session[:user_id] = new_user.id
      redirect_to user_dashboard_path(new_user.id), notice: "Successfully created account!"
    elsif user[:password] != user[:password_confirmation]
      # flash[:error] = "Passwords do not match, please try again."
      redirect_to registration_path, alert: "Passwords do not match."
    else
      # flash[:error] = "Unable to register, please try again."
      redirect_to root_path, alert: "Unable to register, please try again."
    end    
  end

  # PATCH/PUT /users/1 or /users/1.json

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :password, :password_confirmation)
    end
end
