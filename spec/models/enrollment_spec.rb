require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  it "Has as many student as it's quota" do
    teacher = create(:professor)
    course = build(:course)
    course.teacher = teacher
    course.save!
    student = create(:person)
    e = Enrollment.create(student: student, course: course)
    e = Enrollment.find(e.id)
    puts 'valid': e.valid?
    puts e.course, e.student
    expect(course.students.count).to eql course.quota
  end
end
