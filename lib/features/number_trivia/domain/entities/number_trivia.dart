import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Entité crée après analyse de la données envoyée par l'API.
///
///
class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia({@required this.text, @required this.number});

  @override
  List<Object> get props => [text, number];
}