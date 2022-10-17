import 'package:flutter/material.dart';
import 'package:web_ott/Screen/web_screen.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "OTT ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(URL: 'https://www.netflix.com/in/',),
                    ),
                  );
                },
                child: Image.asset(
                  "assert/image/png-transparent-netflix-macos-bigsur-icon-thumbnail-removebg-preview.png",
                  scale: 3,
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(
                        URL: 'https://www.primevideo.com/hp/video/offers/nonprimehomepage/ref=dvm_pds_amz_in_as_s_g_176?_encoding=UTF8&dvah=nonprimehomepage',),
                    ),
                  );
                },
                child: Image.asset(
                  "assert/image/-1159629574507zqo9azzc-removebg-preview.png",
                  scale: 4,
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(URL: 'https://www.hotstar.com/in',),

                    ),
                  );
                },
                child: Image.asset(
                  "assert/image/6115777c5098e-384x384.png",
                  scale: 4,
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebScreen(URL: 'https://www.wikipedia.org/',),
                    ),
                  );

                },
                child: Image.asset(
                  "assert/image/1200px-Tango_style_Wikipedia_Icon.svg (1).png",
                  scale: 12,
                )),

          ],
        ),
      ),
    );
  }
}
