<?php

use Illuminate\Support\Str;

return [
    'driver' => env('SOLDER_SESSION_DRIVER'),
    'lifetime' => env('SOLDER_SESSION_LIFETIME'),
    'expire_on_close' => (bool) env('SOLDER_SESSION_EXPIRE_ON_CLOSE'),
    'encrypt' => (bool) env('SOLDER_SESSION_ENCRYPT'),
    'files' => env('SOLDER_SESSION_FILES') !== '' ? env('SOLDER_SESSION_FILES') : storage_path('framework/sessions'),
    'connection' => env('SOLDER_SESSION_CONNECTION') !== '' ? env('SOLDER_SESSION_CONNECTION') : null,
    'table' => 'sessions',
    'store' => env('SOLDER_SESSION_STORE') !== '' ? env('SOLDER_SESSION_STORE') : null,
    'lottery' => [2, 100],
    'cookie' => env('SOLDER_SESSION_COOKIE') !== '' ? env('SOLDER_SESSION_COOKIE') : Str::slug(env('SOLDER_APP_NAME'), '_').'_session',
    'path' =>  env('SOLDER_SESSION_PATH'),
    'domain' => env('SOLDER_SESSION_DOMAIN') !== '' ? env('SOLDER_SESSION_DOMAIN') : null,
    'secure' => (bool) env('SOLDER_SESSION_SECURE_COOKIE'),
    'http_only' => (bool) env('SOLDER_SESSION_HTTP_ONLY'),
    'same_site' => env('SOLDER_SESSION_SAME_SITE') !== '' ? env('SOLDER_SESSION_SAME_SITE') : null,
];
