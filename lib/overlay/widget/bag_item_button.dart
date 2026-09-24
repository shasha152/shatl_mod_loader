import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/data/static_data.dart';
import 'package:shatl_mod_loader/overlay/widget/custom_slider.dart';
import 'package:shatl_mod_loader/proto/item.pb.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';

class ItemNamesSearch extends StatefulWidget {
  const ItemNamesSearch({super.key, required this.names, this.onSelected});

  final List<String> names;
  final void Function(int)? onSelected;

  @override
  State<ItemNamesSearch> createState() => _ItemNamesSearchState();
}

class _ItemNamesSearchState extends State<ItemNamesSearch> {
  late List<int> _filterNamesIndex;

  @override
  void initState() {
    super.initState();

    _filterNamesIndex = List.generate(widget.names.length, (index) => index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            hintText: '搜索...',
            hintStyle: const TextStyle(fontSize: 14),
            prefixIcon: const Icon(Icons.search, size: 20),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            filled: true,
          ),
          onChanged: (value) {
            _filterNamesIndex.clear();
            for (var i = 0; i < widget.names.length; i++) {
              if (widget.names[i].contains(value)) {
                _filterNamesIndex.add(i);
              }
            }
            setState(() {});
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _filterNamesIndex.length,
            itemBuilder: (context, index) => TextButton(
              onPressed: () {
                widget.onSelected?.call(_filterNamesIndex[index]);
              },
              child: Text(widget.names[_filterNamesIndex[index]]),
            ),
          ),
        ),
      ],
    );
  }
}

class BagItemButton extends StatelessWidget {
  const BagItemButton({
    super.key,
    required this.itemMsg,
    required this.index,
    required this.title,
  });
  final item itemMsg;
  final int index;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
      ),
      onPressed: () {
        if (itemMsg.stack == 0) {
          _showAddItemDialog(context);
        } else {
          _showSetItemDialog(context);
        }
      },
      child: itemMsg.stack == 0
          ? const Center(child: Text("无"))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [title],
            ),
    );
  }

  Future _showSetItemDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 70,
          ),
          child: Padding(
            padding: const EdgeInsetsGeometry.all(12),
            child: Column(
              children: [
                const Text(
                  '修改属性',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView(
                    children: [
                      CustomSlider(
                        min: 1,
                        max: 9999,
                        title: "数量",
                        defaultValue: itemMsg.stack.toDouble(),
                        onChangeEnd: (value) => itemMsg.stack = value as int,
                      ),
                      CustomSlider(
                        min: 0,
                        max: 9999999,
                        title: "伤害",
                        defaultValue: itemMsg.damage,
                        onChangeEnd: (value) => itemMsg.damage = value,
                        formatValue: formatDouble,
                      ),
                      CustomSlider(
                        min: 0,
                        max: 100,
                        title: "暴击率",
                        defaultValue: itemMsg.crit.toDouble(),
                        onChangeEnd: (value) => itemMsg.crit = value as int,
                      ),
                      CustomSlider(
                        min: 0,
                        max: 40,
                        title: "大小",
                        defaultValue: itemMsg.scale,
                        onChangeEnd: (value) => itemMsg.scale = value,
                        formatValue: formatDouble,
                      ),
                      CustomSlider(
                        min: 0,
                        max: 100,
                        title: "击退",
                        defaultValue: itemMsg.knockBack,
                        onChangeEnd: (value) => itemMsg.knockBack = value,
                        formatValue: formatDouble,
                      ),
                      CustomSlider(
                        min: 0,
                        max: 100,
                        title: "弹幕速度",
                        defaultValue: itemMsg.shootSpeed,
                        onChangeEnd: (value) => itemMsg.shootSpeed = value,
                        formatValue: formatDouble,
                      ),

                      CustomSlider(
                        min: 0,
                        max: 9999,
                        title: "防御",
                        defaultValue: itemMsg.defense.toDouble(),
                        onChangeEnd: (value) => itemMsg.defense = value as int,
                      ),
                      CustomSlider(
                        min: 1,
                        max: 50,
                        title: "使用时间",
                        defaultValue: itemMsg.useTime.toDouble(),
                        onChangeEnd: (value) => itemMsg.useTime = value as int,
                      ),
                    ],
                  ),
                ),

                // game_item->shoot = item.shoot();
                TextButton(
                  onPressed: () async {
                    final resMsg = await TcpManager.sendPacketConfirm(
                      packet(
                        cmd: pk_cmd.cmd_set_item_pro,
                        data: REQset_item_property(
                          sitem: itemMsg,
                          index: index,
                        ).writeToBuffer(),
                      ),
                    );
                    if (resMsg?.ok ?? false) {
                      print("修改成功");
                    } else {
                      print("修改失败");
                    }

                    Navigator.pop(context);
                  },
                  child: Text("确定"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future _showAddItemDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Text(
                  '添加物品',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                Expanded(
                  child: FutureBuilder(
                    future: StaticData.instance.getItemNames(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == .done) {
                        return ItemNamesSearch(
                          names: snapshot.data!,
                          onSelected: (type) async {
                            await TcpManager.sendPacketConfirm(
                              packet(
                                cmd: pk_cmd.cmd_set_item_type,
                                data: REQset_item_type(
                                  type: type,
                                  index: index,
                                ).writeToBuffer(),
                              ),
                            );
                            Navigator.pop(context);
                          },
                        );
                      }

                      return const CircularProgressIndicator();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
