import 'package:flutter/material.dart';
import 'package:iwillbefit/layouts/startpage.dart';
import 'package:iwillbefit/uicomponents/dots.dart';

class Carousel extends StatefulWidget {
  @override
  CarouselState createState() {
    return new CarouselState();
  }
}

class CarouselState extends State<Carousel> {

  final _controller = new PageController();
  static const _duration = const Duration(microseconds: 3000);
  static const _curve = Curves.ease;
  final _arrowColor = Colors.black.withOpacity(0.8);

  var pages = [];

  CarouselState(){
    pages.add(StartPage("assets/images/b_hanging_c.jpg","Start Here, Stay Fit.."));
    pages.add(StartPage("assets/images/b_abs_c.jpg","Start Here, Stay Fit.."));
    pages.add(StartPage("assets/images/two_joggers_c.jpg","Start Here, Stay Fit.."));
  }
  int index;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Stack(
        children: <Widget>[
          
          PageView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _controller,
            itemBuilder: (context,index){
              this.index=index;  
              return pages[index % pages.length];
            },
          ),

          new Positioned(
            right: 0.0,
            bottom: 0.0,
            left: 0.0,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: DotsIndicator(
                  controller: _controller,
                  itemCount: pages.length,
                  onPageSelected: (pageno){
                    _controller.animateToPage(
                      pageno % index,
                      duration: _duration,
                      curve: _curve,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}