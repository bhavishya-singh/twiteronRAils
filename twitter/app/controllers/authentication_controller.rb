class AuthenticationController < ApplicationController
  
  def signin_get
  end

  def signup_get
  end

  def signin
  	email = params[:email]
  	password = params[:password]
  	user = User.find_by_email(email)
  	if user
  		if user.password == password
  			session[:user_id] = user.id
  			return redirect_to '/'
  		else
  			return redirect_to '/signin'
  		end
  	else
  		return redirect_to '/signup'
  	end
  end

  def signup
  	namex = params[:name]
  	email = params[:email]
  	password = params[:password]
  	user = User.find_by_email(email)
  	if user
  		redirect_to '/signup'
  	else
  		user = User.create(:name => namex,:email => email, :password =>password)
  		session[:user_id] = user.id
  		return redirect_to '/'
  	end
  end
  def logout
  	session[:user_id] = nil
  	return redirect_to '/'
  end

end
