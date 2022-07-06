<?php

return [
    'default' => env('SOLDER_FILESYSTEM_DRIVER'),

    'disks' => [
        'local' => [
            'driver' => 'local',
            'root' => env('SOLDER_FILESYSTEM_LOCAL_ROOT') !== '' ? env('SOLDER_FILESYSTEM_LOCAL_ROOT') : storage_path('app'),
        ],

        'public' => [
            'driver' => 'local',
            'root' => env('SOLDER_FILESYSTEM_PUBLIC_ROOT') !== '' ? env('SOLDER_FILESYSTEM_PUBLIC_ROOT') : storage_path('app/public'),
            'url' => env('SOLDER_FILESYSTEM_PUBLIC_URL') !== '' ? env('SOLDER_FILESYSTEM_PUBLIC_URL') : env('SOLDER_APP_URL') . '/storage',
            'visibility' => env('SOLDER_FILESYSTEM_PUBLIC_VISIBILITY'),
        ],

        's3' => [
            'driver' => 's3',
            'key' => env('SOLDER_FILESYSTEM_S3_KEY'),
            'secret' => env('SOLDER_FILESYSTEM_S3_SECRET'),
            'region' => env('SOLDER_FILESYSTEM_S3_REGION'),
            'bucket' => env('SOLDER_FILESYSTEM_S3_BUCKET'),
            'url' => env('SOLDER_FILESYSTEM_S3_URL'),
            'endpoint' => env('SOLDER_FILESYSTEM_S3_ENDPOINT'),
            'use_path_style_endpoint' => (bool) env('SOLDER_FILESYSTEM_S3_PATH_STYLE', false),
        ],
    ],

    'links' => [
        public_path('storage') => env('SOLDER_FILESYSTEM_PUBLIC_ROOT') !== '' ? env('SOLDER_FILESYSTEM_PUBLIC_ROOT') : storage_path('app/public'),
    ],
];
