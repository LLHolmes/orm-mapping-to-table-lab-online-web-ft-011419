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
      )
    SQL
    DB[:conn].execute(table)
  end

  def self.drop_table
    DB[:conn].execute("DROP TABLE students")
  end
  
  def save
    insert = <<-SQL
    INSERT
    SQL
    DB[:conn].execute()
  end
  
  def self.create
  end

end
