class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = DateTime.now.strftime('%I:%M %p')
    @date = DateTime.now.strftime('%d:%m %y')
    #@products = Product.all
  end
end
