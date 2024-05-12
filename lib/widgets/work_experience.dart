import 'package:flutter/material.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
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
        children: [
          _buildTitle('Work Experience'),
          const SizedBox(height: 8),
          _buildItemExperience(
              'Software Developer',
              'Freelancer',
              'Jan 2024 - Current',
              'I am a highly motivated developer with a background in Data Structures and Algorithms, Flutter and React. My journey in programming started in 2021, and since then, I have been constantly improving my skills through self-directed learning. As a freelance developer specializing in the aforementioned technologies, I have been actively involved in the field since 2023, leveraging these powerful technologies to create applications. In addition to sharing my learning on social networks to bring knowledge to the community.'),
          const SizedBox(height: 20),
          _buildItemExperience(
              'Construction and Maintenance Engineer Staff',
              'Uninet S.A. de C.V.',
              'May 2016 - Current',
              'Create technical documentation, procedures and reports using my programming skills to deliver contractor invoices on time. Reduced time from 7 days to 1 day. Responsible for technical support and operation of Telmex branches providing internal services in CDMX, State of Mexico and Guerrero (+190 branches). Execute maintenance windows and interventions in coordination with contractors (2 to 4 people per activity). Effective communication with internal and external contractors. Preventive reviews of IT infrastructure to ensure service availability.'),
              const SizedBox(height: 20),
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

Widget _buildItemExperience(
    String title, String company, String date, String description) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$title\n',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '$company\n',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '$date\n',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: description,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
