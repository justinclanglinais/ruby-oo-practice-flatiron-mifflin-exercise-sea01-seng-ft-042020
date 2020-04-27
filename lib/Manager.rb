class Manager
    attr_reader :name,:department,:age
    @@all = []
    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age.to_i
        @@all << self
    end
    def employees
        Employee.all.select{|ppl|ppl.manager_name==self.name}
    end
    def hire_employee(name,salary)
        Employee.new(name,self.name,salary)
    end
    def self.all_departments
        Manager.all.map{|ppl|ppl.department}
    end
    def self.average_age
        self.all.map{|ppl|ppl.age}.inject{|sum,age|sum + age}.to_f/(self.all.count)
    end
    def self.all
        @@all
    end
end
