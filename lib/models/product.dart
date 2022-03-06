class Product {
  final int id, price;
  final String title, subTitle, description, imge;

  Product(
      {required this.id,
        required this.price,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.imge});
}
List<Product>products =[
  Product(
    id:1,
    price:59,
    title:"سماعات لاسلكية",
    subTitle:"Samsunge GalaxyBuds+",
    imge:"images/GalaxyBuds+.png",
    description:"سماعات لاسلكية من سامسونج عالية الجودة",
  ),
  Product(
    id:2,
    price:445,
    title:" هاتف جالاكسي فئة note",
    subTitle:"Galaxy note 20 Ultra",
    imge:"images/note20.png",
    description:"هاتف سامسونج جلاكسي نوت 20 الترا,"
        " يأتي مع قلم وشاشة ذات جودة عالية "
        "وكاميرة عالية الدقة و الوضوح ",
  ),
  Product(
    id:3,
    price:285,
    title:"هاتف جالاكسي فئة s",
    subTitle:"Galaxy s21+",
    imge:"images/S21.png",
    description:"هاتف سامسونج س21+, "
        "يمتاز بكاميرة دقة في الوضوح,"
        "بالاضافة الى شاشة بدقة 1440 ,"
        "يدعم القلم S pen  ",
  ),
  Product(
    id:4,
    price:389,
    title:" جالاكسي تاب س+7 ",
    subTitle:"Galaxy Tab S7+ 12.4\" ",
    imge:"images/TabS7.png",
    description:"جالاكسي Tab S7+ بشاشة 12.4\" , "
        "يأتي مع قلم S Pen "
        "مع شاشة كبيرة عالية الجودوة والدقة",
  ),
  Product(
    id:5,
    price:122,
    title:"ساعة جالاكسي 3",
    subTitle:"Galaxy Watch 3",
    imge:"images/watch.png",
    description:"ساعة سامسونج جلاكسي واتش 3 ب شاشة  \"1.5  ",
  ),
  Product(
    id:6,
    price:520,
    title:"جالاكسي زي فليب ",
    subTitle:"Galaxy Z flip",
    imge:"images/Zfold.png",
    description:"هاتف من سامسونج ذو شاشة قابلة للطي ",
  ),
];
