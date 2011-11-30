module ApplicationHelper

 # tutorial: Listing 4.2
 # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if !@title.nil?
      "#{base_title} | #{@title}"
    end
  end

end
