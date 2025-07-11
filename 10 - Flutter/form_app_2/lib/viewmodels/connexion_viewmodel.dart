class ConnexionViewmodel {
  bool verifierCode(String code) {
    if (code == '1234') {
      print("Code correct !");
      return true;
    } else {
      print("Code invalide !");
      return false;
    }
  }
}
