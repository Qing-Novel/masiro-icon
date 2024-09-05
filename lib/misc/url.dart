class MasiroUrl {
  static const baseUrl = 'https://masiro.me/';
  static const baseUrlWithoutSlash = 'https://masiro.me';

  // Pages
  static const adminUrl = 'https://masiro.me/admin'; // Home page
  static const loginUrl = 'https://masiro.me/admin/auth/login'; // Login page
  static const collectionUrl =
      'https://masiro.me/admin/novels?collection=1'; // My collection page
  static const novelViewUrl =
      'https://masiro.me/admin/novelView'; // Novel detail page
  static const novelReadingUrl =
      'https://masiro.me/admin/novelReading'; // Novel reading page

  // APIs
  static const recentUpdates = 'admin/recentUpdates';
  static const loadMoreNovels = 'admin/loadMoreNovels';
  static const getChapterComments =
      'admin/getChapterComments?page=1&perPage=10&chapter_id=48762&has_auth=0'; // Referer: https://masiro.me/admin/novelReading?cid=123（current page）, X-CSRF-TOKEN： xxxx
  static const collectNovel =
      'https://masiro.me/admin/collectNovel?novel_id=833'; // Referer: https://masiro.me/admin/novelView?novel_id=123, X-CSRF-TOKEN: xxxx(from detail page)
}

extension ImageUrl on String {
  String toUrl() {
    return '${MasiroUrl.baseUrlWithoutSlash}$this';
  }
}