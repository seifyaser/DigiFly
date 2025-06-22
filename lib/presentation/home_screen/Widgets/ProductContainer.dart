 import 'package:flutter/material.dart';

Widget Productcontainer() {
    return Container(
      width: 272,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://media.printables.com/media/prints/141844/images/1342811_9e966bcc-a33e-49ab-a4d6-cbc6d6362d8c/thumbs/inside/1280x960/png/large_display_gel_imager_box_v1_141844.webp',
                    fit: BoxFit.cover,
                    height: 220,
                    width: double.infinity,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDC3545),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '-17%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: const Icon(
                  Icons.favorite_border,
                  color: Color(0xFF28A745),
                  size: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
            //     SizedBox(height:10,),
                Text(
                  'Default box, number 1',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category 1',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '1500 L.E',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF28A745)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }