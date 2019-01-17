class WelcomeController < ApplicationController
  def index
  end

  def index
    @subscriber = Subscriber.new
    @quotes = Quote.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "Saved Successfully!"
    else
      redirect_to rooth_path, notice: "Failed to save"
    end
  end

  def update
  end

  def destroy
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email)
  end
end
