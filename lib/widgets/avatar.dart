import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/assets.dart';

class Avatar extends StatelessWidget {
  final String? displayImage;
  final bool? status;

  Avatar({required this.displayImage, this.status });
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    // if(status == true)
    //   {
    //     statusIndicator = Positioned(
    //       bottom: 2,
    //       right: 3,
    //       child: Container(
    //         width: 15,
    //         height: 15,
    //         decoration: BoxDecoration(
    //             color: Colors.greenAccent,
    //             shape: BoxShape.circle,
    //             border: Border.all(color: Colors.white,width: 2,)
    //         ),
    //       ),
    //     );
    //   }else
    //     {
    //       statusIndicator = const SizedBox();
    //     }
    status == true?
        statusIndicator = Positioned(
          bottom: 2,
          right: 3,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 2,)
            ),
          ),
        ) : statusIndicator = const SizedBox();
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 7,right: 7),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage!,
               width: 50,
               height: 50,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
