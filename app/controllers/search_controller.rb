class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"

    @products = Product.where("nombre LIKE ? OR descripcion LIKE ? OR marca LIKE ? OR categoria LIKE ?", palabra, palabra, palabra, palabra)

    respond_to do |format|
      format.html {redirect_to root_path}
      format.json { render json: @products }
      format.js
    end

  end
end
