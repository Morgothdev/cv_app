class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.paginate(page: params[:page])
    end
end
