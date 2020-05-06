class Pokemon

attr_accessor :id, :name, :type, :db

def initialize(id:, name:, type:, db:)
  @id = id
  @name = name
  @type = type
  @db = db
end

def self.save
sql = <<-SQL
SQL
DB[:conn].execute(sql,"INSERT INTO pokemon(self.name, self.id, self.type, self.db) VALUES(?,?,?,?)")
end

end
