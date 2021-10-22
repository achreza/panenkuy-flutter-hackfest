import 'package:flutter/cupertino.dart';

class PostModel {
  String nama;
  String tanggal;
  String description;
  String komentar;
  Image image;

  PostModel(
      {required this.nama,
      required this.tanggal,
      required this.description,
      required this.komentar,
      required this.image});
}

var postList = [
  PostModel(
      image: Image.network(
          "https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg"),
      nama: "Reza",
      tanggal: "15 Mei 2002",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      komentar: "5"),
  PostModel(
      image: Image.network(
          "https://asset.kompas.com/crops/ScXltG26qzSypU8o2xMryodhDnM=/0x0:1000x667/750x500/data/photo/2020/01/29/5e30e9bc69af5.jpg"),
      nama: "Bintang",
      tanggal: "15 Mei 2003",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      komentar: "5"),
];
