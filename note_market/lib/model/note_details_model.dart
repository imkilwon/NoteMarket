class NoteDetailsModel {
  final List<String> url;
  final String name;
  final int price;
  final String uid;
  final String content;
  final String sellerName;
  final String sellerUid;

  NoteDetailsModel(
      {required this.url,
      required this.name,
      required this.price,
      required this.uid,
      required this.content,
      required this.sellerName,
      required this.sellerUid});

  Map<String,dynamic>getJson(){
    return{
      'url' : url,
      'name' : name,
      'price': price,
      'uid' : uid,
      'content' : content,
      'sellerName' :sellerName,
      'sellerUid' :sellerUid,
    };
  }
}
