class UserController < ApplicationController
  def index
    render "/sessions/signuppage"
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(first_name: first_name, last_name: last_name, email: email, password: password)
    redirect_to "/"
  end
end
