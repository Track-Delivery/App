import 'package:flutter/material.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_string.dart';

class TEditProfileForm extends StatelessWidget {
  const TEditProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
      TextFormField(decoration: const InputDecoration(
        labelText: TTexts.name,),),
      const SizedBox(height: TSizes.spaceBtwItems + 10,),

      TextFormField(decoration: const InputDecoration(
        labelText: TTexts.email,),),
      const SizedBox(height: TSizes.spaceBtwItems + 10,),
      TextFormField(decoration: const InputDecoration(
        labelText: TTexts.userName,),),
      const SizedBox(height: TSizes.spaceBtwItems + 10,),
      TextFormField(decoration: const InputDecoration(
        labelText: TTexts.password,),),
      const SizedBox(height: TSizes.spaceBtwItems + 10,),
      TextFormField(decoration: const InputDecoration(
        labelText: TTexts.birthDate,),),
      const SizedBox(height: TSizes.spaceBtwItems + 10,),    ],));
  }
}

