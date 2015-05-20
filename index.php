<?php
/**
 * This file is part of the docker-vagrant package.
 *
 * (c) Dries De Peuter <dries@nousefreak.be>
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

$redis = new \Redis();
$redis->connect('redis');

$redis->incr('hits');

echo sprintf('This page was opened %s times', $redis->get('hits'));

if (isset($_GET['phpinfo'])) {
    phpinfo();
}
