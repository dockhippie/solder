<?php

return [
    'default' => env('SOLDER_BROADCASTING_DRIVER', 'null'),

    'connections' => [
        'pusher' => [
            'driver' => 'pusher',
            'key' => env('SOLDER_BROADCASTING_PUSHER_KEY'),
            'secret' => env('SOLDER_BROADCASTING_PUSHER_SECRET'),
            'app_id' => env('SOLDER_BROADCASTING_PUSHER_APP_ID'),
            'options' => [
                'cluster' => env('SOLDER_BROADCASTING_PUSHER_CLUSTER'),
                'useTLS' => true,
            ],
        ],

        'ably' => [
            'driver' => 'ably',
            'key' => env('SOLDER_BROADCASTING_ABLY_KEY'),
        ],

        'redis' => [
            'driver' => 'redis',
            'connection' => env('SOLDER_BROADCASTING_REDIS_CONNECTION'),
        ],

        'log' => [
            'driver' => 'log',
        ],

        'null' => [
            'driver' => 'null',
        ],
    ],
];
