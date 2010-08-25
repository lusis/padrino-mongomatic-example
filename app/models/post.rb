class Post < Mongomatic::Base
  include Mongomatic::Expectations::Helper

  # Mongomatic does not have the traditional
  # model definition that AR/MM/DM et. al. have.
  # Staying true to the "ad-hoc" nature of MongoDB,
  # there are no explicit column definitions in the
  # model file.
 
  # However you can "fake it" by making a column
  # required using expectations
  # For the sake of padrino g model,
  # we'll assume that any property defined
  # on the command-line is required
  # In the case of Integer types, we'll add
  # the expectation: be_a_number
  # Future enhancement may allow a regex for
  # String datatypes
 

  # Examples
  # def validate
  #   expectations do
  #     be_present self['name'], "Name cannot be blank"
  #     be_present self['email'], "Email cannot be blank"
  #     be_present self['age'], "Age cannot be blank"
  #     be_present self['password'], "Password cannot be blank"
  #     be_a_number self['age'], "Age must be a number"
  #     be_of_length self['password'], "Password must be at least 8 characters", :minimum => 8
  #   end
  # end

  # def create_indexes
  #   self.collection.create_index('name', :unique => true)
  #   self.collection.create_index('email', :unique => true)
  #   self.collection.create_index('age')
  # end
  def validate
    expectations do
      be_present self['name'], 'name cannot be blank'
      be_present self['body'], 'body cannot be blank'
      
    end
  end

end
