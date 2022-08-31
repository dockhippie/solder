<?php

use Illuminate\Support\Str;

return [
    'repo_location' => Str::finish(env('SOLDER_REPO_LOCATION'), '/'),
    'mirror_url' => Str::finish(env('SOLDER_MIRROR_URL'), '/'),
    'md5_connect_timeout' => intval(env('SOLDER_MD5_CONNECT_TIMEOUT', '5')),
    'md5_file_timeout' => intval(env('SOLDER_MD5_FILE_TIMEOUT', '30')),
    'disable_mod_api' => (bool) env('SOLDER_DISABLE_MOD_API'),
];
