class BookCsController < ApplicationController
  before_action :set_book_c, only: %i[ show update destroy ]

  # GET /book_cs
  def index
    @book_cs = BookC.all

    render json: @book_cs
  end

  # GET /book_cs/1
  def show
    render json: @book_c
  end

  # POST /book_cs
  def create
    @book_c = BookC.new(book_c_params)

    if @book_c.save
      render json: @book_c, status: :created, location: @book_c
    else
      render json: @book_c.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /book_cs/1
  def update
    if @book_c.update(book_c_params)
      render json: @book_c
    else
      render json: @book_c.errors, status: :unprocessable_entity
    end
  end

  # DELETE /book_cs/1
  def destroy
    @book_c.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_c
      @book_c = BookC.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_c_params
      params.require(:book_c).permit(:name, :tittle, :author, :description, :price)
    end
end
