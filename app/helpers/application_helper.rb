module ApplicationHelper
  
  def title(*params)
    unless params.empty?
      content_for :title do
        (params << "Ticketee").join(" - ") unless params.empty?
      end
    end
  end
end
