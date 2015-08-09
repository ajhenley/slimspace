class StaticPageController < ApplicationController
  
  def contact
  end
  
  def about
    @spaces=Space.take(3)
  end
  
end
