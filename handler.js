'use strict';

const { exec, spawn } = require('child_process')

module.exports.hello = (event, context, callback) => {
  exec(['bash /var/task/ruby.sh hello.rb'], (err, stdout, stderr) => {
    if (err instanceof Error) {
      callback(err, null);
    } else {
      const response = {
        statusCode: 200,
        body: JSON.stringify({ message: stdout }),
      };
      callback(null, response);
    }
  });
};
