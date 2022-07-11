class Game {
  int id = 0;
  String? title;
  String? category;
  double? rating;
  double? price;
  String? overview;
  String? image;

  Game({
    required this.id,
    required this.title,
    required this.category,
    required this.rating,
    required this.price,
    required this.overview,
    required this.image,
  });
}

List<Game> games = [
  Game(
    id: 1,
    title: 'Stumble Guys: Multiplayer Royale',
    category: 'Action',
    rating: 4.4,
    price: 49.99,
    overview:
        'Stumble Guys is a massively multiplayer party knockout game with up to 32 players online intention to struggle through levels round after round of escalating chaos, until one victor remains! If you fall, just start again and run. Join the endless running fun! Dive into a series of ridiculous challenges and bizarre obstacles, knock down your rivals and overcome everything to win! So, are you ready to get totally wipe out? Download Stumble Guys the ultimate knockout game now and take a part of this ultimate madness. Invite your dudes also and beat them all!',
    image: 'assets/stumble.webp',
  ),
  Game(
    id: 2,
    title: 'Block Crazy Robo World',
    category: 'Simulation',
    rating: 3.8,
    price: 25.80,
    overview:
        'Block Crazy Robo World - This fun and amazing craft style game will appeal to everyone who loves adventure, survival, construction, hunting, fishing, to create something, incredible, unique, grandiose. It is a sandbox with a lot of possibilities. Build your own city in a cubic craft world! This great game will give you a lot of pleasure and a lot of impressions !!!',
    image: 'assets/block.webp',
  ),
  Game(
    id: 3,
    title: 'Fish Eater.io',
    category: 'Action',
    rating: 4.1,
    price: 35.20,
    overview:
        'Have you played Fish Eater? Take a deep breath and delve down into an underwater world! You start as an ordinary fish. Your goal is to battle, eat, grow, and evolve! Until you are the Lord of the Sea and have conquered all! Merge, evolve, grow in power, and devour your foes! Explore the depths, fight sharks, and take your place at the top of the food chain! Can YOU become the true overlord of the ocean?!',
    image: 'assets/fish.webp',
  ),
  Game(
    id: 4,
    title: 'Cat Paradise',
    category: 'Casual',
    rating: 3.7,
    price: 15.45,
    overview:
        'Cat Paradise is a classic and simple merging game. Swipe your fingertips to merge 2 cats of the same level to get huge rewards.At the beginning you are a small cute cat. You need to buy new one and merge the same cats to get better and upgraded ones. Manage each Cat nest and cats.',
    image: 'assets/cat.webp',
  ),
  Game(
    id: 5,
    title: 'Pocket City',
    category: 'Simulation',
    rating: 4.8,
    price: 50.00,
    overview:
        'Build your own city as mayor! Create residential, commercial, and industrial zones. Build parks and recreation spots. Respond to crime and disasters. Watch your city come alive! No microtransactions or long wait times! Everything is unlocked and rewarded through gameplay. Pocket City re-imagines classic city building simulation gameplay for Android devices',
    image: 'assets/pocket.webp',
  ),
  Game(
    id: 6,
    title: 'Rovio Classics: AB',
    category: 'Casual',
    rating: 4.7,
    price: 43.20,
    overview:
        'Rebuilt from the ground up, Rovio Classics: Angry Birds is a faithful re-make of the original Angry Birds game that took the world by storm! The survival of the Angry Birds is at stake. Dish out revenge on the greedy pigs who stole their eggs. Use the unique powers of each bird to destroy the pigs\' defenses. Angry Birds features challenging physics-based gameplay and hours of replay value. Each level requires logic, skill and force to solve!',
    image: 'assets/rovio.webp',
  ),
  Game(
    id: 7,
    title: 'Bully: Anniversary Edition',
    category: 'Action',
    rating: 3.3,
    price: 37.23,
    overview:
        'The Rockstar Games tradition of groundbreaking, original gameplay and humorous tongue-in-cheek storytelling invades the schoolyard in Bully: Anniversary Edition. As mischievous 15-year-old Jimmy Hopkins you’ll navigate the social hierarchy of the corrupt and crumbling prep school, Bullworth Academy. Stand up to bullies, get picked on by teachers, beat the jocks at dodge ball, play pranks, win or lose the girl and survive a year in the worst school around. Bully: Anniversary Edition includes everything from the critically acclaimed Bully: Scholarship Edition plus support for high-resolution displays, enhanced graphics, improved lighting and textures, and controls redesigned for touch gameplay, all while adding multiplayer with new Friend Challenges.',
    image: 'assets/bully.webp',
  ),
  Game(
    id: 8,
    title: 'Snake Lite',
    category: 'Action',
    rating: 4.3,
    price: 40.23,
    overview:
        'Snake Zone.io is a casual arcade worm game. Different from other slither&snake games, not only can you collect yummies and different powerups in the arena, but you can also compete with other players to see who is the wormmax snake!. Eat the all food and become the biggest snake in the wormzone! Join us, play and slither like a snake with the world player.',
    image: 'assets/snake.webp',
  ),
  Game(
    id: 9,
    title: 'Crazy Fruits 2048',
    category: 'Casual',
    rating: 2.1,
    price: 15.60,
    overview:
        '"Crazy Fruits 2048" is an innovative and interesting puzzle casual game. Two smaller fruits collided to synthesize a larger fruit, and they continued to collide and synthesize, and finally synthesized the ultimate goal - a large watermelon. Refreshing graphics, simple and pure gameplay, a good companion for recreation and entertainment. Simple operation and easy to use, slide your finger for a smooth experience. Keep on synthesizing fruit scores, collecting bigger fruits and breaking through challenges. Endless mode game levels, play anytime, anywhere, let you play enough at a time.',
    image: 'assets/fruit.webp',
  ),
  Game(
    id: 10,
    title: 'Aquarium Land',
    category: 'Arcade',
    rating: 4.5,
    price: 27.15,
    overview:
        'Swim, collect fishes, expand your aquarium Mystery animal are in the sea Invest your Aquarium Park and explore the sea Visitors want more beautiful fishes.',
    image: 'assets/land.webp',
  ),
];
