import 'dart:html';

import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:pedantic/pedantic.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Zilliqa {

  final String api;
  late Client zilClient;

  Zilliqa(this.api);

  void connect() async {
    try {
      var socket = WebSocketChannel.connect(Uri.parse(this.api));
      this.zilClient = Client(socket.cast<String>());
      unawaited(zilClient.listen());
    } catch (e) {
      throw e.toString();
    }
  }

  void disconnect() async {
    try {
      unawaited(this.zilClient.close());
    } catch (e) {
      throw e.toString();
    }
  }

  Future<dynamic> sendRequest(String method, [parameters]) async {
    var response;
    try {
      response = this.zilClient.sendRequest(method, parameters);
    } catch (e) {
      throw e.toString();
    }
    return response;
  }

  Client get client => this.zilClient;

}