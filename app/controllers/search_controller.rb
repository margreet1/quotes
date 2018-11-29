class SearchController < ApplicationController
  def search
    @search = Search.all
  end
end
