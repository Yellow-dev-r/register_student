import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

abstract class StudentsRepositoryProtocol {
  Future<void> getStudentToDB(StudentsDto student);
  Future<List<StudentsDto>> getStudentsList();
  Future<void> deleteStudent(String id);
}

class StudentsRepository extends StudentsRepositoryProtocol {
  Future<void> getStudentToDB(StudentsDto student) async {
    final dbRef = firestore.collection(collectionPath).doc();

    await dbRef.set(student.toJson());
    StudentsDto data = student.copyWith(id: dbRef.id);
    await getRefId(dbRef.id).set(data.toJson());
  }

  Future<List<StudentsDto>> getStudentsList() async {
    try {
      final dbRef = await firestore.collection(collectionPath).get();
      if (dbRef.docs.isNotEmpty && dbRef.docs.length > 0) {
        final result = dbRef.docs.map((doc) {
          return StudentsDto.fromJson(doc.data());
        }).toList();
        return result;
      }
      throw Exception('docs are empty and length < 0');
    } catch (e) {
      throw Exception('Error getting stundets: $e');
    }
  }

  DocumentReference<Map<String, dynamic>> getRefId(String id) =>
      firestore.collection(collectionPath).doc(id);
      
        @override
        Future<void> deleteStudent(String id) async{
              await firestore.collection(collectionPath).doc(id).delete();

          
        }
}
