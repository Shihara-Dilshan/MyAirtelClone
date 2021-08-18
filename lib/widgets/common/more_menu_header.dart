import 'package:flutter/material.dart';

class MoreMenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2, // 60% of space => (6/(6 + 4))
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: 34.0, left: 30.0, bottom: 33, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 73,
                    height: 73,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/a8/7f/41/a87f41988b0429a1981cd64a9013bbfb.jpg'),
                          fit: BoxFit.contain),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '0763124312',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Text(
                          'View Profile',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,
                height: 40,
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.grey,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
