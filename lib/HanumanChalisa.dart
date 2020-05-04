import 'package:flutter/material.dart';

import 'Constants.dart';
import 'NavDrawer.dart';

class HanumanChalisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          backgroundColor: Colors.black, centerTitle: true, title: kAppBarText),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Text(
                'आरती कीजै हनुमान लला की। \n दुष्ट दलन रघुनाथ कला की।। \n जाके बल से गिरिवर कांपे। \n रोग दोष जाके निकट न झांके।। \nअंजनिपुत्र महा बलदायी। \n संतन  के प्रभु सदा सहाई।\n दे बीरा रघुनाथ पठाए।\n  लंका जारी सिया सुध लाए। \n लंका सो कोट समुद्र सी खाई। \n जात पवनसुत बार न लाई।\n लंका जारी असुर संहारे।\n  सियारामजी के काज संवारे।\nलक्ष्मण मूर्छित पड़े सकारे। \n आणि संजीवन प्राण उबारे।\nपैठी पताल तोरि जम कारे। \n अहिरावण की भुजा उखाड़े।\nबाएं भुजा असुरदल मारे। \n दाहिने भुजा संतजन तारे।\nसुर-नर-मुनि जन आरती उतारे। \n जय जय जय हनुमान उचारे।\nकंचन थार कपूर लौ छाई।\n आरती करत अंजना माई।\nलंकविध्वंस कीन्ह रघुराई। \n तुलसीदास प्रभु कीरति गाई।\nजो हनुमान जी की आरती गावै। \n बसी बैकुंठ परमपद पावै। \n || समाप्त ||',
                textAlign: TextAlign.center,
                style: kArtiFontText),
          ),
        ),
      ),
    );
  }
}
