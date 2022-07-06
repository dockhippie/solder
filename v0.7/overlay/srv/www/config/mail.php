<?php

return [
    'default' => env('SOLDER_MAIL_DRIVER'),

    'mailers' => [
        'smtp' => [
            'transport' => 'smtp',
            'host' => env('SOLDER_MAIL_HOST'),
            'port' => intval(env('SOLDER_MAIL_PORT')),
            'encryption' => env('SOLDER_MAIL_ENCRYPTION'),
            'username' => env('SOLDER_MAIL_USERNAME'),
            'password' => env('SOLDER_MAIL_PASSWORD'),
            'timeout' => null,
        ],

        'ses' => [
            'transport' => 'ses',
        ],

        'mailgun' => [
            'transport' => 'mailgun',
        ],

        'postmark' => [
            'transport' => 'postmark',
        ],

        'sendmail' => [
            'transport' => 'sendmail',
            'path' => env('SOLDER_MAIL_SENDMAIL'),
        ],

        'log' => [
            'transport' => 'log',
            'channel' => env('SOLDER_MAIL_LOG_CHANNEL'),
        ],

        'array' => [
            'transport' => 'array',
        ],

        'failover' => [
            'transport' => 'failover',
            'mailers' => explode(',', env('SOLDER_MAIL_FAILOVER_MAILERS')),
        ],
    ],

    'from' => [
        'address' => env('SOLDER_MAIL_FROM_ADDRESS'),
        'name' => env('SOLDER_MAIL_FROM_NAME'),
    ],

    'markdown' => [
        'theme' => env('SOLDER_MAIL_MARKDOWN_THEME'),

        'paths' => array_merge(
            [resource_path('views/vendor/mail')],
            explode(',', env('SOLDER_MAIL_MARKDOWN_PATHS'))
        ),
    ],
];
