import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/domain/constants.dart';
import 'package:netflix_app/screeens/widgets_common/app_bar_for_dwnld_and_hotandnew.dart';
import 'components/rotate_poster.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //       .add(const DownloadsEvent.started());
    // });
 BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.started());
          
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBArWidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          Row(
            children: const [
              Icon(
                Icons.settings,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Smart Downloads',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'We will download a personalised selection'
            ' of movies and shows for you, so there'
            ' is always something to watch on your device,',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
         print("imagelist${state.downloadList}");
              return 
               state.isLoading?const Center(child:CircularProgressIndicator()):
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.5),
                      radius: MediaQuery.of(context).size.width * .4,
                    ),
                     RotatePosterWidget(
                      imageAddress: '$imageAppendUrl${state.downloadList[0].posterPath}',
                      angle: 17 * pi / 180,
                      margin: const EdgeInsets.only(
                        left: 170,
                      ),
                    ),
                     RotatePosterWidget(
                      imageAddress: '$imageAppendUrl${state.downloadList[1].posterPath}',
                      angle: -17 * pi / 180,
                      margin: const EdgeInsets.only(
                        right: 170,
                      ),
                    ),
                     RotatePosterWidget(
                      imageAddress: '$imageAppendUrl${state.downloadList[2].posterPath}',
                      margin: const EdgeInsets.only(bottom: 20),
                    )
                  ],
                ),
              );
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Setup',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
              onPressed: () {},
              child: const Text(
                'See what you can download',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
