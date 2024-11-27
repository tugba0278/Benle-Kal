import 'package:psychology_app/design-classes-widgets/home_page_grid.dart';

const splashPageRoute = "/splash";
const loginOptionsPageRoute = "/login-options";
const loginStudentPageRoute = "/login-student";
const registerStudentPageRoute = "/register-student";
const loginPsychologistPageRoute = "/login-psychologist";
const registerPsychologistPageRoute = "/register-psychologist";
const studentHomePageRoute = "/student-home-page";
const psychologHomePageRoute = "/psycholog-home-page";
const aboutRoutePage = "/about";

const gridItemsList = [
  HomePageGrid(
      imagePath: 'lib/assets/images/therapy-image.png', text: 'Terapi'),
  HomePageGrid(
      imagePath: 'lib/assets/images/chat-bot-image.png', text: 'Chat Bot'),
  HomePageGrid(
      imagePath: 'lib/assets/images/group-therapy-image.png',
      text: 'Grup Terapisi'),
  HomePageGrid(
      imagePath: 'lib/assets/images/personal-psycholog-image.png',
      text: 'Psikoloğum'),
  HomePageGrid(
      imagePath: 'lib/assets/images/bibliotherapy-image.png',
      text: 'Bibliyoterapi'),
  HomePageGrid(
      imagePath: 'lib/assets/images/meditation-image.png', text: 'Meditasyon'),
];

const gridRouteList = [
  loginOptionsPageRoute,
  loginStudentPageRoute,
  loginPsychologistPageRoute
];
