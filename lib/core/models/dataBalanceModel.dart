class DataBalance {
  DataBalance({
    required this.databalancecard,
  });

  List<Databalancecard> databalancecard;

  factory DataBalance.fromJson(Map<String, dynamic> json) => DataBalance(
        databalancecard: List<Databalancecard>.from(
            json["databalancecard"].map((x) => Databalancecard.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "databalancecard":
            List<dynamic>.from(databalancecard.map((x) => x.toJson())),
      };
}

class Databalancecard {
  Databalancecard({
    this.id = 0,
    this.indicatorvalue = 0.00,
    this.image = '',
    this.balancetype = '',
    this.price = '',
    this.validity = '',
    dataBalance,
  });

  int id;
  double indicatorvalue;
  String image;
  String balancetype;
  String price;
  String validity;

  factory Databalancecard.fromJson(Map<String, dynamic> json) =>
      Databalancecard(
        id: json["id"],
        indicatorvalue: json["indicatorvalue"].toDouble(),
        image: json["image"],
        balancetype: json["balancetype"],
        price: json["price"],
        validity: json["validity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "indicatorvalue": indicatorvalue,
        "image": image,
        "balancetype": balancetype,
        "price": price,
        "validity": validity,
      };
}
