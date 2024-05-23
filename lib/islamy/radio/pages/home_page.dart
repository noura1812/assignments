import 'package:flutter/material.dart';
import 'package:assignments/islamy/radio/cubit/home_page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bg3.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocProvider(
          create: (context) => HomePageCubit(),
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              var cubit = context.read<HomePageCubit>();

              if (state is HomePageInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is HomePageSuccessState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/radio.png"),
                    const SizedBox(height: 10),
                    Text(
                      cubit.radioModel!.radios![cubit.curIndex].name!,
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            cubit.previousRadio();
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        IconButton(
                          onPressed: () async {
                            cubit.clickOnPlayButton();
                          },
                          icon: Icon(
                              cubit.isPlaying ? Icons.pause : Icons.play_arrow),
                        ),
                        IconButton(
                          onPressed: () {
                            cubit.nextRadio();
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
