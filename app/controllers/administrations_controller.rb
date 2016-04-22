class AdministrationsController < ApplicationController
  def index
  end

  def new
    @administration = Administration.new
  end

  def create
    @administration = Administration.new(params_administration)
    if @administration.save
      redirect_to administrations_path
    else
      render "new"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def seed
    @admin = Administration.new
    @admin.username = "Ali"
    @admin.password = "Ali"
    @admin.email = "Ali"
    @admin.role = "Ali"
    @admin.cawangan_id = 2
    @admin.save
    redirect_to administrations_path
  end

  private
  def params_administration
    params.require(:administration).permit(:username, :password, :email, :role, :cawangan_id)    
  end
end
