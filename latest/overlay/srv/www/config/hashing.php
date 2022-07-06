<?php

return [
    'driver' => env('SOLDER_HASHING_DRIVER'),

    'bcrypt' => [
        'rounds' => env('SOLDER_HASHING_BCRYPT_ROUNDS'),
    ],

    'argon' => [
        'memory' => intval(env('SOLDER_HASHING_ARGON_MEMORY')),
        'threads' => intval(env('SOLDER_HASHING_ARGON_THREADS')),
        'time' => intval(env('SOLDER_HASHING_ARGON_TIME')),
    ],
];
