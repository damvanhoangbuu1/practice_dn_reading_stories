module ApplicationHelper
    def full_title page_title
      base_title = "Truyen full"
      page_title.blank? ? base_title : "#{page_title} | #{base_title}"
    end
  
    def categories
      Category.all
    end
  end
  
