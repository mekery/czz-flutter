import "dart:typed_data";
import "package:pc_flutter/digests/sha512.dart";
import "package:pc_flutter/api.dart" show KeyParameter;
import "package:pc_flutter/macs/hmac.dart";
import "package:pc_flutter/digests/ripemd160.dart";
import "package:pc_flutter/digests/sha256.dart";

Uint8List hash160(Uint8List buffer) {
  Uint8List _tmp = new SHA256Digest().process(buffer);
  return new RIPEMD160Digest().process(_tmp);
}

Uint8List hmacSHA512(Uint8List key, Uint8List data) {
  final _tmp = new HMac(new SHA512Digest(), 128)..init(new KeyParameter(key));
  return _tmp.process(data);
}

Uint8List hash256(Uint8List buffer) {
  Uint8List _tmp = new SHA256Digest().process(buffer);
  return new SHA256Digest().process(_tmp);
}
