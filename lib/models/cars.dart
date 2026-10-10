class Cars{
  final String image;
  final String title;
  final int km;
  final int year;
  final String color;
  final double price;
  final int publishedDate;
  final String location;
  final bool acceptTrade;

  const Cars({
    required this.image,
    required this.title,
    required this.km,
    required this.year,
    required this.color,
    required this.price,
    required this.publishedDate,
    required this.location,
    required this.acceptTrade,
  });
}

const List<Cars> carsMock = [
  Cars(
    image: 'assets/images/image01.png',
    title: 'Mercedes-Benz Classe A 160 Classic / Spirit Mec. 2005',
    km: 190000,
    year: 2005,
    color: 'Preto',
    price: 20976,
    publishedDate: 7,
    location: 'São Caetano do Sul, Santa Maria',
    acceptTrade: true
  ),
  Cars(
    image: 'assets/images/image02.png',
    title: 'Volkswagen Brasilia 1600 2P 1980',
    km: 300000,
    year: 1980,
    color: 'Cinza',
    price: 24900,
    publishedDate: 21,
    location: 'São Paulo, Parada Inglesa',
    acceptTrade: false
  ),
  Cars(
    image: 'assets/images/image03.png',
    title: 'Volkswagen Gol GL 1.6 8V Álcool Mec. 2P 1990 AP 1.6 1990',
    km: 180000,
    year: 1990,
    color: 'Branco',
    price: 19500,
    publishedDate: 1,
    location: 'Suzano, Parque Santa Rosa',
    acceptTrade: true
  ),
  Cars(
    image: 'assets/images/image04.png',
    title: 'Volkswagen Fusca 1965 1300',
    km: 52000,
    year: 1965,
    color: 'Azul',
    price: 49900,
    publishedDate: 3,
    location: 'Santos, Vila Mathias',
    acceptTrade: true
  ),
  Cars(
    image: 'assets/images/image05.png',
    title: 'Fiat Uno Mille 1.0 Electronic 4P 1995 8V Gasolina 4P Manual',
    km: 204000,
    year: 1995,
    color: 'Vermelho',
    price: 15000,
    publishedDate: 0,
    location: 'Vila Guilherme - SP',
    acceptTrade: false
  ),
  Cars(
    image: 'assets/images/image06.png',
    title: 'Fiat Stilo 1.8 Attractive Flex 8V 5P 2011',
    km: 209000,
    year: 2011,
    color: 'Prata',
    price: 25000,
    publishedDate: 30,
    location: 'Jandira - SP',
    acceptTrade: true
  ),
  Cars(
    image: 'assets/images/image07.png',
    title: 'Renault Clio Rn/Alize/Expr 1.0 Hi-power 16V 5P 2016',
    km: 89000,
    year: 2016,
    color: 'Preto',
    price: 34900,
    publishedDate: 1,
    location: 'Praia Grande',
    acceptTrade: false
  ),
];