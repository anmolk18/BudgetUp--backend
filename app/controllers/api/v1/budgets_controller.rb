class Api::V1::BudgetsController < ApplicationController

    def index 
        budgets = Budget.all 
        render json: budgets
    end

    def show 
        budget = Budget.find(params[:id])
        render json: budget
    end

    def create 
        budget = Budget.create(budget_params)
        render json: budget
    end

    def update 
        budget = Budget.find(params[:id])
        budget.update(budget_params)
        render json: budget
    end

    def destroy 
        budget = Budget.find(params[:id])
        budget.destroy
        render json: "Budget deleted!"
    end

    private

    def budget_params 
        params.require(:budget).permit(:user_id, :name, :value)
    end

end
