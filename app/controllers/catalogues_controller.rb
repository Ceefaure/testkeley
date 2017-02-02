class CataloguesController < ApplicationController
  def index
    @catalogues = Catalogue.all
    @meubles = Meuble.all
  end
end
