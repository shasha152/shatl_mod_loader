import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/data/static_data.dart';
import 'package:shatl_mod_loader/overlay/widget/bag_item_button.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/player.pb.dart';

class PlayerBagPage extends StatefulWidget {
  const PlayerBagPage({super.key});

  @override
  State<PlayerBagPage> createState() => _PlayerBagPageState();
}

class _PlayerBagPageState extends State<PlayerBagPage> {
  late Future<RESplayer_get_bag> _future;

  @override
  void initState() {
    super.initState();
    _future = TcpManager.sendPacketT(
      packet(
        cmd: pk_cmd.cmd_player_get_bag,
        data: REQplayer_get_bag(me: true).writeToBuffer(),
      ),
      RESplayer_get_bag.fromBuffer,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _future = TcpManager.sendPacketT(
          packet(
            cmd: pk_cmd.cmd_player_get_bag,
            data: REQplayer_get_bag(me: true).writeToBuffer(),
          ),
          RESplayer_get_bag.fromBuffer,
        );
        setState(() {});
      },
      child: FutureBuilder(
        future: Future.wait([_future, StaticData.instance.getItemNames()]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == .done) {
            final items = (snapshot.data![0] as RESplayer_get_bag).items;
            final names = (snapshot.data![1] as List<dynamic>);

            return Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (contxet, index) {
                  final item = items[index];

                  return BagItemButton(
                    itemMsg: item,
                    index: index,
                    title: Text(
                      names[item.type] as String,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                },
              ),
            );
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
