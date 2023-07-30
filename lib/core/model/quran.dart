class Quran {
  int? id;
  int? jozz;
  int? suraNo;
  String? suraNameEn;
  String? suraNameAr;
  int? page;
  int? lineStart;
  int? lineEnd;
  int? ayaNo;
  String? ayaText;
  String? ayaTextEmlaey;

  Quran(
      {this.id,
      this.jozz,
      this.suraNo,
      this.suraNameEn,
      this.suraNameAr,
      this.page,
      this.lineStart,
      this.lineEnd,
      this.ayaNo,
      this.ayaText,
      this.ayaTextEmlaey});

  Quran.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jozz = json['jozz'];
    suraNo = json['sura_no'];
    suraNameEn = json['sura_name_en'];
    suraNameAr = json['sura_name_ar'];
    page = json['page'];
    lineStart = json['line_start'];
    lineEnd = json['line_end'];
    ayaNo = json['aya_no'];
    ayaText = json['aya_text'];
    ayaTextEmlaey = json['aya_text_emlaey'];
  }
}