class UsersController < ApplicationController

  def create
    # user = User.new(user_params)
    user = User.new
    user.name = params[:username]
    user.email = params[:useremail]
    user.phone = params[:userphone]
    user.messag = params[:usermessag]
    # user.save

    respond_to do |format|
      if user.save
        UserMailer.new_user(user).deliver
        format.html { redirect_to :back }
      else
        format.html { redirect_to root_path }
      end
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :useremail, :userphone, :usermessag)
    end

end
