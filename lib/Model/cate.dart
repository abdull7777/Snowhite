class Categories {
  int? id;
  String? img;
  String? name;
  Categories({this.id, this.img, this.name});
}

class Cate {
  static List<Categories> Clist = [
    Categories(
        id: 1,
        img:
            'https://t3.ftcdn.net/jpg/02/10/85/26/240_F_210852662_KWN4O1tjxIQt8axc2r82afdSwRSLVy7g.jpg',
        name: 'رجالي'),
    Categories(
        id: 2,
        img:
            'https://t3.ftcdn.net/jpg/04/21/52/14/240_F_421521410_zbV047uiixbJQqSKREdwgE3ES0wS1ybr.jpg',
        name: 'نسائي'),
    Categories(
        id: 3,
        img:
            'https://t4.ftcdn.net/jpg/00/48/87/19/240_F_48871984_zcyAUNl47tUEWK2s6A7qjeuVDNrfgfsV.jpg',
        name: 'ولادي'),
    Categories(
        id: 4,
        img:
            'https://t3.ftcdn.net/jpg/01/95/70/32/240_F_195703257_ik3VJrZWEiecMKrQnC8KB2cbPp4R9yAi.jpg',
        name: 'بناتي'),
  ];
}

class Categorie {
  int? id;
  String? image;
  String? name;
  Categorie({this.id, this.image, this.name});

  Categorie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}
