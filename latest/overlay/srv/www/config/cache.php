<?php

use Illuminate\Support\Str;

return [
    'default' => env('SOLDER_CACHE_DRIVER', 'file'),

    'stores' => [
        'apc' => [
            'driver' => 'apc',
        ],

        'array' => [
            'driver' => 'array',
            'serialize' => false,
        ],

        'database' => [
            'driver' => 'database',
            'table' => 'cache',
            'connection' => env('SOLDER_CACHE_DATABASE_CONNECTION') !== '' ? env('SOLDER_CACHE_DATABASE_CONNECTION') : null,
            'lock_connection' => env('SOLDER_CACHE_DATABASE_LOCK_CONNECTION') !== '' ? env('SOLDER_CACHE_DATABASE_LOCK_CONNECTION') :null,
        ],

        'file' => [
            'driver' => 'file',
            'path' => env('SOLDER_CACHE_FILE_PATH') !== '' ? env('SOLDER_CACHE_FILE_PATH') : storage_path('framework/cache/data'),
        ],

        'memcached' => [
            'driver' => 'memcached',
            'persistent_id' => env('SOLDER_CACHE_MEMCACHED_PERSISTENT_ID'),
            'sasl' => [
                env('SOLDER_CACHE_MEMCACHED_USERNAME'),
                env('SOLDER_CACHE_MEMCACHED_PASSWORD'),
            ],
            'options' => [
                // Memcached::OPT_CONNECT_TIMEOUT => 2000,
            ],
            'servers' => env('SOLDER_CACHE_MEMCACHED_HOSTS') == '' ? [] : array_map(
                function($a) {
                    list($host, $port) = explode(':', $a, 2);

                    return [
                        'host' => $host,
                        'port' => $port,
                        'weight' => 100,
                    ];
                },
                explode(',', env('SOLDER_CACHE_MEMCACHED_HOSTS'))
            ),
        ],

        'redis' => [
            'driver' => 'redis',
            'connection' => env('SOLDER_CACHE_REDIS_CONNECTION'),
            'lock_connection' => env('SOLDER_CACHE_REDIS_LOCK_CONNECTION'),
        ],

        'dynamodb' => [
            'driver' => 'dynamodb',
            'key' => env('SOLDER_CACHE_DYNAMODB_KEY'),
            'secret' => env('SOLDER_CACHE_DYNAMODB_SECRET'),
            'region' => env('SOLDER_CACHE_DYNAMODB_REGION'),
            'table' => env('SOLDER_CACHE_DYNAMODB_TABLE'),
            'endpoint' => env('SOLDER_CACHE_DYNAMODB_ENDPOINT'),
        ],

        'octane' => [
            'driver' => 'octane',
        ],
    ],

    'prefix' => env('SOLDER_CACHE_PREFIX') !== '' ? env('SOLDER_CACHE_PREFIX') : Str::slug(env('SOLDER_APP_NAME'), '_').'_cache_',
];
