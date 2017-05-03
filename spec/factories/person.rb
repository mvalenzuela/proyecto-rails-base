# This will guess the Person class
FactoryGirl.define do
  factory :person do
    first_name              "John"
    last_name               "Doe"
    email                   "john.doe@gmail.com"
    email_confirmation      "john.doe@gmail.com"
  end

  factory :professor, class: Person do
    first_name              "Ignacio"
    last_name               "Munizaga"
    email                   "imunizaga@miuandes.cl"
    email_confirmation      "imunizaga@miuandes.cl"
    is_professor            true
  end
end
