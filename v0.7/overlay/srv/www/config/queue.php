<?php

return [
    'default' => env('SOLDER_QUEUE_DRIVER', 'sync'),

    'connections' => [
        'sync' => [
            'driver' => 'sync',
        ],

        'database' => [
            'driver' => 'database',
            'table' => 'jobs',
            'queue' => 'default',
            'retry_after' => intval(env('SOLDER_QUEUE_DATABASE_RETRY_AFTER', 90)),
        ],

        'beanstalkd' => [
            'driver' => 'beanstalkd',
            'host' =>  env('SOLDER_QUEUE_BEANSTALKD_HOST'),
            'queue' =>  env('SOLDER_QUEUE_BEANSTALKD_QUEUE'),
            'retry_after' =>  intval(env('SOLDER_QUEUE_BEANSTALKD_RETRY_AFTER', 90)),
            'block_for' => intval(env('SOLDER_QUEUE_BEANSTALKD_BLOCK_FOR', 0)),
        ],

        'sqs' => [
            'driver' => 'sqs',
            'key' => env('SOLDER_QUEUE_SQS_KEY'),
            'secret' => env('SOLDER_QUEUE_SQS_SECRET'),
            'prefix' => env('SOLDER_QUEUE_SQS_PREFIX'),
            'queue' => env('SOLDER_QUEUE_SQS_QUEUE'),
            'region' => env('SOLDER_QUEUE_SQS_REGION'),
        ],

        'redis' => [
            'driver' => 'redis',
            'connection' => env('SOLDER_QUEUE_REDIS_CONNECTION'),
            'queue' => env('SOLDER_QUEUE_REDIS_QUEUE'),
            'retry_after' => intval(env('SOLDER_QUEUE_REDIS_RETRY_AFTER', 90)),
            'block_for' => env('SOLDER_QUEUE_REDIS_BLOCK_FOR') !== '' ? intval(env('SOLDER_QUEUE_REDIS_BLOCK_FOR')) : null,
        ],
    ],

    'failed' => [
        'driver' => env('SOLDER_QUEUE_FAILED_DRIVER'),
        'database' => env('SOLDER_QUEUE_FAILED_DATABASE_CONNECTION'),
        'table' => 'failed_jobs',
    ],
];
