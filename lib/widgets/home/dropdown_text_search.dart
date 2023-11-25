import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSectionBaseExample extends StatelessWidget {
  const ListSectionBaseExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoListSection(
        backgroundColor: Colors.white,
        children: <CupertinoListTile>[
          CupertinoListTile(
            backgroundColor: const Color.fromRGBO(251, 251, 252, 1),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Удобства',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Самое необходимое',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(130, 135, 150, 1),
                  ),
                ),
              ],
            ),
            leading: const SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Icon(Icons.insert_emoticon),
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Удобства');
                },
              ),
            ),
          ),
          CupertinoListTile(
            backgroundColor: const Color.fromRGBO(251, 251, 252, 1),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Что включено',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Самое необходимое',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(130, 135, 150, 1),
                  ),
                ),
              ],
            ),
            leading: const SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Icon(Icons.check_box_outlined),
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Удобства');
                },
              ),
            ),
          ),
          CupertinoListTile(
            backgroundColor: const Color.fromRGBO(251, 251, 252, 1),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Что не включено',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Самое необходимое',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(130, 135, 150, 1),
                  ),
                ),
              ],
            ),
            leading: const SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Icon(Icons.cancel_presentation_outlined),
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Удобства');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
