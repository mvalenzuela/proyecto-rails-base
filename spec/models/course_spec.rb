require 'rails_helper'

RSpec.describe Course, type: :model do
  it "has a professor as a teacher" do
    teacher = Person.create(is_professor: true)
    course = Course.create(teacher: teacher)
    expect(course.teacher.is_professor).to eq true
  end
end
