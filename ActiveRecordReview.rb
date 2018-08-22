





# reset table =>> and restart auto-increment

Model.destroy_all # Only necessary if you want to trigger callbacks.
ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY")






#############  >>>   review ActiveRecord associations   <<<


# one to one association

class Supplier < ApplicationRecord
    has_one :account
end
  
class Account < ApplicationRecord
    belongs_to :supplier
end




# one to many association

class Mother < ApplicationRecord
    has_many :children
end
  
  class Child < ApplicationRecord
    belongs_to :mother
end




# many to many

class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
end
  
class Appointment < ApplicationRecord
    belongs_to :physician
    belongs_to :patient
end
  
class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians, through: :appointments
end





#Resources
# Why we cant use PUT/PATCH/DELETE in forms https://stackoverflow.com/questions/16805956/why-dont-browsers-support-put-and-delete-requests-and-when-will-they
# PUT vs PATCH https://medium.com/backticks-tildes/restful-api-design-put-vs-patch-4a061aa3ed0b
# PUT -> Replace whole record
# PATCH -> Update parts of the record