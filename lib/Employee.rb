class Employee
    attr_reader :name,:manager_name,:salary
    @@all = []
    def initialize(name,manager_name,salary)
        @name = name
        @manager_name = manager_name
        @salary = salary.to_i
        @@all <<self
    end
    def tax_bracket
        Employee.all.select{|ppl|ppl.salary <= (self.salary+1000) && ppl.salary >= (self.salary-1000)}
    end
    def self.paid_over(dollars)
        self.all.select{|ppl|ppl.salary>(dollars.to_i)}
    end
    #look through empoyees self.all
    #look at each person's manager and check to see ifit matches arg
    #when it does, it returns that person's name (or their obj?)
    def self.find_by_department(dept_str)
        temp_mgr = []
        Manager.all.find do |manager|
            if manager.department == dept_str
                temp_mgr << manager
            end
        end
        temp_mgr[0].employees[0]
    end
    def self.all
        @@all
    end
end
