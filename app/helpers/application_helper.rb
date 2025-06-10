module ApplicationHelper
  def full_title(title = "")
    title.blank? ? "TaskFlow" : "#{title} | TaskFlow"
  end
end
