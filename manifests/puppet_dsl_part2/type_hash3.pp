# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define users::user(Pattern[/^\/.*/] $home) {
  notify { "home = ${home}": }
}

class users(Hash[String, Hash] $users) {
  $keys = keys($users)
  each($keys) |String $username| {
    users::user { $username:
      home => $users[$username]['home'],
    }
  }
  notify { 'users': }
}

$users_hash = {
  'john' => { 'home' => '/home/john' },
  'jim'  => { 'home' => 'home/jim' },
}

class { 'users':
  users => $users_hash,
}
