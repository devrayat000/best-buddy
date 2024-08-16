/* eslint-disable */
import * as types from './graphql';
import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';

/**
 * Map of all GraphQL operations in the project.
 *
 * This map has several performance disadvantages:
 * 1. It is not tree-shakeable, so it will include all operations in the project.
 * 2. It is not minifiable, so the string of a GraphQL query will be multiple times inside the bundle.
 * 3. It does not support dead code elimination, so it will add unused operations.
 *
 * Therefore it is highly recommended to use the babel or swc plugin for production.
 */
const documents = {
    "\n    mutation AuthenticateUserWithPassword($email: String!, $password: String!) {\n        authenticateUserWithPassword(email: $email, password: $password) {\n            ... on UserAuthenticationWithPasswordSuccess {\n                item {\n                    id\n                    name\n                    email\n                    role\n                }\n                sessionToken\n            }\n            ... on UserAuthenticationWithPasswordFailure {\n                message\n            }\n        }\n    }\n": types.AuthenticateUserWithPasswordDocument,
    "\n    mutation CreateUser($data: UserCreateInput!) {\n        createUser(data: $data) {\n            id\n            name\n            email\n            role\n        }\n    }\n": types.CreateUserDocument,
    "\n    mutation UpdateUser($where: UserWhereUniqueInput!, $data: UserUpdateInput!) {\n        updateUser(where: $where, data: $data) {\n            id\n            expoToken\n        }\n    }\n": types.UpdateUserDocument,
    "\n    query AuthenticatedItem {\n        profile: authenticatedItem {\n            ... on User {\n                id\n                name\n                email\n                role\n                expoToken\n                createdAt\n            }\n        }\n    }\n": types.AuthenticatedItemDocument,
    "\n    mutation EndSession {\n        endSession\n    }\n": types.EndSessionDocument,
    "    \n    query Notices($take: Int, $skip: Int!, $orderBy: [NoticeOrderByInput!]!) {\n        notices(take: $take, skip: $skip, orderBy: $orderBy) {\n            id\n            title\n            content {\n                document\n            }\n            createdAt\n            createdBy {\n                name\n                role\n            }\n        }\n    }\n": types.NoticesDocument,
};

/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 *
 *
 * @example
 * ```ts
 * const query = gql(`query GetUser($id: ID!) { user(id: $id) { name } }`);
 * ```
 *
 * The query argument is unknown!
 * Please regenerate the types.
 */
export function gql(source: string): unknown;

/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "\n    mutation AuthenticateUserWithPassword($email: String!, $password: String!) {\n        authenticateUserWithPassword(email: $email, password: $password) {\n            ... on UserAuthenticationWithPasswordSuccess {\n                item {\n                    id\n                    name\n                    email\n                    role\n                }\n                sessionToken\n            }\n            ... on UserAuthenticationWithPasswordFailure {\n                message\n            }\n        }\n    }\n"): (typeof documents)["\n    mutation AuthenticateUserWithPassword($email: String!, $password: String!) {\n        authenticateUserWithPassword(email: $email, password: $password) {\n            ... on UserAuthenticationWithPasswordSuccess {\n                item {\n                    id\n                    name\n                    email\n                    role\n                }\n                sessionToken\n            }\n            ... on UserAuthenticationWithPasswordFailure {\n                message\n            }\n        }\n    }\n"];
/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "\n    mutation CreateUser($data: UserCreateInput!) {\n        createUser(data: $data) {\n            id\n            name\n            email\n            role\n        }\n    }\n"): (typeof documents)["\n    mutation CreateUser($data: UserCreateInput!) {\n        createUser(data: $data) {\n            id\n            name\n            email\n            role\n        }\n    }\n"];
/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "\n    mutation UpdateUser($where: UserWhereUniqueInput!, $data: UserUpdateInput!) {\n        updateUser(where: $where, data: $data) {\n            id\n            expoToken\n        }\n    }\n"): (typeof documents)["\n    mutation UpdateUser($where: UserWhereUniqueInput!, $data: UserUpdateInput!) {\n        updateUser(where: $where, data: $data) {\n            id\n            expoToken\n        }\n    }\n"];
/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "\n    query AuthenticatedItem {\n        profile: authenticatedItem {\n            ... on User {\n                id\n                name\n                email\n                role\n                expoToken\n                createdAt\n            }\n        }\n    }\n"): (typeof documents)["\n    query AuthenticatedItem {\n        profile: authenticatedItem {\n            ... on User {\n                id\n                name\n                email\n                role\n                expoToken\n                createdAt\n            }\n        }\n    }\n"];
/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "\n    mutation EndSession {\n        endSession\n    }\n"): (typeof documents)["\n    mutation EndSession {\n        endSession\n    }\n"];
/**
 * The gql function is used to parse GraphQL queries into a document that can be used by GraphQL clients.
 */
export function gql(source: "    \n    query Notices($take: Int, $skip: Int!, $orderBy: [NoticeOrderByInput!]!) {\n        notices(take: $take, skip: $skip, orderBy: $orderBy) {\n            id\n            title\n            content {\n                document\n            }\n            createdAt\n            createdBy {\n                name\n                role\n            }\n        }\n    }\n"): (typeof documents)["    \n    query Notices($take: Int, $skip: Int!, $orderBy: [NoticeOrderByInput!]!) {\n        notices(take: $take, skip: $skip, orderBy: $orderBy) {\n            id\n            title\n            content {\n                document\n            }\n            createdAt\n            createdBy {\n                name\n                role\n            }\n        }\n    }\n"];

export function gql(source: string) {
  return (documents as any)[source] ?? {};
}

export type DocumentType<TDocumentNode extends DocumentNode<any, any>> = TDocumentNode extends DocumentNode<  infer TType,  any>  ? TType  : never;