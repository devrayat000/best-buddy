import {
  ApolloClient,
  InMemoryCache,
  createHttpLink,
  from,
} from "@apollo/client";
import { offsetLimitPagination } from "@apollo/client/utilities";
import { setContext } from "@apollo/client/link/context";
import AsyncStorage from "@react-native-async-storage/async-storage";

const httpLink = createHttpLink({
  uri: "http://192.168.0.104:3000/api/graphql",
  credentials: "omit",
});

const authLink = setContext(async (_, { headers = {} }) => {
  // get the authentication token from local storage if it exists
  const token = await AsyncStorage.getItem("token");

  // return the headers to the context so httpLink can read them
  return {
    headers: {
      authorization: token ? `Bearer ${JSON.parse(token)}` : "",
      ...headers,
    },
  };
});

const link = from([authLink, httpLink]);

const cache = new InMemoryCache({
  typePolicies: {
    Query: {
      fields: {
        notices: offsetLimitPagination(),
      },
    },
  },
});

const client = new ApolloClient({
  cache,
  ssrMode: false,
  link,
});

export default client;
