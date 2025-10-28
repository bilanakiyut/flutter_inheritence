class Kue{
  String nama;
  double harga;

  Kue(this.nama, this.harga);
}

class Cookies extends Kue{
  Cookies(String nama, double harga): super(nama, harga);

  String kueKering(){
    return "Nama Cookies: $nama \n"
    "harga: Rp $harga per pcs \n";
  }
}

class Brownies extends Kue{
  Brownies(String nama, double harga): super(nama, harga);

  String kueCoklat(){
    return "Nama brownies: $nama \n"
    "harga: Rp $harga per loyang \n";
  }
}