import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatefulWidget {
  const MovieItem({this.title, this.year, this.rating, this.imageUrl, this.summary});

  final String title;
  final int year;
  final double rating;
  final String imageUrl;
  final String summary;

  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Stack(
            children: <Widget>[
              Container(
                height: 350,
                //width: 250,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              AnimatedContainer(
                height: 350,
                width: 234,
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
                decoration: BoxDecoration(
                  color: _isPressed ? Colors.black.withOpacity(0.85) : Colors.transparent,
                ),
                child: _isPressed
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Year: ${widget.year}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                widget.rating > 0 ? 'Rating: ${widget.rating}' : 'Rating unknown',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                widget.summary,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          RaisedButton(
                              color: Colors.yellow,
                              onPressed: () {},
                              child: const Text(
                                'Download',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ))
                        ],
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        print('la');
      },
    );
  }
}
