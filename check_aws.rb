require 'aws-sdk'

ENV['AWS_ACCESS_KEY_ID']     = 'test'
ENV['AWS_SECRET_ACCESS_KEY'] = 'test'
ENV['AWS_DEFAULT_REGION']    = 'us-east-1'

Aws.config.update(
  endpoint: 'http://localstack:4566'
)

s3 = Aws::S3::Client.new
puts JSON.pretty_generate(s3.list_buckets)
# {
#   "buckets": [
#     {
#       "name": "my-bucket",
#       "creation_date": "2023-05-05 21:24:44 UTC"
#     }
#   ],
#   "owner": {
#     "display_name": "webfile",
#     "id": "75aa57f09aa0c8caeab4f8c24e99d10f8e7faeebf76c078efc7c6caea54ba06a"
#   }
# }

sqs= Aws::SQS::Client.new
puts JSON.pretty_generate(sqs.list_queues)
