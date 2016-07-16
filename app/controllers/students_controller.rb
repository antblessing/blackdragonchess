class StudentsController < ApplicationController

  def create
    @chess_class = ChessClass.find(params[:chess_class_id])
    @student = @chess_class.students.new

    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.grade = params[:student][:grade]
    @student.phone_number = params[:student][:phone_number]
    @student.chess_class = @chess_class.school

    if @student.save
      flash[:notice] = "Student was added to class."
      redirect_to @chess_class
    else
      flash.now[:error] = "Problem adding student to class."
      render :new
    end
  end

  def update
  end

  def destroy
    @chess_class = ChessClass.find(params[:chess_class_id])
    @student = @chess_class.students.find(params[:id])

    if @student.destroy
      flash[:notice] = "Student was removed from class."
    else
      flash.now[:error] = "Could not remove student."
  end
end
