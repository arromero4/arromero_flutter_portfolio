import 'package:flutter/material.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 229, 229, 1),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          _buildTitle('Services'),
          _buildDescription(
              'Looking to elevate your business with a cutting-edge mobile app or dynamic website? Contact me today! I specialize in developing with Flutter for mobile and React for web platforms. I guarantee swift delivery and satisfaction—your project isn’t finished until you love it. Let’s bring your vision to life!'),
          _buildListOfServices(),
          _buildOtherSkills(),
        ],
      ),
    );
  }
}

Widget _buildTitle(String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget _buildDescription(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            height: 1,
          ),
        ),
      ),
    ],
  );
}

Widget _buildServiceCard(String title, String description) {
  return ClipRRect(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 300,
          height: 410,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  shadowColor: Colors.black,
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: const Text(
                  'Read More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildListOfServices() {
  // Lista de servicios
  final List<Map<String, String>> services = [
    {
      'title': 'Mobile Development',
      'description':
          'Mobile development with Flutter is the creation of visually appealing and functionally rich mobile applications for a variety of platforms, including iOS and Android. This approach emphasizes the utilization of Flutter\'s powerful framework to achieve smooth and adaptive user interfaces, ensuring a seamless and engaging user experience. With Flutter, developers can craft high-performance applications that are both aesthetically pleasing and highly responsive, enhancing usability across diverse devices and screen sizes.',
    },
    {
      'title': 'Web Development',
      'description':
          'Web development using React.js centers on crafting interactive and responsive websites that enhance user engagement across the internet. React.js specializes in the frontend aspect of web development, prioritizing the user experience and interface adaptability for various devices, from mobile to desktop browsers. It enables developers to efficiently build scalable and maintainable websites with its component-based architecture.'
    },
  ];
  return SafeArea(
    top: true,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                child: Container(
                  width: 300,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal,
                        color: Colors.black,
                        offset: Offset(
                          0.0,
                          0.8,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildServiceCard(
                          services[0]['title'].toString(),
                          services[0]['description'].toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //-------------
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                child: Container(
                  width: 300,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal,
                        color: Colors.black,
                        offset: Offset(
                          0.0,
                          0.8,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildServiceCard(
                          services[1]['title'].toString(),
                          services[1]['description'].toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildOtherSkills() {
  List<String> otherSkills = [
    'React Native',
    'React',
    'Git',
    'Github',
    'TailWindCSS',
    'CSS',
    'HTML',
    'JavaScript',
    'TypeScript',
    'SQL',
    'DSA',
  ];
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
    child: Column(
      children: <Widget>[
        const Row(
          children: [
            Text(
              'Other Skills:',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Wrap(
            runSpacing: 8,
            spacing: 8,
            children: otherSkills.map(
              (skill) {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shadowColor: Colors.black,
                    backgroundColor: Colors.black,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29),
                    ),
                  ),
                  child: Text(
                    skill,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    ),
  );
}
