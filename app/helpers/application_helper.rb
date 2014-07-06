module ApplicationHelper
  def nav_link name, path='#'
  	content_tag :li, class: nav_active?(path) do 
  		link_to name, path
  	end
  end

  def nav_fuzzy_link name, path='#'
    content_tag :li, class: nav_fuzzy_active?(path) do 
      link_to name, path
    end
  end

  def link_with_icon name, path, icon_name, options={}
  	link_to path, options do 
  		icon(icon_name) + " #{name}"
  	end
  end

  def nav_active? path
    request.path == path ? 'active' : nil
  end

  def nav_fuzzy_active? path
    request.path.include?(path) ? 'active' : nil
  end

  def display label, value
    render 'display', label: label, value: value
  end

  def field label, field
    render 'field', label: label, field: field
  end
end


