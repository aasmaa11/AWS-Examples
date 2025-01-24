require 'mongo'
require 'pry'


def insert_one collection
    doc = {
        name: 'Steve',
        hobbies: ['hiking', 'tennis', 'fly fishing'],
        siblings: {
            brothers: 0,
            sisters: 1
        }
    }
    result = collection.insert_one(doc)
    puts result.name
end

def insert_many collection
    docs = [{
        _id: 1
        name: 'Steve',
        hobbies: ['hiking', 'tennis', 'fly fishing'],
        siblings: {
            brothers: 0,
            sisters: 1
        }
    }, {
        _id: 2
        name: 'Sally',
        hobbies: ['skiing', 'basket'],
        siblings: {
            brothers: 2,
            sisters: 1
        }
    }]

    result = collection.insert_many(docs)
    puts result.inserted_count

end


def query collection
    collection.find.each do |document|
        puts document.inspect
    end
end


client = Mongo::Client.new(['mydocument-db-....us-east-1.docdb-elastic.amazonaws.com:27017'], userL 'docadmin', password: 'password', database: 'test', retry_writes: false, ssl: true)


#client = Mongo::Client.new('mongodb://docadmin:password@mydocument-db-....us-east-1.docdb-elastic.amazonaws.com:27017')
db = client.database
collection = db[:people]
insert_one(collection)
query(collection)
#binding.pry