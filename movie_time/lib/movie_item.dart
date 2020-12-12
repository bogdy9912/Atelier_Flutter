import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieItem extends StatefulWidget {
  const MovieItem({this.title, this.year, this.rating, this.imageUrl, this.summary, this.urlDownload});

  final String title;
  final int year;
  final double rating;
  final String imageUrl;
  final String summary;
  final String urlDownload;

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
                height: 352,
                width: 232,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (BuildContext context, Object error, StackTrace stackTrace) {
                    return Container(
                      width: 232,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          'Image\ncomming\nsoon!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              AnimatedContainer(
                height: 352,
                width: 232,
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
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            children: <Widget>[
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
                              onPressed: () async {
                                if (await canLaunch(widget.urlDownload)) {
                                  await launch(widget.urlDownload);
                                } else {
                                  print('Could not launch');
                                  showDialog<Widget>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Download doesn\'t work'),
                                        actions: <Widget>[
                                          FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('CLOSE'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
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
      },
    );
  }
}
