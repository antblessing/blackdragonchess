class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new

    @instructor.first_name = params[:instructor][:first_name]
    @instructor.last_name = params[:instructor][:last_name]
    @instructor.email = params[:instructor][:email]

    if @instructor.save
      flash[:notice] = "#{@instructor.first_name} was added as an instructor."
      redirect_to @instructor
    else
      flash.now[:error] = "There was a problem adding instructor."
      render :new
    end
  end

  def index
    @instructors = Instructor.all
  end

  def destroy
    @instructor = Instructor.find(params[:id])

    if @instructor.destroy
      flash[:notice] = "#{@instructor.first_name} has been removed."
      redirect_to instructors_path
    else
      flash.now[:error] = "Error removing #{@instructor.first_name}."
      render :show
    end
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])

    @instructor.first_name = params[:instructor][:first_name]
    @instructor.last_name = params[:instructor][:last_name]
    @instructor.email = params[:instructor][:email]

    if @instructor.save
      flash[:notice] = "Instructor info was updated."
      redirect_to @instructor
    else
      flash.now[:error] = "Error updating info."
      render :edit
    end
  end
end
