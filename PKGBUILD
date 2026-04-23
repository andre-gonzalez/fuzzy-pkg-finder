# Maintainer: Eric Lay <ericlaytm@gmail.com>
# Contributor: Yochananmarqos
pkgname=fuzzy-pkg-finder-git
pkgver=r139.69f1dd3
pkgrel=1
pkgdesc="Simple cli command for using fzf to search and install packages"
arch=('x86_64' 'aarch64' 'armv7h')
url="https://github.com/andre-gonzalez/fuzzy-pkg-finder"
license=('GPL3')
depends=('pacman'
    'fzf'
    'expac'
    'curl'
    'gzip'
    'jq')
makedepends=('git')
optdepends=('yay: AUR helper'
			'paru: AUR helper')
source=("fuzzy-pkg-finder::git+https://github.com/andre-gonzalez/fuzzy-pkg-finder.git#branch=master")
md5sums=('SKIP')

pkgver() {
	cd "$srcdir/fuzzy-pkg-finder"
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
	cd "$srcdir/fuzzy-pkg-finder"
	install -Dm755 fpf -t "$pkgdir/usr/bin"
}
