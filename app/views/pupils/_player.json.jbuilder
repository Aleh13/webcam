
json.extract! pupil, :id, :klass, :name, :food, :presence,
                                 :created_at, :updated_at

json.url pupil_url(pupil, format: :json)