import '../jjspot_api.dart';

class JjspotRealtime {
  static List<String> get locationChanels {
    return [
      'databases.${JJspotApi.instance.appwriteConfig.databaseId}.'
          'collections.${JJspotApi.instance.appwriteConfig.locationsCollectionId}.'
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
