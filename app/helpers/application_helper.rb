module ApplicationHelper
  def title(page_title)
    @content_for_title = page_title.to_s
  end
  
  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-error"
    end
  end
end
