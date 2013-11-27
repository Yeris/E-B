module SessionsHelper
 def sign_in(user) 
 if !session[:remember_token].nil? then self.current_user = User.find(session[:remember_token])   
else  self.current_user = user 
end
  end
  
  def current_user=(user)
    @current_user = user
    session[:remember_token] = user.id
  end
  
   def current_user    
    @current_user 
  end
  
   def signed_in?    
    !current_user.nil?
  end
  
   def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
