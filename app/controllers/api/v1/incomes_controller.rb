class Api::V1::IncomesController < ApplicationController

    def index 
        incomes = Income.all 
        render json: incomes
    end

    def show 
        income = Income.find(params[:id])
        render json: income
    end

    def create 
        income = Income.create(income_params)
        render json: income
    end

    def update 
        income = Income.find(params[:id])
        income.update(income_params)
        render json: income
    end

    def destroy 
        income = Income.find(params[:id])
        income.destroy
        render json: "Income deleted!"
    end

    private

    def income_params 
        params.require(:income).permit(:user_id, :name, :value)
    end

end
