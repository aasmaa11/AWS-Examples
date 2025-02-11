require 'opensearch-aws-sigv4'
require 'aws-sigv4'
require 'pry'

signer = Aws::Sigv4::Signer.new(
    service: 'es',
    region: 'ca-central-1',
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
)

client = OpenSearch::Aws::Sigv4Client.new({
    host: 'https://your.amz-managed-opensearch...',
    log:true
}, signer)

# create an index and document
index = 'prime'
client.indices.create(index: index)
client.index(
    index: index,
    id: '1', body: {
        name: 'Amazon Echo',
        msrp: '5999',
        year: 2011
    }
)

# search for the document
client.search(body: {
    query: {match: {name: 'Echo'}}
})

# delete the document
client.delete(index:index, id: '1')

# delete the index
results = client.indices.delete(index:index)
binding.pry