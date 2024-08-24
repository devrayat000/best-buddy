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
    mutation UpdateProfile($data: UserUpdateInput!) {
        updateProfile(data: $data) {
            id
            name
        }
    }
`);

export const UPLOAD_EXPO_TOKEN = gql(`
    mutation UploadExpoToken($token: ID!) {
        uploadExpoToken(data: {token: $token}) {
            token: id
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
