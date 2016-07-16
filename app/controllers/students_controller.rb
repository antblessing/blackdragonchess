class StudentsController < ApplicationController

  def create
    @chess_class = ChessClass.find(params[:chess_class_id])
    @student = @chess_class.students.new

    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.grade = params[:student][:grade]
    @student.phone_number = params[:student][:phone_number]

    if @student.save
      @chess_class.size += 1
      @chess_class.save
      flash[:notice] = "Student was added to class."
      redirect_to @chess_class
    else
      flash[:error] = "Problem adding student to class. Please make sure all fields are complete."
      render "chess_classes/show"
    end
  end

  def update
  end

  def destroy
    @chess_class = ChessClass.find(params[:chess_class_id])
    @student = @chess_class.students.find(params[:id])

    if @student.destroy
      flash[:notice] = "Student was removed from class."
      redirect_to @chess_class
    else
      flash[:error] = "Could not remove student."
      redirect_to @chess_class
    end
  end
end
