class CalculatorController < ApplicationController
  def index
    @bill_amount = params[:bill_amount].to_f
    @tip_percentage = params[:tip_percentage].to_f 
    @people_count = params[:people_count].to_i

    # Initialize error messages
    @bill_error_message = nil
    @tip_error_message = nil
    @count_error_message = nil

    # Validation checks
    @bill_error_message = "Bill amount cannot be negative." if @bill_amount.negative?
    @tip_error_message = "Tip percentage cannot be negative." if @tip_percentage.negative?
    @count_error_message = "Number of people must be greater than 0." if @people_count <= 0

    # If there are any errors, stop processing and return the index form
    if @bill_error_message || @tip_error_message || @count_error_message
      return render :index
    end

    #calculate if no errors
    @tip_amount = (@bill_amount * @tip_percentage) / 100
    @total_amount = @bill_amount + @tip_amount

    # calculations per person
    @tip_per_person = @tip_amount / @people_count
    @total_per_person = @total_amount / @people_count

    # Save calculation to database
    Calculation.create(
      bill_amount: @bill_amount,
      tip_percentage: @tip_percentage,
      tip_amount: @tip_amount,
      total_amount: @total_amount,
      people_count: @people_count,
      total_per_person: @total_per_person
    )
    
  end

  
end
