class StaffController < ApplicationController
  
  def index
    
  end
  
  def show
    @staff = Staff.find(params[:id])
    @title = @staff.name
  end
  
  def new
    @staff = Staff.new
    @title = "Register for staff"
  end
  
  def create
    @staff = Staff.new(params[:staff])
    if @staff.save
      flash[:success] = "Success!"
      redirect_to @staff
    else
      @title = "Register for staff"
      render 'new'
    end
  end
end
