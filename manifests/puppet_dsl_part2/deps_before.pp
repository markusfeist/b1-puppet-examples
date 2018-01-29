# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

notify { 'second message':
  message => 'This should be printed after the first message',
}

notify { 'first message':
  message => 'This should be printed first',
  before  => Notify['second message'],
}
