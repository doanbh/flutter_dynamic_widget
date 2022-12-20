class DownloadItems {
  static const documents = [
    // DownloadItem(
    //   name: 'Android Programming Cookbook',
    //   url:
    //       'http://enos.itcollege.ee/~jpoial/allalaadimised/reading/Android-Programming-Cookbook.pdf',
    // ),
    // DownloadItem(
    //   name: 'iOS Programming Guide',
    //   url:
    //       'http://englishonlineclub.com/pdf/iOS%20Programming%20-%20The%20Big%20Nerd%20Ranch%20Guide%20(6th%20Edition)%20[EnglishOnlineClub.com].pdf',
    // ),
    // DownloadItem(
    //     name: 'Download image',
    //     url: 'https://cdn-133.anonfiles.com/127e3fM2yf/3c9c353e-1670990161/Screen%20Shot%202022-12-09%20at%2015.46.54.png'
    // ),
    // DownloadItem(
    //     name: 'Download Module', url: 'https://cdn-117.anonfiles.com/d5613eM3y7/17c87906-1670989893/program.evc'
    // ),
    DownloadItem(
        name: 'Download IR Module', url: 'https://cdn-129.anonfiles.com/r7f382Ndy4/0382f82f-1671539961/my_file.txt'
    )
  ];

  static const images = [
    DownloadItem(
      name: 'Arches National Park',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/6/60/The_Organ_at_Arches_National_Park_Utah_Corrected.jpg',
    ),
    DownloadItem(
      name: 'Canyonlands National Park',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/7/78/Canyonlands_National_Park%E2%80%A6Needles_area_%286294480744%29.jpg',
    ),
    DownloadItem(
      name: 'Death Valley National Park',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/b/b2/Sand_Dunes_in_Death_Valley_National_Park.jpg',
    ),
    DownloadItem(
      name: 'Gates of the Arctic National Park and Preserve',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/e/e4/GatesofArctic.jpg',
    ),
  ];

  static const videos = [
    DownloadItem(
      name: 'Big Buck Bunny',
      url:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    ),
    DownloadItem(
      name: 'Elephant Dream',
      url:
          'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    ),
  ];

  static const apks = [
    DownloadItem(
      name: 'Spitfire',
      url:
          'https://github.com/bartekpacia/spitfire/releases/download/v1.2.0/spitfire.apk',
    )
  ];
}

class DownloadItem {
  const DownloadItem({required this.name, required this.url});

  final String name;
  final String url;
}
