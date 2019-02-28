class User < ApplicationRecord
  def self.insert(hasher = {})
    user = hasher[:user]
    password = hasher[:password]
    name = hasher[:name]
    age = hasher[:age]
    job_title = hasher [:job_title]
    p "Name is #{name}"
    p "Age is #{age}"
    validate_user = /\A[a-z0-9_]{4,16}\z/.match(user)
    validate_pass = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/.match(password)
    newfun(hasher[:name],hasher[:age]).call
    if validate_user && validate_pass
      # User.create(username: user, password: password)
      newfun(hasher[:name],hasher[:age]).call
    else
      p "Username should be lowercase with atleast one number \n Password should be 8-16 characters with characters and numbers"
    end
  end

  def self.newfun(name,age)
    p "Name is #{name}"
    p "Age is #{age}"
    job_title = hash[:job_title]
    hashvalue = { Level1: ['Junior_Developer','Senior Developer'], Level2: ['Project_Lead','Technical_Lead'], Level3: ['CEO','COO'] }
    hashvalue.each do |key, values|
      values.each do |value|
        if job_title.include?(value)
         User.create(username: user,password: password,name: name,age: age,job_title: job_title)
        end
      end
    end
  end
end
