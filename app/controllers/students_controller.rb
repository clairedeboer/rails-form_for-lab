class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create (
      {
        first_name: params[:first_name], 
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @students = Students.find(params[:id])
  end

  def update
    @students = Student.find(params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end
end
