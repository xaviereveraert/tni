class EmployeesController < ApplicationController


  def index #all employees
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to employee_path(@employee)

  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  def sales
    @employees = Employee.where(role: 'sales')
  end


  def marketing
    @employees = Employee.where(role: 'marketing')
  end
private

def employee_params
  params.require(:employee).permit(:name, :role)
end

end

