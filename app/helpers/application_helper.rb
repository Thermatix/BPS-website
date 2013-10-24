module ApplicationHelper

  def in_admin
    return "/admin" if request.fullpath == /\/admin.*/
    ""
  end


end
