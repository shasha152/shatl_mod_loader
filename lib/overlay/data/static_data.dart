import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/proto/item.pb.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';

class StaticData {
  StaticData._();
  static StaticData instance = StaticData._();

  List<String> _itemNames = [];

  Future<List<String>> getItemNames() async {
    if (_itemNames.isEmpty) {
      final resMsg = await TcpManager.sendPacketT(
        packet(cmd: pk_cmd.cmd_get_item_name, data: [1]),
        RESitem_names.fromBuffer,
      );
      _itemNames = resMsg.names.toList();
      
    }

    return _itemNames;
  }
}
