<?php

use Illuminate\Support\Str;

return [
    'default' => env('SOLDER_DB_DRIVER', 'mysql'),

    'connections' => [
        'sqlite' => [
            'driver' => 'sqlite',
            'url' => env('SOLDER_DB_URL'),
            'database' => env('SOLDER_DB_NAME'),
            'prefix' => env('SOLDER_DB_PREFIX'),
            'foreign_key_constraints' => (bool) env('SOLDER_DB_FOREIGN_KEYS'),
        ],

        'mysql' => [
            'driver' => 'mysql',
            'url' => env('SOLDER_DB_URL'),
            'host' => env('SOLDER_DB_HOST'),
            'port' => env('SOLDER_DB_PORT'),
            'database' => env('SOLDER_DB_NAME'),
            'username' => env('SOLDER_DB_USERNAME'),
            'password' => env('SOLDER_DB_PASSWORD'),
            'charset' => env('SOLDER_DB_CHARSET'),
            'collation' => env('SOLDER_DB_COLLATION'),
            'prefix' => env('SOLDER_DB_PREFIX'),
            'prefix_indexes' => (bool) env('SOLDER_DB_PREFIX_INDEXES'),
            'strict' => (bool) env('SOLDER_DB_STRICT'),
            'engine' => env('SOLDER_DB_ENGINE', null),
            'options' => extension_loaded('pdo_mysql') ? array_filter([
                PDO::MYSQL_ATTR_SSL_CA => env('SOLDER_MYSQL_ATTR_SSL_CA'),
            ]) : [],
        ],

        'pgsql' => [
            'driver' => 'pgsql',
            'url' => env('SOLDER_DB_URL'),
            'host' => env('SOLDER_DB_HOST'),
            'port' => env('SOLDER_DB_PORT'),
            'database' => env('SOLDER_DB_NAME'),
            'username' => env('SOLDER_DB_USERNAME'),
            'password' => env('SOLDER_DB_PASSWORD'),
            'charset' => env('SOLDER_DB_CHARSET'),
            'prefix' => env('SOLDER_DB_PREFIX'),
            'prefix_indexes' => (bool) env('SOLDER_DB_PREFIX_INDEXES'),
            'search_path' => env('SOLDER_DB_SCHEMA'),
            'sslmode' => env('SOLDER_DB_SSLMODE'),
        ],
    ],

    'migrations' => 'migrations',

    'redis' => [
        'client' => env('SOLDER_REDIS_CLIENT'),

        'options' => [
            'cluster' => env('SOLDER_REDIS_CLUSTER'),
            'prefix' => env('SOLDER_REDIS_PREFIX') !== '' ? env('SOLDER_REDIS_PREFIX') : Str::slug(env('SOLDER_APP_NAME'), '_') . '_database_',
        ],

        'default' => [
            'url' => env('SOLDER_REDIS_DEFAULT_URL'),
            'host' => env('SOLDER_REDIS_DEFAULT_HOST'),
            'password' => env('SOLDER_REDIS_DEFAULT_PASSWORD', null),
            'port' => env('SOLDER_REDIS_DEFAULT_PORT'),
            'database' => env('SOLDER_REDIS_DEFAULT_DB'),
        ],

        'cache' => [
            'url' => env('SOLDER_REDIS_CACHE_URL'),
            'host' => env('SOLDER_REDIS_CACHE_HOST'),
            'password' => env('SOLDER_REDIS_CACHE_PASSWORD', null),
            'port' => env('SOLDER_REDIS_CACHE_PORT'),
            'database' => env('SOLDER_REDIS_CACHE_DB'),
        ],
    ],
];
