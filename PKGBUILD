# Maintainer: Andre Haehnel <andre.haehnel@t-online.de>
pkgname=hddtemp-prometheus
pkgver=2.0
pkgrel=1
pkgdesc="shell script to gather current sata disk temps to write to file to use with prometheus node collector textfile collector"
arch=('any')
license=('BSD')
source=("hddtemp-prometheus.sh"
        "hddtemp-prometheus.service"
        "hddtemp-prometheus.timer"
        "hddtemp-prometheus.config")
sha512sums=('7e830d12b5fd09639f4b536297547bcd6cd49a1ec5177bb0d2ba0d391da8c2318960b17aa31606265100733119954079aa9a87c4c0de0577212a0647819042b4'
            'd8c51b3bb12d0a04e2da2e31e22b88f642025e59972ed068efd3f172bc92ba09ac39451e8b06c476510f30a289700ef20572a176b9b1b4e1d85e94f7e4883f53'
            '75a390a23c24626e72c1bc64ddb6a5034ba804e8be2faecb8b80400222601beeb09922cbb190d882a82a0d8f12adf9745ec94f0b6e848b7cf27784cfc4869384'
            '72c3cf557cf0ef069cc71b6dd79718fb660a2a6ef1864c6fa0abc0457ebbef87a2b95df1c167c8d84a860aa473c4e15a2b0b62626e0f30fbb8afe7dfdb20422d')
package() {
    install -Dm755 "$srcdir/hddtemp-prometheus.sh" "$pkgdir/usr/bin/hddtemp-prometheus.sh"
    install -Dm644 "$srcdir/hddtemp-prometheus.service" "$pkgdir/usr/lib/systemd/system/hddtemp-prometheus.service"
    install -Dm644 "$srcdir/hddtemp-prometheus.timer" "$pkgdir/usr/lib/systemd/system/hddtemp-prometheus.timer"
    install -Dm644 "$srcdir/hddtemp-prometheus.config" "$pkgdir/etc/conf.d/hddtemp-prometheus"
}
