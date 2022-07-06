<?php

use Monolog\Handler\NullHandler;
use Monolog\Handler\StreamHandler;
use Monolog\Handler\SyslogUdpHandler;

return [
    'default' => env('SOLDER_LOGGING_CHANNEL'),
    'deprecations' => env('SOLDER_LOGGING_DEPRECATIONS_CHANNEL'),

    'channels' => [
        'stack' => [
            'driver' => 'stack',
            'channels' => explode(',', env('SOLDER_LOGGING_STACK_CHANNELS')),
            'ignore_exceptions' => false,
        ],

        'single' => [
            'driver' => 'single',
            'path' => env('SOLDER_LOGGING_SINGLE_PATH') !== '' ? env('SOLDER_LOGGING_SINGLE_PATH') : storage_path('logs/laravel.log'),
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
        ],

        'daily' => [
            'driver' => 'daily',
            'path' => env('SOLDER_LOGGING_DAILY_PATH') !== '' ? env('SOLDER_LOGGING_DAILY_PATH') : storage_path('logs/laravel.log'),
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
            'days' => intval(env('SOLDER_LOGGING_DAYS', '14')),
        ],

        'slack' => [
            'driver' => 'slack',
            'url' => env('SOLDER_LOGGING_SLACK_URL'),
            'username' => env('SOLDER_LOGGING_SLACK_USERNAME'),
            'emoji' => env('SOLDER_LOGGING_SLACK_EMOJI'),
            'level' => env('SOLDER_LOGGING_LEVEL', 'critical'),
        ],

        'papertrail' => [
            'driver' => 'monolog',
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
            'handler' => env('SOLDER_LOGGING_PAPERTRAIL_HANDLER') !== '' ? env('SOLDER_LOGGING_PAPERTRAIL_HANDLER') : SyslogUdpHandler::class,
            'handler_with' => [
                'host' => env('SOLDER_LOGGING_PAPERTRAIL_URL'),
                'port' => env('SOLDER_LOGGING_PAPERTRAIL_PORT'),
                'connectionString' => env('SOLDER_LOGGING_PAPERTRAIL_CONNECTION_STRING') !== '' ? env('SOLDER_LOGGING_PAPERTRAIL_CONNECTION_STRING') : 'tls://'.env('SOLDER_LOGGING_PAPERTRAIL_URL').':'.env('SOLDER_LOGGING_PAPERTRAIL_PORT'),
            ],
        ],

        'stderr' => [
            'driver' => 'monolog',
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
            'handler' => StreamHandler::class,
            'formatter' => env('SOLDER_LOGGING_STDERR_FORMATTER'),
            'with' => [
                'stream' => 'php://stderr',
            ],
        ],

        'syslog' => [
            'driver' => 'syslog',
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
        ],

        'errorlog' => [
            'driver' => 'errorlog',
            'level' => env('SOLDER_LOGGING_LEVEL', 'debug'),
        ],

        'null' => [
            'driver' => 'monolog',
            'handler' => NullHandler::class,
        ],

        'emergency' => [
            'path' => env('SOLDER_LOGGING_EMERGENCY_PATH') !== '' ? env('SOLDER_LOGGING_EMERGENCY_PATH') : storage_path('logs/laravel.log'),
        ],
    ],
];
