import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/player.pb.dart';

class PlayerBagPage extends StatefulWidget {
  const PlayerBagPage({super.key});

  @override
  State<PlayerBagPage> createState() => _PlayerBagPageState();
}

class _PlayerBagPageState extends State<PlayerBagPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: TcpManager.sendPacketT(
        packet(
          cmd: pk_cmd.cmd_player_get_bag,
          data: REQplayer_get_bag(me: true).writeToBuffer(),
        ),
        RESplayer_get_bag.fromBuffer,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == .done) {
          final items = (snapshot.data as RESplayer_get_bag).items;

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

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: item.stack == 0
                      ? const Center(child: Text("无"))
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("id:${item.type}"),
                            Text("name:${item.name}"),
                            Text("number:${item.stack}"),
                          ],
                        ),
                );
              },
            ),
          );
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
