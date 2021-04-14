/// Container for information about crypto networks.
///
/// This could be used also for other than Bitcoin Cash networks when this library gets extended

class Network {
  static const bchPrivate = 0x80;
  static const bchTestnetPrivate = 0xef;

  static const bchPublic = 0x18;
  static const bchTestnetPublic = 0x6f;

  final int bip32Private;
  final int bip32Public;
  final bool testnet;
  final int pubKeyHash;
  final int private;
  final int public;
  final String prefix;

  Network(this.bip32Private, this.bip32Public, this.testnet, this.pubKeyHash,
      this.private, this.public, this.prefix);

  factory Network.bitcoinCash() =>
      Network(0x0488ade4, 0x0488b21e, false, 0x18, bchPrivate, bchPublic, 'classzz');
  factory Network.bitcoinCashTest() => Network(
      0x04358394, 0x043587cf, true, 0x6f, bchTestnetPrivate, bchTestnetPublic, 'bchtext');
}
