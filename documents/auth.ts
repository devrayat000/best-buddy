import { gql } from "@/__generated__";

export const AUTHENTICATE_USER_WITH_PASSWORD = gql(`
    mutation AuthenticateUserWithPassword($email: String!, $password: String!) {
        authenticateUserWithPassword(email: $email, password: $password) {
            ... on UserAuthenticationWithPasswordSuccess {
                item {
                    id
                    name
                    email
                    role
                }
                sessionToken
            }
            ... on UserAuthenticationWithPasswordFailure {
                message
            }
        }
    }
`);

export const CREATE_USER = gql(`
    mutation CreateUser($data: UserCreateInput!) {
        createUser(data: $data) {
            id
            name
            email
            role
        }
    }
`);

export const UPDATE_USER = gql(`
    mutation UpdateUser($where: UserWhereUniqueInput!, $data: UserUpdateInput!) {
        updateUser(where: $where, data: $data) {
            id
            expoToken
        }
    }
`);

export const GET_CURRENT_USER = gql(`
    query AuthenticatedItem {
        profile: authenticatedItem {
            ... on User {
                id
                name
                email
                role
                expoToken
                createdAt
            }
        }
    }
`);

export const LOG_OUT = gql(`
    mutation EndSession {
        endSession
    }
`);
