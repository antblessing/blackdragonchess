class ClassInstructorsController < ApplicationController
  before_action :set_chess_class

  def create
    @class_instructor = @chess_class.class_instructors.new(instructor_id: params[:instructor_id])

    if @class_instructor.save
      flash[:notice] = "Intructor was added to class."
      redirect_to chess_class_class_instructors_path
    else
      flash.now[:error] = "Error adding instructor to class."
      render chess_class_class_instructors_path
    end
  end


  def destroy
    @class_instructor = @chess_class.class_instructors.find_by(instructor_id: params[:id])

    if @class_instructor.destroy
      flash[:notice] = "Instructor was successfully removed."
      redirect_to chess_class_class_instructors_path
    else
      flash.now[:error] = "Error removing instructor."
      render chess_class_class_instructors_path
    end
  end

  def index
    if current_user.admin?
      @instructors = Instructor.all
    else
      redirect_to chess_classes_path
    end
  end

  def set_chess_class
    @chess_class = ChessClass.find(params[:chess_class_id])
  end
end
