class IconistHookListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context)
    css  = stylesheet_link_tag 'issue_icon', :plugin => :iconist
    css += stylesheet_link_tag 'bootstrap-select.min', :plugin => :iconist
    css += stylesheet_link_tag 'fontawesome-iconpicker.min', :plugin => :iconist
#    css += stylesheet_link_tag 'bootstrap.min', :plugin => :iconist
    js   = javascript_include_tag 'bootstrap-select.min', :plugin => :iconist
    js  += javascript_include_tag 'fontawesome-iconpicker', :plugin => :iconist
    css + js
  end
  def view_projects_show_left(context = {})
    return content_tag("p", "Custom content added to the left")
  end
  def view_projects_show_right(context = {})
    return content_tag("p", "Custom content added to the right")
  end
end
