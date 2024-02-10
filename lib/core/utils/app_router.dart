import 'package:go_router/go_router.dart';
import 'package:nursery/core/utils/widgets/custom_bnb.dart';
import 'package:nursery/features/activities/presentation/view/activities_view.dart';
import 'package:nursery/features/booking/presentation/view/booking_view.dart';
import 'package:nursery/features/bottle/presentation/views/bottle_view.dart';
import 'package:nursery/features/class_time_table/presentation/views/class_time_table_view.dart';
import 'package:nursery/features/daily_report/presentations/views/daily_report_view.dart';
import 'package:nursery/features/diaper/presentation/views/diaper_view.dart';
import 'package:nursery/features/diaper/presentation/views/potty_view.dart';
import 'package:nursery/features/early_leave/presentations/views/early_leave_view.dart';
import 'package:nursery/features/food/presentation/view/food_view.dart';
import 'package:nursery/features/gallery/presentation/views/gallery_view.dart';
import 'package:nursery/features/home/presentations/views/home_view.dart';
import 'package:nursery/features/home_work/presentation/view/home_work_view.dart';
import 'package:nursery/features/issue/presentation/view/issue_view.dart';
import 'package:nursery/features/login/presentation/views/login_view.dart';
import 'package:nursery/features/medical/presentation/views/medical_view.dart';
import 'package:nursery/features/mood/presentation/view/mood_view.dart';
import 'package:nursery/features/nap/presentation/view/nap_view.dart';
import 'package:nursery/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:nursery/features/quizzes/presentation/views/quizzes_view.dart';
import 'package:nursery/features/request_confirm/presentations/views/request_confirm_view.dart';
import 'package:nursery/features/splash/presentations/views/splash_view.dart';

import 'functions/animation_page.dart';

abstract class AppRouter {
  static const onBoarding = '/onBoarding';
  static const login = '/login';
  static const home = '/home';
  static const activities = '/activities';
  static const gallery = '/gallery';
  static const dailyReport = '/dailyReport';
  static const earlyLeave = '/earlyLeave';
  static const requestConfirm = '/requestConfirm';
  static const classTimeTable = '/classTimeTable';
  static const potty = '/potty';
  static const diaper = '/diaper';
  static const quizzes = '/quizzes';
  static const bottle = '/bottle';
  static const homeWork = '/homeWork';
  static const medical = '/medical';
  static const food = '/food';
  static const nap = '/nap';
  static const mood = '/mood';
  static const issue = '/issue';
  static const booking = '/booking';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const CustomBNB(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const CustomBNB(),
        ),
      ),
      GoRoute(
        path: activities,
        builder: (context, state) => const ActivitiesView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const GalleryView(),
        ),
      ),
      GoRoute(
        path: gallery,
        builder: (context, state) => const GalleryView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const GalleryView(),
        ),
      ),
      GoRoute(
        path: dailyReport,
        builder: (context, state) => const DailyReportView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const DailyReportView(),
        ),
      ),
      GoRoute(
        path: earlyLeave,
        builder: (context, state) => const EarlyLeaveView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const EarlyLeaveView(),
        ),
      ),
      GoRoute(
        path: requestConfirm,
        builder: (context, state) => const RequestConfirmView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const RequestConfirmView(),
        ),
      ),
      GoRoute(
        path: classTimeTable,
        builder: (context, state) => const ClassTimeTableView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const ClassTimeTableView(),
        ),
      ),
      GoRoute(
        path: potty,
        builder: (context, state) => const PottyView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const PottyView(),
        ),
      ),
      GoRoute(
        path: diaper,
        builder: (context, state) => const DiaperView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const DiaperView(),
        ),
      ),
      GoRoute(
        path: quizzes,
        builder: (context, state) => const QuizzesView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const QuizzesView(),
        ),
      ),
      GoRoute(
        path: bottle,
        builder: (context, state) => const BottleView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const BottleView(),
        ),
      ),
      GoRoute(
        path: homeWork,
        builder: (context, state) => const HomeWorkView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const HomeWorkView(),
        ),
      ),
      GoRoute(
        path: medical,
        builder: (context, state) => const MedicalView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const MedicalView(),
        ),
      ),
      GoRoute(
        path: food,
        builder: (context, state) => const FoodView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const FoodView(),
        ),
      ),
      GoRoute(
        path: nap,
        builder: (context, state) => const NapView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const NapView(),
        ),
      ),
      GoRoute(
        path: mood,
        builder: (context, state) => const MoodView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const MoodView(),
        ),
      ),
      GoRoute(
        path: issue,
        builder: (context, state) => const IssueView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const IssueView(),
        ),
      ),
      GoRoute(
        path: booking,
        builder: (context, state) => const BookingView(),
        pageBuilder: (context, state) => buildPageWithTransition<void>(
          context: context,
          state: state,
          child: const BookingView(),
        ),
      ),
    ],
  );
}
