class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = DateTime.now.strftime('%I:%M %p')
    @date = DateTime.now.strftime('%d:%m %y')
    #@products = Product.all
    if session[:counter].nil?
      session[:counter]=1
    else
      session[:counter]+=1
    end
    @cnt = session[:counter]
  end
end
