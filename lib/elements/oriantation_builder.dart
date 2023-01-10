import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/extensions/extensions.dart';

class OriantationBuilder extends StatefulWidget {
  const OriantationBuilder({Key? key}) : super(key: key);

  @override
  State<OriantationBuilder> createState() => _OriantationBuilderState();
}

class _OriantationBuilderState extends State<OriantationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return Row(
            children: [
              Container(
                width: 130,
                color: Colors.green,
                child: const Center(
                  child: Text('Drawer'),
                ),
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 15,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Expanded(
                                child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8LlCtKNVkY0pwpka02W-qNEh5EpimgmRgxkW5fObxg&s',
                              fit: BoxFit.cover,
                            )),
                            const Text(
                              'Image Name',
                              style: TextStyle(fontSize: 24),
                            ),
                            const Text(
                              'Description',
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.subtitles_off,
                                  color: Colors.blue,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(
                                  Icons.add_box,
                                  color: Colors.blue,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
        }
        return Expanded(
          child: GridView.builder(
              itemCount: 15,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8LlCtKNVkY0pwpka02W-qNEh5EpimgmRgxkW5fObxg&s',
                        fit: BoxFit.cover,
                      )),
                      const Text(
                        'Image Name',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'description'.toFirstLetterUpperCase(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.subtitles_off,
                            color: Colors.blue,
                          ),
                          Text(
                            '20',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.add_box,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
        );
      }),
    );
  }
}
