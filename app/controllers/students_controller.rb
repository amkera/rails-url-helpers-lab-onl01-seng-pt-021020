class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    #find the student
    @student.active = !@student.active 
    #set the student's activate status to true since their status is false right now 
    @student.save
    redirect_to student_path(@student)
  end
end