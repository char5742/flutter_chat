import 'package:flutter_chat/config/const.dart';
import 'package:flutter_chat/provider/user.dart';
import 'package:flutter_chat/services/graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider(
  (ref) => GraphQLClient(
    link: AuthLink(
        getToken: () => ref.watch(accountProvider).accessToken != null
            ? 'Bearer ${ref.watch(accountProvider).accessToken}'
            : null).concat(
      Link.split(
        (request) => request.isSubscription,
        WebSocketLink('wss://$API/graphql',
            config: SocketClientConfig(initialPayload: {
              'Authorization': ref.watch(accountProvider).accessToken != null
                  ? 'Bearer ${ref.watch(accountProvider).accessToken}'
                  : ''
            }),
            subProtocol: GraphQLProtocol.graphqlTransportWs),
        HttpLink('https://$API/graphql'),
      ),
    ),
    cache: GraphQLCache(
      store: HiveStore(),
    ),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.cacheAndNetwork),
      mutate: Policies(fetch: FetchPolicy.cacheAndNetwork),
      watchQuery: Policies(fetch: FetchPolicy.cacheAndNetwork),
    ),
  ),
);

final graphqlProvider = Provider(GraphQLService.new);
