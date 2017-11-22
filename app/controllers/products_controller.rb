class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def report

    @date_start = "#{params[:date_start]}"
    @date_end = "#{params[:date_end]}"

    #@products = Product.where("nombre LIKE ? OR descripcion LIKE ? OR marca LIKE ? OR categoria LIKE ?", palabra, palabra, palabra, palabra)
    if @date_start and @date_end
      @products = Product.where("created_at BETWEEN ? AND ?",@date_start, @date_end)
    else
      @products = Product.all
    end

    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'products/informe', pdf: "Informe"  }
      format.csv {render text: @product.to_csv }
      format.xls #{send_data @products.to_csv(col_sep: "\t")}
    end
  end

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:nombre, :descripcion, :marca, :categoria, :cantidad, :precio)
    end
end
