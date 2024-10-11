import 'package:flutter/material.dart';
import 'package:payment_app/core/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_method_list_view.dart';

class PaymentDetailBody extends StatefulWidget {
  const PaymentDetailBody({super.key});

  @override
  State<PaymentDetailBody> createState() => _PaymentDetailBodyState();
}

class _PaymentDetailBodyState extends State<PaymentDetailBody> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
          ),
        ),
        const SliverFillRemaining(
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 12,
                left: 16,
                right: 16,
              ),
              child: CustomButton(
                title: 'Pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
