require 'aws-sdk-textract'
require 'pry'

client = Aws::Textract::Client.new region: 'ca-central-1'
bucket = "textract-example-124"
name = "tax-doc.png"


resp = client.analyze_document({
    document: {
        s3_object: {
            bucket: bucket,
            name: name,
            #version: "S3ObjectVersion"
        }
    },
    feature_types: ["TABLES"],
})

binding.pry