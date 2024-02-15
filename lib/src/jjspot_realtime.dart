import '../jjspot_api.dart';
import 'consts.dart';

class JjspotRealtime {
  static List<String> get locationChanels {
    return [
      'databases.$databaseId.'
          'collections.$locationsCollectionId.'
          'documents',
    ];
  }
  // static RealtimeSubscription subscribeToLocations() {
  //   return JJspotApi.instance.realtime.subscribe(
  //     [
  //       'collections.[${JJspotApi.instance.appwriteConfig.locationCollectionId}]',
  //     ],
  //   );
  // }
}
