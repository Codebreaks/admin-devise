module SessionsHelper
    # Logs in the given user.
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def the_current_user
        @the_current_user ||= User.find_by(id: session[:user_id])
    end
    
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !the_current_user.nil?
    end
    
    def logged_in_as_admin?
        
    end
    # logged in as admin or general student.
    # def logged_in_as
    #     session[:]
    # end
    
    # Logs out the current user.
    def log_out
        session.delete(:user_id)
        @the_current_user = nil
    end
end

