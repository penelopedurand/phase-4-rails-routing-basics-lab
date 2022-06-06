class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        grades = students.order(:grade).reverse
        render json: grades
    end
end


# Bonus: Highest Grade Route
# Un-comment out the last test in /spec/requests/students_spec.rb to complete the bonus.

# Create a route for making a GET request to /students/highest-grade
# Add a highest_grade action in the StudentsController for handling that route
# In the highest_grade action, return JSON data representing the one student with the highest grade
# Note: while the other two routes should return an array of data, this route should return just one student object!