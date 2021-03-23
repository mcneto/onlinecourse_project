json.extract! course, :id, :user_id, :course_name, :created_at, :updated_at
json.url course_url(course, format: :json)
