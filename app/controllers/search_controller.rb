class SearchController < ApplicationController
  def create
    date_start = "#{params[:date_start]}"
    date_end = "#{params[:date_end]}"

    #@products = Product.where("nombre LIKE ? OR descripcion LIKE ? OR marca LIKE ? OR categoria LIKE ?", palabra, palabra, palabra, palabra)
    @products = Product.where("created_at BETWEEN ? AND ?",date_start, date_end)
    #@products = Product.where(:created_at => date_start..date_end)
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json { render json: @products }
      format.js
    end

  end
end
