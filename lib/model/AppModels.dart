// Settings.dart List Model
class ListViewRoute {
  final String title;
  final String subtitle;
  final String content;
  final String image;

  ListViewRoute({required this.title,required this.subtitle,required this.content,required this.image});

  static List<ListViewRoute> allScreens()
  {
    var listOfScreens = <ListViewRoute>[];

    listOfScreens.add(ListViewRoute(title:"Route One",subtitle: "To page One ",content: "19 mill",image: "delhi.png"));
    listOfScreens.add(ListViewRoute(title:"Route Two",subtitle: "To page Two",content: "8 mill",image: "london.png"));
    listOfScreens.add(ListViewRoute(title:"Route Three",subtitle: "To page Three",content: "2.4 mill",image: "vancouver.png"));
    listOfScreens.add(ListViewRoute(title:"Route Four",subtitle: "To page Four",content: "8.1 mill",image: "newyork.png"));
    listOfScreens.add(ListViewRoute(title:"Route Five",subtitle: "To page Five",content: "2.2 mill",image: "paris.png"));
    listOfScreens.add(ListViewRoute(title:"Route Six",subtitle: "To page Six",content: "3.7 mill",image: "berlin.png"));
    return listOfScreens;
  }
}