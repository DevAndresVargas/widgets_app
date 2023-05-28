import 'package:flutter/material.dart';
import 'package:widget_app/themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

    final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
    final ScrollController scrollController = ScrollController();
    bool itsLoading = false;

    @override
      void initState() {
        super.initState();

        scrollController.addListener(() {
            // print('${scrollController.position.pixels},${scrollController.position.maxScrollExtent}');
                if (scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent){
                    // add5();
                    fetchData();
                }
                });
      }

    Future fetchData() async {
        if ( itsLoading ) return;

        itsLoading = true;
        setState(() {});

        await Future.delayed(const Duration( seconds: 3  ));

        add5();

        itsLoading = false;
        setState(() {});

    }


    void add5(){
        final lastId = imagesIds.last;
        imagesIds.addAll(
        [1,2,3,4,5].map((e) => lastId + e)
        );
        setState(() {});
    }

  @override
  Widget build(BuildContext context) {

      final size = MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: ( BuildContext context, int index ){
                    return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/600/300?image=${imagesIds[index]}')
                    );
                },
            ),


            Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,

                //TODO: Efecto Jupiter
                // left: 40,
                // right: 40,

                child: const _LoadingIcon()
            )

          ],
        ),
      )
      );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.all(10),
    height: 60,
    width: 60,
    decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.9),
    shape: BoxShape.circle
        ),
    child: const CircularProgressIndicator(color: AppTheme.primary,),
        );
  }
}
