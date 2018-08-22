
# Dog.create(name: 'Killah', age: 2, breed: 'American Pitbull')
# Dog.create(name: 'Bullet', age: 5, breed: 'Belgium Malinois')
# Dog.create(name: 'Ras', age: 12, breed: 'Dolberman')
# Dog.create(name: 'Baby', age: 7, breed: 'Chiwuawa')
# Dog.create(name: 'Harry', age: 8, breed: 'Poodle')
# Dog.create(name: 'Boss', age: 16, breed: 'Bulldog Terrier')


# Owner.create(name: 'John Smith', email: 'john.smith@gmail.com', gender: 'male')
# Owner.create(name: 'Sarah Connor', email: 'sarahconnorh@gmail.com', gender: 'female')
# Owner.create(name: 'Michael Adams', email: 'madams@gmail.com', gender: 'male')
# Owner.create(name: 'George Lopez', email: 'george.lopez@gmail.com', gender: 'male')




# Dog.where('id > 23').destroy_all






# reset table => restart auto-increment

# Dog.destroy_all
# ActiveRecord::Base.connection.execute("TRUNCATE dogs RESTART IDENTITY")