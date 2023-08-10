import 'dart:async';

import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:shop_app_bloc/data/cart_items.dart';
import 'package:shop_app_bloc/features/home/models/home_product_data_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitailEvent>(cartInitailEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitailEvent(
      CartInitailEvent event, Emitter<CartState> emit) {
    emit(
      CartSuccessState(cartItems: cartItems),
    );
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productDataModel);
    emit(
      CartSuccessState(cartItems: cartItems),
    );
  }
}
