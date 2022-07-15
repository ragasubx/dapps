import 'dart:math';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:web3dart/web3dart.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class Wallet {
  Future<Database> _openDb() async {
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    var dbPath = join(dir.path, 'ragasubx_wallet.db');
    DatabaseFactory dbFactory = databaseFactoryIo;

    Database db = await dbFactory.openDatabase(dbPath);

    return db;
  }

  Future<String> createWallet() async {
    Database db = await _openDb();
    var store = intMapStoreFactory.store('wallets');

    var rng = Random.secure();
    Credentials random = EthPrivateKey.createRandom(rng);

    final address = await random.extractAddress();

    await store.add(db, {'pk': random.toString(), 'hexAddr': address.hex});

    return address.hex;
  }

  Future getWallet() async {
    Database db = await _openDb();
    var store = intMapStoreFactory.store('wallets');

    var results = await store.find(db);
    return results;
  }
}
