json.extract! student, :id, :studentId, :name, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
