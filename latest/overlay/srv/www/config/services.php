<?php

return [
    'mailgun' => [
        'domain' => env('SOLDER_SERVICES_MAILGUN_DOMAIN'),
        'secret' => env('SOLDER_SERVICES_MAILGUN_SECRET'),
        'endpoint' => env('SOLDER_SERVICES_MAILGUN_ENDPOINT'),
    ],

    'postmark' => [
        'token' => env('SOLDER_SERVICES_POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('SOLDER_SERVICES_SES_KEY'),
        'secret' => env('SOLDER_SERVICES_SES_SECRET'),
        'region' => env('SOLDER_SERVICES_SES_REGION'),
    ],
];
