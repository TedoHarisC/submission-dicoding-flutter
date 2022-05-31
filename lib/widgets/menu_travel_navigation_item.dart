import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:submission_dicoding_tedo_hc/cubit/travel_cubit.dart';
import 'package:submission_dicoding_tedo_hc/theme.dart';

class MenuTravelNavigationItem extends StatelessWidget {
  final int index;
  final String menu;

  const MenuTravelNavigationItem({
    Key? key,
    required this.index,
    required this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TravelCubit>().setMenuTravel(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 4,
            margin: const EdgeInsets.only(right: 37),
            decoration: BoxDecoration(
              color: context.read<TravelCubit>().state == index
                  ? kGreenColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            height: 18,
            margin: const EdgeInsets.only(right: 37),
            child: Text(
              menu,
              style: context.read<TravelCubit>().state == index
                  ? greenTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    )
                  : blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
