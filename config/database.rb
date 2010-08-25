
case Padrino.env
  when :development then Mongomatic.db = Mongo::Connection.new.db("pblog_development")
  when :production then Mongomatic.db = Mongo::Connection.new.db("pblog_production")
  when :test then Mongomatic.db = Mongo::Connection.new.db("pblog_test")
end
