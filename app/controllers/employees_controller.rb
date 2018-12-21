class EmployeesController < ApplicationController

  def index
    @employees = Employee.all.sort_by {|e| e.last_name}
  end


  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @dogs = Dog.all
    @employee = Employee.create(employee_params)
    if @employee.valid?
      redirect_to @employee
    else
      @errors = @employee.errors.full_messages
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end
end
