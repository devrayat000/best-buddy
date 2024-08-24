import {
  ApolloClient,
  InMemoryCache,
  createHttpLink,
  from,
} from "@apollo/client";
import { setContext } from "@apollo/client/link/context";
import { RetryLink } from "@apollo/client/link/retry";
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as Device from "expo-device";
import {
  FieldPolicy,
  KeyArgsFunction,
  KeySpecifier,
} from "@apollo/client/cache/inmemory/policies";
import { type Reference } from "@apollo/client/utilities";

const URL =
  process.env.EXPO_PUBLIC_API_URL ||
  `http://${Device.isDevice ? "192.168.0.101" : "10.0.2.2"}:3000/api/graphql`;
console.log(URL);

const httpLink = createHttpLink({
  uri: URL,
  credentials: "omit",
});

const retryLink = new RetryLink({
  delay: {
    initial: 300,
    max: Infinity,
    jitter: true,
  },
  attempts: {
    max: 5,
    retryIf: (error, _operation) => !!error,
  },
});

async function getBearer() {
  const token = await AsyncStorage.getItem("token");
  return token ? `Bearer ${JSON.parse(token)}` : undefined;
}

const authLink = setContext(async (_, { headers = {} }) => {
  // get the authentication token from local storage if it exists
  const authorization = headers.authorization || (await getBearer());

  // return the headers to the context so httpLink can read them
  return {
    headers: {
      ...headers,
      authorization,
    },
  };
});

const link = from([authLink, retryLink, httpLink]);

function offsetLimitPagination<Ref = Reference>(
  keyArgs?: false | KeySpecifier | KeyArgsFunction | undefined
): FieldPolicy<Ref[]> {
  return {
    keyArgs: keyArgs,
    merge(existing, incoming, { args }) {
      const merged = existing ? existing.slice(0) : [];
      if (incoming) {
        if (args) {
          const offset = args.skip || 0;
          for (var i = 0; i < incoming.length; ++i) {
            merged[offset + i] = incoming[i];
          }
        } else {
          merged.concat(incoming);
        }
      }
      return merged;
    },
  };
}

const cache = new InMemoryCache({
  typePolicies: {
    Query: {
      fields: {
        notices: offsetLimitPagination(false),
        classTests: offsetLimitPagination(false),
      },
    },
    Notice: {
      fields: {
        content: {
          merge: true,
        },
      },
    },
    ClassTest: {
      fields: {
        content: {
          merge: true,
        },
      },
    },
  },
});
const client = new ApolloClient({
  cache,
  ssrMode: false,
  link,
  devtools: {
    enabled: true,
  },
});

export default client;
