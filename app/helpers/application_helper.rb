module ApplicationHelper
  #Return a Title on a per-page basis.
  def title
    base_title = "My IvidIty site"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "IvidIty", :class => "round")
  end
end
