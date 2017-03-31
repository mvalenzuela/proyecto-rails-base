json.extract! course, :id, :title, :code, :person_id, :created_at, :updated_at
json.url course_url(course, format: :json)
