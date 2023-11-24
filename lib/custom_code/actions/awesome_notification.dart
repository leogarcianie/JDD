import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:flutter/material.dart';

import 'package:awesome_notifications/awesome_notifications.dart';

Future awesomeNotification(
  int idRecordatorio,
  String? recordatorioTarea,
  String? mensajeRecordatorio,
  int? recordatorioDia,
  int? recordatorioMes,
  int? recordatorioHora,
  int? recordatorioMinutos,
  bool? recordatorioTareaTurnOn,
) async {
  AwesomeNotifications().initialize(
      '',
      [
        NotificationChannel(
            channelGroupKey: 'scheduled_channel_group',
            channelKey: 'recordatorio',
            channelName: 'recordatorio tarea',
            channelDescription: 'Notificacion para los recordatorios',
            ledColor: Colors.white,
            defaultColor: const Color.fromRGBO(5, 168, 235, 1),
            importance: NotificationImportance.High),
      ],
      debug: true);

  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  String localTimeZone =
      await AwesomeNotifications().getLocalTimeZoneIdentifier();

  if (recordatorioTareaTurnOn == true) {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: idRecordatorio,
          channelKey: 'recordatorio',
          title: recordatorioTarea,
          body: mensajeRecordatorio,
          wakeUpScreen: true,
          category: NotificationCategory.Reminder,
          notificationLayout: NotificationLayout.Default,
        ),
        schedule: NotificationCalendar(
            day: recordatorioDia,
            month: recordatorioMes,
            hour: recordatorioHora,
            minute: recordatorioMinutos,
            second: 00,
            timeZone: localTimeZone,
            preciseAlarm: true,
            repeats: true));
  }
  if (recordatorioTareaTurnOn == false) {
    await AwesomeNotifications().cancel(idRecordatorio);
  }
}