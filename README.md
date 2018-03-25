# ruby-on-lambda

## Setup

Install Serverless Framework via npm.

```
$ npm install -g serverless
```

Set-up your Provider Credentials.

```
$ serverless config credentials --provider aws --key {AWS Access Key ID} --secret {AWS Secret Access Key}
```

## Deploy a Service

```
$ bin/setup
$ serverless deploy -v
```

## Remove the Service

```
$ serverless remove
```
