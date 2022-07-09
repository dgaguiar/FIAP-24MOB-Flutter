

import 'package:fiapproject/infra/http/http_adapter.dart';
import 'package:http/http.dart';

HttpAdapter makeHttpAdapter() => HttpAdapter(client: Client());