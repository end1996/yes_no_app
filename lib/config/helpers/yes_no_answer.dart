import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();

    //Segunda manera de hacerlo
    // return Message(
    //     text: yesNoModel.answer,
    //     fromWho: FromWho.her,
    //     imageUrl: yesNoModel.image);


    //1era manera de hacerlo
    // return Message(
    //   text: response.data['answer'],
    //   fromWho: FromWho.her,
    //   imageUrl: response.data['image']
    //   );
  }
}
