class StaffController < ApplicationController
  
  def index
    
  end
  
  def show
    @staff = Staff.find(params[:id])
    @title = @staff.name
  end
  
  def new
    @title = "Register for staff"
  end
end
