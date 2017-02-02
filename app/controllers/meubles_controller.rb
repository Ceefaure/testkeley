class MeublesController < ApplicationController
  before_action :set_catalogue

  def index
    @meubles = Meuble.all
  end

  def new
    @meuble = Meuble.new
  end

  def create
    @meuble = Meuble.new(meuble_params)
    @meuble.save
    if @meuble.save
      redirect_to catalogue_meubles_path
    else
      render :new
    end
  end

  def edit
    set_meuble
  end

  def update
    set_meuble
    @meuble.update(meuble_params)
    redirect_to catalogue_meubles_path
  end

  def destroy
    set_meuble
    @meuble.destroy
    redirect_to catalogue_meubles_path
  end

  private
  def set_catalogue
    @catalogue = Catalogue.find(params[:catalogue_id])
  end

  def set_meuble
    @meuble = Meuble.find(params[:id])
  end

  def meuble_params
    params.require(:meuble).permit(:nom, :code, :description, :tarif, :poids)
  end
end
