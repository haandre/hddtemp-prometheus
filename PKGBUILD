# Maintainer: Andre Haehnel <andre.haehnel@t-online.de>
pkgname=hddtemp-prometheus
pkgver=1.1
pkgrel=1
pkgdesc="shell script to gather current sata disk temps to write to file to use with prometheus node collector textfile collector"
arch=('any')
license=('BSD')
source=("hddtemp-prometheus.sh"
        "hddtemp-prometheus.service"
        "hddtemp-prometheus.timer"
        "hddtemp-prometheus.config")
sha512sums=('ae1824f1c3bf887b37829bddc3a4c74cf4b06d2f1f37234e5d001be4ac7e553ecd4dc3da253bdcf0eb6c6f1a65ea4e137e34f72e2686338534de1c3507fcbf07'
            '3e946a70e5bdc96749fff3ab603d4fb439b64993a191ddce9cdbb5c10ccb0e8f04d36a12bb81b6d37dbcb49d39d150de78ddce10838e5adc729050d5e5ff9323'
            '0be1f8c9c25c983ef6d9240cd783c437e96897b7109392ebee46742bbb6b29c91f83478c27feb591a598a2f0b0f668d2ddee2c2227d2dc353a319843e4ab9482'
            '72c3cf557cf0ef069cc71b6dd79718fb660a2a6ef1864c6fa0abc0457ebbef87a2b95df1c167c8d84a860aa473c4e15a2b0b62626e0f30fbb8afe7dfdb20422d')
package() {
    install -Dm755 "$srcdir/hddtemp-prometheus.sh" "$pkgdir/usr/bin/hddtemp-prometheus.sh"
    install -Dm644 "$srcdir/hddtemp-prometheus.service" "$pkgdir/usr/lib/systemd/system/hddtemp-prometheus.service"
    install -Dm644 "$srcdir/hddtemp-prometheus.timer" "$pkgdir/usr/lib/systemd/system/hddtemp-prometheus.timer"
    install -Dm644 "$srcdir/hddtemp-prometheus.config" "$pkgdir/etc/conf.d/hddtemp-prometheus"
}
