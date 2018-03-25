'use strict';

const { exec, spawn } = require('child_process')

module.exports.execute = (event, context, callback) => {
  const command = 'bash /var/task/ruby.sh ' + process.env.command
  exec([command], (err, stdout, stderr) => {
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
