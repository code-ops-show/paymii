module ApplicationHelper
  def nav_link name, path='#'
    render 'nav_link', name: name, path: path, active: nav_active?(path)
  end

  def link_with_icon name, path, icon_name
    render 'link_with_icon', name: name, path: path, icon_name: icon_name
  end

  def nav_active? path
    request.path == path ? 'active' : nil
  end
end