class QuotesController < ApplicationController
  def index
    @quote = Quote.all
    @quotes = Quote.where("quote LIKE ?", "%#{params[:quote]}%")
  end

  def show
    @quotes = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def edit
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.save
    redirect_to @quote
  end

  def update
  end

  def destroy
  end

  private
  def quote_params
    params.require(:quote).permit(:quote, :link, :author, :title)
  end
end

#   def quote
#     @quotes = Quote.all
#   end

#   def link
#     @link = Quote.all


#   def import
#     Quote.import(params[:file])
#     redirect_to root_url, notice: "Activity Data imported!"
#   end
# end
