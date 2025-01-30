class Content {
  final String title;
  final String imageUrl;
  final String description;
  final String category;
  final String backdrop;
  final String editorNote;
  double? userRating;
  String? userComment;

  Content({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.category,
    required this.backdrop,
    required this.editorNote,
    this.userRating,
    this.userComment,
  });
}
List<Content> favoriteList = [];

List<Content> contentList = [
  Content(
    title: "Inception", //görsel eklendi
    imageUrl: "assets/images/Inception.jpg",
    description: "Rüya içinde rüya konseptini işleyen efsanevi bir film.",
    category: "Film",
    backdrop: "assets/images/inception_backdrop.jpg",
    editorNote:
    "Christopher Nolan'ın zekice işlediği bu film, rüya ve gerçeklik arasında kaybolmanıza neden olacak. Mutlaka izlenmeli!",
  ),
  Content(
    title: "Breaking Bad", //görsel eklendi
    imageUrl: "assets/images/break.jpg",
    description:
    "Kimya öğretmeninden uyuşturucu baronuna dönüşen bir adamın hikayesi.",
    category: "Dizi",
    backdrop: "assets/images/breaking_bad_backdrop.jpg",
    editorNote:
    "Dizi tarihine damga vuran bu yapım, harika bir karakter gelişimi sunuyor. İzlemeden geçmeyin. Skylar'a gereksiz yükleniliyor.",
  ),
  Content(
    title: "Attack on Titan", //görsel eklendi
    imageUrl: "assets/images/aot.jpg",
    description: "İnsanlığın Titanlarla olan savaşını anlatan epik bir anime.",
    category: "Anime",
    backdrop: "assets/images/aot_backdrop.jpg",
    editorNote:
    "Efsanevi sahneleri ve derin hikayesiyle(?) anime dünyasının mihenk taşlarından biri. Kaçırmayın! Ayrıca Eren dandik bir kişidir.",
  ),
  Content(
    title: "Neon Genesis Evangelion", //görsel eklendi
    imageUrl: "assets/images/evangelion.jpg",
    description: "Gizemli varlıklar ve insan ruhunun derinliklerine inen bir anime klasiği.",
    category: "Anime",
    backdrop: "assets/images/evangelion_backdrop.jpg",
    editorNote: "En kült animelerin başında gelen yapım. Jenerik müziği ‘A cruel Angel's Thesis' Japonlar için bir milli marştır. Daha önce izlememiş biri olarak ‘Robotlar birbirlerini dövüyor, ne var bunda?’ gibi bir düşünceniz varsa yanılıyorsunuz, Evangelion zihnin derinliklerine sesleniyor, en derinlerinize iniyor ve sizi tekmeliyor! Birçok psikoloji kurama ve metefora sahip olan bu yapım en sevdiğim animelerden biridir.",
  ),
  Content(
    title: "One Piece", //görsel
    imageUrl: "assets/images/one_piece.jpg",
    description: "Luffy ve ekibinin denizlerdeki macerası ve hayallerinin peşinden gitme hikayesi.",
    category: "Anime",
    backdrop: "assets/images/one_piece_backdrop.jpg",
    editorNote: "Dev bir macera. Eiichiro Oda'nın eşsiz kalemi sizleri hem güldürecek hem de ağlatacaktır. Birbirinden renkli karakterleri yüzlerce bölüm sizlere eşlik edecek, daha doğrusu siz onlara eşlik edecek beraber denizlere açılacaksınız! Shonen'ler arasında en sevdiğim ana karakter Monkey D Luffy'nin arkasında One Piece hazinesine doğru uzanan destansı bir yolculuk!",
  ),
  Content(
    title: "Kill Bill: Volume 1", //görseş
    imageUrl: "assets/images/kill_bill_1.jpg",
    description: "Bir kadının intikam yolculuğuna çıktığı Tarantino'nun stilize edilmiş başyapıtı.",
    category: "Film",
    backdrop: "assets/images/kill_bill_1_backdrop.jpg",
    editorNote: "Kanlı dövüş sahneleri ve Tarantino'nun özgün tarzı ile Kill Bill ilk görüşte bir aşktır.",
  ),
  Content(
    title: "Game of Thrones", //eklendi
    imageUrl: "assets/images/game_of_thrones.jpg",
    description: "Westeros'un taht mücadelesini konu alan epik bir dizi.",
    category: "Dizi",
    backdrop: "assets/images/game_of_thrones_backdrop.jpg",
    editorNote: "İhanet, güç ve ejderhalar... Game of Thrones, televizyon tarihinin en büyük yapımlarından biri. Final sezonu hakkında konuşmayalım.",
  ),
  Content(
    title: "Dune", //eklendi
    imageUrl: "assets/images/dune.jpg",
    description: "Çöl gezegeni Arrakis'te geçen, güç ve hayatta kalma mücadelesini anlatan destansı bir bilim kurgu filmi.",
    category: "Film",
    backdrop: "assets/images/dune_backdrop.jpg",
    editorNote: "Frank Herbert'in başyapıtından uyarlanan Dune, görsel ve anlatısal anlamda nefes kesici. Kum solucanlarına hazır olun!",
  ),
  Content(
    title: "Star Wars a New Hope", //eklendi
    imageUrl: "assets/images/star_wars.jpg",
    description: "Galaksiyi kurtarmaya çalışan isyancıların ve Sith ile Jedi arasındaki efsanevi mücadelenin hikayesi.",
    category: "Film",
    backdrop: "assets/images/star_wars_backdrop.jpg",
    editorNote: "StarWars, bilim kurgu dünyasının mihenk taşlarından biri. Güç seninle olsun!",
  ),
  Content(
    title: "Black Mirror", //eklendi
    imageUrl: "assets/images/black_mirror.jpg",
    description: "Teknolojinin karanlık yüzünü ele alan, distopik ve düşündürücü bir antoloji dizisi.",
    category: "Dizi",
    backdrop: "assets/images/black_mirror_backdrop.jpg",
    editorNote: "Geleceğe dair rahatsız edici senaryoları ile Black Mirror, her bölümüyle sizi düşündürecek. Topluma ayna tutuyor!",
  ),
  Content(
    title: "JoJo’s Bizarre Adventure: Golden Wind", //eklendi
    imageUrl: "assets/images/jojo_golden_wind.jpg",
    description: "Giorno Giovanna’nın İtalyan mafyasında yükselişini konu alan aksiyon dolu bir anime.",
    category: "Anime",
    backdrop: "assets/images/jojo_golden_wind_backdrop.jpg",
    editorNote: "Mafya, Stands ve mükemmel müzikler! JoJo Golden Wind, serinin en stil sahibi bölümlerinden biri. Arrivederci!",
  ),
  Content(
    title: "xxxHolic",
    imageUrl: "assets/images/xxxholic.jpg",
    description: "Doğaüstü varlıklarla etkileşim kurabilen bir gencin, esrarengiz bir cadıyla yaptığı anlaşmanın hikayesi.",
    category: "Anime",
    backdrop: "assets/images/xxxholic_backdrop.jpg",
    editorNote: "Benzersiz çizimleri ile pek bilinmeyen bir inci. 'Kader, tesadüflerden daha fazlasıdır.'",
  ),
];