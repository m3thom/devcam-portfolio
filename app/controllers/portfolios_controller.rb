class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

layout "portfolio"
access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end
  def angular
    @portfolio_angular_items = Portfolio.angular
  end
  def new
    @portfolio_item = Portfolio.new
  end
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
  end
 
  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    #look up

    #destroy/delete the record
    @portfolio_item.destroy

    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Port was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(
      :title, technologies_attributes: 
      [:name, :id, :_destroy]
      )
  end
end
