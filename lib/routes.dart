import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/admin/login.dart';
import 'package:login/jansevak/view_complaint_Jansevak.dart';
import 'package:login/login/firstpage.dart';
import 'components/card.dart';
import 'jansevak/add_nagrik.dart';
import 'jansevak/jansevak_profile.dart';
import 'jansevak/update_status.dart';
import 'login/login_using_password.dart';
import 'login/login_using_phone.dart';
import 'login/reset_pass_success.dart';
import 'login/reset_password.dart';
import 'login/set_password.dart';
import 'login/update_password.dart';
import 'login/verify_phone.dart';
import 'nagrik/create_complaint.dart';
import 'nagrik/detailed_announcement.dart';
import 'nagrik/detailed_complaint.dart';
import 'nagrik/faq.dart';
import 'nagrik/feedback.dart';
import 'nagrik/home_screen.dart';
import 'nagrik/know_my_jansevak.dart';
import 'nagrik/profile.dart';
import 'nagrik/setup_profile.dart';
import 'nagrik/track_complaint.dart';
import 'nagrik/view_announcements.dart';
import 'nagrik/view_complaint.dart';
import 'onboard/splash_page.dart';

import 'login/new_registration.dart';

GoRouter goRouter = GoRouter(
  routes: [
    // for testing your page you can replace your page with UpComing()
    GoRoute(path: '/sdf', builder: (context, state) => ViewComplaint()),
    GoRoute(path: '/registration', builder: (context, state) => NewRegistration()),
    GoRoute(path: '/af', builder: (context, state) =>CreateComplaint()),

    GoRoute(path: '/', builder: (context, state) => splash_screen()),
    GoRoute(path: '/home', builder: (context, state) => home()),
    GoRoute(path: '/login_phone', builder: (context, state) => LoginPhone()),
    GoRoute(path: '/login_OTP', builder: (context, state) => VerifyPhone()),
    GoRoute(path: '/set_password', builder: (context, state) => SetPassword()),
    // add Login Using Pass Route
    // add update pass

    GoRoute(
        path: '/forget_password', builder: (context, state) => ResetPassword()),
    GoRoute(
        path: '/reset_password_success',
        builder: (context, state) => SuccessReset()),
    // GoRoute(path: '/update_password', builder: (context, state) => UpdatePassword()),

    GoRoute(
        path: '/setup_profile', builder: (context, state) => SetupProfile()),
    // GoRoute(
    //     path: '/family_details', builder: (context, state) => FamilyDetails()),

    // GoRoute(path: '/select_jansevak', builder: (context, state) => ()),
    GoRoute(
        path: '/create_complaint',
        builder: (context, state) => CreateComplaint()),
    GoRoute(path: '/feedback', builder: (context, state) => FeedBack()),
    GoRoute(path: '/faq', builder: (context, state) => Faq()),
    GoRoute(
        path: '/know_my_jansevak',
        builder: (context, state) => knowmyjansevak()),
    GoRoute(path: '/profile', builder: (context, state) => profile()),
    // GoRoute(path: '/create_complaint_botton', builder: (context, state) => ()),
    GoRoute(
        path: '/detail_complaint',
        builder: (context, state) => DetailComplaint()),
    GoRoute(
        path: '/track_complaint',
        builder: (context, state) => TrackComplaint()),
    GoRoute(
        path: '/view_annoncement',
        builder: (context, state) => ViewAnnouncement()),
    GoRoute(
        path: '/detail_annoncement',
        builder: (context, state) => DetailedAnnouncement()),
    GoRoute(
        path: '/detail_complaint',
        builder: (context, state) => DetailComplaint()),
    // GoRoute(path: '/login_password', builder: (context, state) => PasswordLogin()),

    //Jansevak:
    GoRoute(
        path: '/detail_complaint',
        builder: (context, state) => JansevakProfile()),
    GoRoute(
        path: '/detail_complaint', builder: (context, state) => UpdateStatus()),
    GoRoute(path: '/add_nagrik', builder: (context, state) => AddNagrik()),
  ],
);
