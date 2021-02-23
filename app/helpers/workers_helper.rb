module WorkersHelper
    
    def logged_in?
        return !!session[:user_name] && !!session[:user_email]
    end 

    def current_user 
        Worker.find_by(:name => session[:user_name], :email => session[:user_email])
    end 
end
