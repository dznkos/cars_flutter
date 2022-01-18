
import 'dart:convert';

Car carFromJson(String str) => Car.fromJson(json.decode(str));

String carToJson(Car data) => json.encode(data.toJson());

class Car {
    Car({
        this.carName = '',
        this.origen = '',
        this.years = '',
        this.motor = '',
        this.precio = '',
        this.aceleracion = '',
        this.maxVelocidad = '',
        this.fabricante = '',
        this.urlImage = '',
    });

    String carName;
    String origen;
    String years;
    String motor;
    String precio;
    String aceleracion;
    String maxVelocidad;
    String fabricante;
    String urlImage;

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        carName: json["carName"],
        origen: json["origen"],
        years: json["years"],
        motor: json["motor"],
        precio: json["precio"],
        aceleracion: json["aceleracion"],
        maxVelocidad: json["maxVelocidad"],
        fabricante: json["fabricante"],
        urlImage: json["urlImage"],
    );

    Map<String, dynamic> toJson() => {
        "carName": carName,
        "origen": origen,
        "years": years,
        "motor": motor,
        "precio": precio,
        "aceleracion": aceleracion,
        "maxVelocidad": maxVelocidad,
        "fabricante": fabricante,
        "urlImage": urlImage,
    };
}
