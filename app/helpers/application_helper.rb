module ApplicationHelper

  def sortable(title, column, direction)
    direction = sort_direction == "asc" ? "desc" : "asc"
  end
end
