class StaffController < ApplicationController
  
   def show
    @staff = Staff.find(params[:id])
  end
  
  def new
    @title = "Register for staff"
  end
end
