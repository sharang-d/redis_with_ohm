class UsersController < ApplicationController
  
  def new
  end

  def create
    @user = User.create(:name => params[:user][:name],
                        :email => params[:user][:email],
                        :age => params[:user][:age])
    redirect_to users_path
  end

  def index
    @users = User.all
  end
  
  def destroy
    User[params[:id]].delete
    redirect_to :back
  end

  def edit
    @user = User[params[:id]]
  end

  def update
=begin
    status = User[params[:id]].update_attributes(name: params[:user][:name],
                                                 email: params[:user][:email],
                                                 age: params[:user][:age])
    if status
      redirect_to users_path
    else
      render "edit"
    end
=end

    @user = User[params[:id]]
    @user.name = params[:user][:name]
    @user.email = params[:user][:name]
    @user.age = params[:user][:age]
    if @user.save
      redirect_to users_path
    else
      render "edit"
    end

  end

end