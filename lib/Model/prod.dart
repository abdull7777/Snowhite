class Prod {
  int catid;
  String name;
  String img;
  double price;
  double? oldprice;
  double rating;
  Prod(
      {required this.catid,
      required this.img,
      required this.name,
      required this.price,
      this.oldprice,
      required this.rating});
}

class ProdList {
  static List<Prod> Menly = [
    Prod(
        catid: 1,
        img:
            'https://t3.ftcdn.net/jpg/03/51/34/08/240_F_351340803_L9IokosgWo3JmeecNaVbpf0z9sMRYZzk.jpg',
        name: ' شميز رجالي',
        price: 8000,
        rating: 4.5),
    Prod(
        catid: 1,
        img:
            'https://t3.ftcdn.net/jpg/03/51/34/08/240_F_351340803_L9IokosgWo3JmeecNaVbpf0z9sMRYZzk.jpg',
        name: ' جينز رجالي',
        price: 15000,
        rating: 5),
    Prod(
        catid: 1,
        img:
            'https://t3.ftcdn.net/jpg/01/63/00/90/240_F_163009000_V7EzLjo89U01mkWYHrcstuupC76mzdLL.jpg',
        name: ' فنيله رجالي',
        price: 7000,
        rating: 3.3),
    Prod(
        catid: 1,
        img:
            'https://t3.ftcdn.net/jpg/03/37/43/18/240_F_337431857_diVpiQIaP0dcWcNJAe6CZjN4cyIU1DBV.jpg',
        name: ' جاكت رجالي',
        price: 16000,
        rating: 4),
  ];

  static List<Prod> Boys = [
    Prod(
        catid: 3,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: ' شميز ولادي',
        price: 6000,
        rating: 4),
    Prod(
        catid: 3,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: ' جينز ولادي',
        price: 8000,
        rating: 4.5),
    Prod(
        catid: 3,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: 'فنيله ولادي',
        price: 5000,
        rating: 5),
    Prod(
        catid: 3,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: ' جاكت ولادي',
        price: 10000,
        rating: 4),
  ];

  static List<Prod> Women = [
    Prod(
        catid: 2,
        img:
            'https://t3.ftcdn.net/jpg/04/99/50/92/240_F_499509232_kZJL0EFbFbtzS59cJYwTtb5eekEdf6kE.jpg',
        name: 'بلوزه',
        price: 6000,
        rating: 3.5),
    Prod(
        catid: 2,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: 'جينز نسائي',
        price: 7000,
        rating: 4),
    Prod(
        catid: 2,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: 'فستان نسائي',
        price: 35000,
        rating: 4.5),
    Prod(
        catid: 2,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: 'جاكت نسائي',
        price: 10000,
        rating: 5),
  ];

  static List<Prod> Girls = [
    Prod(
        catid: 4,
        img:
            'https://t3.ftcdn.net/jpg/04/99/50/92/240_F_499509232_kZJL0EFbFbtzS59cJYwTtb5eekEdf6kE.jpg',
        name: ' بلوزه بناتي',
        price: 4000,
        rating: 5),
    Prod(
        catid: 4,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: 'جينز بناتي',
        price: 6000,
        rating: 4),
    Prod(
        catid: 4,
        img:
            'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
        name: 'فستان بناتي',
        price: 12000,
        rating: 4.5),
    Prod(
        catid: 4,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: 'جاكت بناتي',
        price: 8000,
        rating: 3.5),
  ];

//   static List<Prod> Plist = [
//     Prod(
//         catid: 1,
//         img:
//             'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
//         name: ' شميز رجالي',
//         price: 8000,
//         rating: 4.5),
//     Prod(
//         catid: 1,
//         img:
//             'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
//         name: ' جينز رجالي',
//         price: 15000,
//         rating: 5),
//     Prod(
//         catid: 1,
//         img:
//             'https://t3.ftcdn.net/jpg/01/58/78/82/240_F_158788298_7WNz5b86SEcjn3aFAP31vQhzvXTjNJkK.jpg',
//         name: ' فنيله رجالي',
//         price: 7000,
//         rating: 3.3),
//     Prod(
//         catid: 1,
//         img: 'asset/freezer.jpeg',
//         name: ' جاكت رجالي',
//         price: 16000,
//         rating: 4),
//     Prod(
//         catid: 3,
//         img: 'asset/freezer.jpeg',
//         name: ' شميز ولادي',
//         price: 6000,
//         rating: 4),
//     Prod(
//         catid: 3,
//         img: 'asset/freezer.jpeg',
//         name: ' جينز ولادي',
//         price: 8000,
//         rating: 4.5),
//     Prod(
//         catid: 3,
//         img: 'asset/freezer.jpeg',
//         name: 'فنيله ولادي',
//         price: 5000,
//         rating: 5),
//     Prod(
//         catid: 3,
//         img: 'asset/freezer.jpeg',
//         name: ' جاكت ولادي',
//         price: 10000,
//         rating: 4),
//     Prod(
//         catid: 2,
//         img: 'asset/freezer.jpeg',
//         name: 'بلوزه',
//         price: 6000,
//         rating: 3.5),
//     Prod(
//         catid: 2,
//         img: 'asset/freezer.jpeg',
//         name: 'جينز نسائي',
//         price: 7000,
//         rating: 4),
//     Prod(
//         catid: 2,
//         img: 'asset/freezer.jpeg',
//         name: 'فستان نسائي',
//         price: 35000,
//         rating: 4.5),
//     Prod(
//         catid: 2,
//         img: 'asset/freezer.jpeg',
//         name: 'جاكت نسائي',
//         price: 10000,
//         rating: 5),
//     Prod(
//         catid: 4,
//         img: 'asset/freezer.jpeg',
//         name: ' بلوزه بناتي',
//         price: 4000,
//         rating: 5),
//     Prod(
//         catid: 4,
//         img: 'asset/freezer.jpeg',
//         name: 'جينز بناتي',
//         price: 6000,
//         rating: 4),
//     Prod(
//         catid: 4,
//         img: 'asset/freezer.jpeg',
//         name: 'فستان بناتي',
//         price: 12000,
//         rating: 4.5),
//     Prod(
//         catid: 4,
//         img: 'asset/freezer.jpeg',
//         name: 'جاكت بناتي',
//         price: 8000,
//         rating: 3.5),
//   ];
}

class Discounts {
  static List<Prod> Dislist = [
    Prod(
        catid: 1,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: ' شميز رجالي',
        price: 8000,
        oldprice: 12000,
        rating: 4.5),
    Prod(
        catid: 3,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: ' شميز ولادي',
        price: 6000,
        oldprice: 8000,
        rating: 4),
    Prod(
        catid: 2,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: 'جينز نسائي',
        price: 7000,
        oldprice: 9000,
        rating: 4),
    Prod(
        catid: 4,
        img:
            'https://t4.ftcdn.net/jpg/04/80/65/45/240_F_480654529_ypiKpGj5qlNOuWmeWEr6zQhZlNaRiNVa.jpg',
        name: 'فستان بناتي',
        price: 12000,
        oldprice: 16000,
        rating: 4.5),
  ];
}
