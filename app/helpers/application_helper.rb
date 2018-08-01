module ApplicationHelper
    def edit_user_link
      return nil unless _current_user.respond_to?(:email)
    end
end
