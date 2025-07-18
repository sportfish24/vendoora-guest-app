
import 'package:cloud_firestore/cloud_firestore.dart';

Future<Map<String, dynamic>> fetchGuestAccessKeys(String guestId) async {
  final reservation = await FirebaseFirestore.instance
      .collection('reservations')
      .doc(guestId)
      .get();

  final roomId = reservation['roomId'];
  final keyDoc = await FirebaseFirestore.instance
      .collection('rooms')
      .doc(roomId)
      .collection('access_tokens')
      .doc('zones')
      .get();

  return keyDoc.data() ?? {};
}
