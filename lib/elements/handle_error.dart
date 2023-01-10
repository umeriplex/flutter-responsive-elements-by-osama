import 'package:flutter/material.dart';

class HandelError extends StatefulWidget {
  const HandelError({Key? key}) : super(key: key);

  @override
  State<HandelError> createState() => _HandelErrorState();
}

class _HandelErrorState extends State<HandelError> {
  @override
  void initState() {
    throw('I am an Error');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context,constraint) {
            if(constraint.maxWidth > 500){
              return Row(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 120,
                    child: const Center(
                      child: Text('Drawer'),
                    ),
                  ),
                  Expanded(child: GridView.builder(
                      itemCount: 15,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8LlCtKNVkY0pwpka02W-qNEh5EpimgmRgxkW5fObxg&s',fit: BoxFit.cover,)
                              ),
                              const Text('Image Name',style: TextStyle(fontSize: 24),),
                              const Text('Description',style: TextStyle(fontSize: 18),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.subtitles_off,color: Colors.blue,),
                                  Text('20',style: TextStyle(fontSize: 16),),
                                  Icon(Icons.add_box,color: Colors.blue,),
                                ],
                              )
                            ],
                          ),
                        );
                      }),),
                ],
              );
            }
            return GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraint.maxWidth > 500 ? 3 : 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8LlCtKNVkY0pwpka02W-qNEh5EpimgmRgxkW5fObxg&s',fit: BoxFit.cover,)
                        ),
                        const Text('Image Name',style: TextStyle(fontSize: 24),),
                        const Text('Description',style: TextStyle(fontSize: 18),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.subtitles_off,color: Colors.blue,),
                            Text('20',style: TextStyle(fontSize: 16),),
                            Icon(Icons.add_box,color: Colors.blue,),
                          ],
                        )
                      ],
                    ),
                  );
                });
          }
      ),
    );
  }
}
