class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.paginate(page: params[:page])
    end

    def show
        @portfolio = Portfolio.find_by(id: params[:id])
    end

    def edit
        @portfolio = Portfolio.find_by(id: params[:id]) 
    end

    def update
        @portfolio = Portfolio.find_by(id: params[:id])  
        if @portfolio.update_attributes(portfolio_params)
            flash[:succes] = "Update success!"
            render 'show'
        else
            render 'edit'
        end
    end

    def new
    end

    def create
    end

    def destroy
    end


    private
    
        def portfolio_params
            params.require(:portfolio).permit(:project_name, :whens, :description)
        end

end
