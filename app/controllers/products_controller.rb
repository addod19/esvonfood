class ProductsController < ApplicationController
  def index
  end
  def create
    @product = Product.create!
    if @product
      p "Prpduct added successful"
    else
      p "KIndly check the error message"
    end
  end

  def new
  end

  def show
  end

  def update
  end

  def destroy
  end
end
