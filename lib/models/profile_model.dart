class ProfileModel {
  //Field
  String titlle, url;

  //Construtor
  ProfileModel(this.titlle, this.url);

  ProfileModel.fromAPI(Map<String, dynamic> fromJson) {
    titlle = fromJson['title'];
    url = fromJson['url'];
  }
}
