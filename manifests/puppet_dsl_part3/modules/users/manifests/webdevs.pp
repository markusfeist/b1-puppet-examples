# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class users::webdevs() {
  realize(User['klaus'])
  realize(User['dieter'])
  realize(User['helmut'])
  realize(User['horst'])
}
