import 'package:flutter/material.dart';
import 'package:flutterapp1/Models/articls_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutterapp1/views/details_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlsModel});
  final ArticlsModel articlsModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped on article: ${articlsModel.title}"); // Debugging print
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailsNew(url: articlsModel.url);
            },
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              width: double.infinity,
              height: 200,
              imageUrl: (articlsModel.image != null &&
                      articlsModel.image!.isNotEmpty)
                  ? articlsModel.image!
                  : "https://www.shutterstock.com/image-vector/default-ui-image-placeholder-wireframes-600nw-1037719192.jpg",
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            articlsModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Text(
            articlsModel.subtitle ?? '',
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
