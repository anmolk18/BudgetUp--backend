class Api::V1::ExpensesController < ApplicationController

    def index 
        expenses = Expense.all 
        render json: expenses
    end

    def show 
        expense = Expense.find(params[:id])
        render json: expense
    end

    def create 
        expense = Expense.create(expense_params)
        render json: expense
    end

    def update 
        expense = Expense.find(params[:id])
        expense.update(expense_params)
        render json: expense
    end

    def destroy 
        expense = Expense.find(params[:id])
        expense.destroy
        render json: "Expense deleted!"
    end

    private

    def expense_params 
        params.require(:expense).permit(:user_id, :name, :value)
    end

end
