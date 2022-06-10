


class ImagesModel {

  String? slug, d_id, title, shortDes, url,caption,imageCat,bgImage,foregroundImage,create_at,update_at;
  bool? openInTab;

  ImagesModel({
      this.slug,
      this.d_id,
      this.title,
      this.shortDes,
      this.url,
      this.caption,
      this.imageCat,
      this.bgImage,
      this.foregroundImage,
      this.create_at,
      this.update_at,
      this.openInTab});

  factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
    slug: json["slug"],
    d_id: json["d_id"],
    title: json["title"],
    shortDes: json["shortDes"],
    url: json["url"],
    caption: json["caption"] ,
    imageCat: json["imageCat"] ,
    bgImage: json["bgImage"] ,
    foregroundImage: json["foregroundImage"] ,
    create_at: json["create_at"] ,
    update_at: json["update_at"] ,
    openInTab: json["openInTab"] ,
  );

  Map<String, dynamic> toJson() => {
    "slug": slug,
    "d_id": d_id,
    "title": title,
    "shortDes": shortDes,
    "url": url,
    "caption": caption,
    "imageCat": imageCat,
    "bgImage": bgImage,
    "foregroundImage": foregroundImage,
    "create_at": create_at,
    "update_at": update_at,
    "openInTab": openInTab,
  };
}

//FirebaseFirestire.collection('sdkfjsdkjf').get();