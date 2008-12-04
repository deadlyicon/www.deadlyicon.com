# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(page_title='')
    content_for(:title) { page_title.empty? ? '' : " | #{page_title}" } 
  end
  
  def rss(url)
    content_for(:rss) { rss_link_tag url }
  end
  
  def rss_link_tag(url)
    "<link rel=\"alternate\" type=\"application/rss+xml\" title=\"RSS feed\" href=\"#{url}\"></link>"
  end
  
end
