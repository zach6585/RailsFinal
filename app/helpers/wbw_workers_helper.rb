module WbwWorkersHelper
    def logged_in?
        if session[:user_name]
            return true 
        else 
            return false 
        end 
    end 

    def current_user 
        WbwWorker.find_by(:name => session[:user_name], :email => session[:user_email])
    end 
end
