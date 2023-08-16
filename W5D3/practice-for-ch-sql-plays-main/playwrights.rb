require_relative'play_db_connection'
require_relative 'plays'

class PlayWright

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    data.map { |datum| PlayWright.new(datum) }
  end

  def self.find_by_name(name)
    data = PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT
        *
      FROM
        playwrights
      WHERE
        name = ?
    SQL
    data.map {|rec| PlayWright.new(rec)}
  end

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @birth_year = options['birth_year']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
      INSERT INTO
        playwrights (name, birth_year)
      VALUES
        (?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year, self.id)
      UPDATE
        playwrights
      SET
        name = ?, birth_year = ?
      WHERE
        id = ?
    SQL
  end

  def get_plays
    author_id = PlayDBConnection.instance.execute(<<-SQL, @name) 
      SELECT
        id
      FROM
        playwrights
      WHERE
        name = ?
    SQL

    Play.find_by_playwright(author_id)
  end
end


playwright_inst = PlayWright.new({'id' => 1, 'name' => 'Arthur Miller', 'birth_year' => 1915})
playwright_inst.get_plays