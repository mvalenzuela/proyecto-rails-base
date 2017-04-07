require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  it "Has as many student as it's quota" do
    teacher = Person.create(is_professor: true)
    course = Course.create(teacher: teacher, quota: 1)
    student1 = Person.create
    Enrollment.create(student: student1, course: course)
    expect(course.students.count).to eql course.quota
  end
end
