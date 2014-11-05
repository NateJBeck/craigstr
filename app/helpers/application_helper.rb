module ApplicationHelper
  def user_can_modify?(post)
     current_user == post.user || current_user.admin?
  end
end
