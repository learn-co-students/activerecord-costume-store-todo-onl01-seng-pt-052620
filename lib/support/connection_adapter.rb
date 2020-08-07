class ConnectionAdapter
  attr_reader :adapter, :database

  def initialize(database, adapter="sqlite3")
    @adapter = adapter
    @database = database
  end

  #Note 
  #If you want to use MySQL or PostGRES in Production all you need to do is change the "adapter setting"
  #This will make all of your migrations that you write be translated to work with the new DB Engine 

  def connect!
    ActiveRecord::Base.establish_connection(
      :adapter => self.adapter,
      :database => self.database
    )
  end
end