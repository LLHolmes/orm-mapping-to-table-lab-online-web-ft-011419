class Student

  # Remember, you can access your database connection anywhere in this class with DB[:conn]
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    table = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
      );
    SQL
  end

  def self.drop_table
  end
  
  def save
  end
  
  def self.create
  end

end
