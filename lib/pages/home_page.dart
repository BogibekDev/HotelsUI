import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Best Hotels Ever",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 46,
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for hotels...",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 17),
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            //#body1
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Hotels",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel2.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel3.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel4.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel2.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),

            //#body2
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Airport Hotels",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        item(
                          image: "assets/images/ic_hotel4.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel2.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel4.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel2.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),

            //#body3
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Resort Hotels",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        item(
                          image: "assets/images/ic_hotel3.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel3.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel4.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                        item(
                          image: "assets/images/ic_hotel2.jpg",
                          title: "BOO Hotel",
                          isLiked: true,
                        ),
                        item(
                          image: "assets/images/ic_hotel1.jpg",
                          title: "BOO Hotel",
                          isLiked: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget item({image, title, isLiked}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    isLiked
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : const Icon(Icons.favorite_border, color: Colors.grey)
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
