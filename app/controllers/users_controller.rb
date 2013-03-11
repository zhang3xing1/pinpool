class UsersController < ApplicationController
	before_filter :authenticate_user!
	def dashboard

  end

  def edit
  	@user = current_user
  end

  def registration_edit
  	render 'users/registrations/edit'
  end
  def registration_update
  	current_user.update_attributes(params_user)
  	render :text => current_user.name
  end

  private
  	def params_user
  		params[:user].slice(:name, :email)
  	end
end
