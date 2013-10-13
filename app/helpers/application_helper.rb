module ApplicationHelper

  def in_admin
    return "/admin" if request.fullpath == /\/admin.*/
    ""
  end

  def render_navigation options = nil
    @navgate.render_nav(params, options)
  end

end
