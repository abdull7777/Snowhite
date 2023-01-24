class Slide {
  String? img;
  String? url;
  Slide({this.img, this.url});
}

class SlideImg {
  static List<Slide> slide = [
    Slide(
        img:
            'https://t3.ftcdn.net/jpg/02/83/60/00/240_F_283600023_pfFoZWwDHS57hVC1U0SEp0qQ6Y5oXc4C.jpg',
        url: 'https://www.versace.com/international/en/home/'),
    Slide(
        img:
            'https://t3.ftcdn.net/jpg/03/37/73/20/240_F_337732066_h0xcA6zJYwU8yKIAaJAPr6RQJyKYY8Y6.jpg',
        url: 'https://www.ralphlauren.com/'),
    Slide(
        img:
            'https://t4.ftcdn.net/jpg/04/04/96/11/240_F_404961188_a9xv8vuBI8OpUICFbMSVsctawO1jdyy4.jpg',
        url: 'https://www.gucci.com/us/en/'),
  ];
}
