require 'pg'

task 'check_db_connection' do
  begin
    # Database connection details (replace with your actual values)
    host = ENV['PGHOST'] || 'localhost'
    port = ENV['PGPORT'] || 5432
    username = ENV['PGUSER']
    password = ENV['BLOG_DATABASE_PASSWORD']
    database = ENV['PGDATABASE']

    # Connect to the database
    connection = PG::Connection.new(host: host, port: port, user: username, password: password, dbname: database)

    # Check if connection is active
    if connection.status == PG::CONNECTION_OK
      puts "Connection to PostgreSQL database established successfully!"
    else
      puts "Connection to PostgreSQL database failed. Status: #{connection.status}"
    end

    # Close the connection (optional, but good practice)
    connection.close
  rescue PG::Error => e
    puts "Error connecting to PostgreSQL database: #{e.message}"
  end
end