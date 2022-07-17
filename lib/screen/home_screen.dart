import 'package:flutter/material.dart';
import 'package:the_todo/constant/colour.dart';
import 'package:the_todo/screen/detail_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void doActionWhenCardTapped(BuildContext context) {
    print(Colors.amber.toString().replaceAll('Color(', '').replaceAll(')', ''));
    showModalBottomSheet(
      context: context,
      enableDrag: false,
      isScrollControlled: true,
      builder: (context) => Container(
        color: Colour.blue,
        padding: const EdgeInsets.only(top: 16),
        child: const DetailTaskScreen(title: 'Flutter Firebase'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: height / 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'The',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Todo',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.cyan,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Icon(
                    Icons.add_sharp,
                    color: Colors.cyan,
                    size: 36,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Container(
                height: 280,
                alignment: Alignment.centerLeft,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    // 1
                    GestureDetector(
                      onTap: () => doActionWhenCardTapped(context),
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        padding: const EdgeInsets.all(20),
                        color: Colour.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Flutter Firebase',
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Complete',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // 2
                    GestureDetector(
                      onTap: () => doActionWhenCardTapped(context),
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        padding: const EdgeInsets.all(20),
                        color: Colour.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Flutter Firebase',
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Complete',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // 3
                    GestureDetector(
                      onTap: () => doActionWhenCardTapped(context),
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        padding: const EdgeInsets.all(20),
                        color: Colour.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Flutter Firebase',
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Complete',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 42,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
