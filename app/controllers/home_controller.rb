class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    results = Product.search(search_params[:q], search_params)
    @search_products = results.map do |r|
    r.merge(r.delete(‘_source’)).merge(‘id’: r.delete(‘_id’))
    end
    render json: { locations: locations }, status: :ok
  end

  private
  def search_params
    params.permit(:q, :category)
  end

end
