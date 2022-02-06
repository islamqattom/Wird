import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
class DropDownCompetitionList extends StatelessWidget {
  final double screenWidth;
  DropDownCompetitionList({required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.04),
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Card(
          elevation: 15,
          child: DropdownButtonFormField<String>(
            hint: Text(
              SELECT_COMPETITION_NAME,
              style: TextStyle(
                color: Color(HEX_ORANGE_COLOR).withOpacity(0.7)
              ),
            ),
            iconEnabledColor: Color(HEX_BLUE_COLOR),
            iconDisabledColor: Color(HEX_BLUE_COLOR),
            iconSize: screenWidth*0.08,
            decoration: InputDecoration(
              filled: true,
              border: InputBorder.none,
              fillColor: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                value: 'Amr',
                child: Text('Amr'),
              ),
              DropdownMenuItem(
                value: 'Ammar',
                child: Text('Ammar'),
              ),
            ],
            value: AccountCubit.get(context).dropDownValue,
            onChanged: (currentValue){
              AccountCubit.get(context).changeDropDownValue = currentValue!;
            },
          ),
        ),
      ),
    );
  }
}
