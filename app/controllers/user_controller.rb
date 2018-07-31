class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create


   @user = User.new

    @user.username = params["user"]["username"]
    @user.email = params["user"]["email"]
    @user.bio = params["user"]["bio"]
    @user.save
    if @user.username.include?(" ")
      redirect_to "/user/error"
    else
      redirect_to "/"
    end
  end

  def error
  end

  def my
  end

end





    #user = User.new
    #user.username = params[:username]
    #user.email = params[:email]
    #user.bio = params[:bio]
    #user.save
    #redirect_to "/"
    #def create pour le
    #@user = User.new('username' => params[:username],
                  #  'email' => params[:email],
                  #  'bio'   => params[:bio]
                  #  )
    #if @user.save
     # redirect_to "/"
    #else
     # render 'new'
   # end


