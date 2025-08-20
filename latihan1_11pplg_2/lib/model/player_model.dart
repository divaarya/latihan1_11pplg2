class Player {
  String nama;
  String posisi;
  int nomorPunggung;
  String imageAsset;

  Player({
    required this.nama,
    required this.posisi,
    required this.nomorPunggung,
    required this.imageAsset,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      nama: json['nama'],
      posisi: json['posisi'],
      nomorPunggung: json['nomorPunggung'],
      imageAsset: json['imageAsset'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'posisi': posisi,
      'nomorPunggung': nomorPunggung,
      'imageAsset': imageAsset,
    };
  }
}
