import { gql } from "@/__generated__";

export const NOTICES = gql(`    
    query Notices($limit: Int, $offset: Int!, $orderBy: [NoticeOrderByInput!]!) {
        notices(take: $limit, skip: $offset, orderBy: $orderBy) {
            id
            title
            content: contentSummary
            createdAt
            createdBy {
                name
                role
            }
        }
        noticesCount
    }
`);

export const NOTICE = gql(`
    query Notice($id: ID!) {
        notice(where: {id: $id}) {
            id
            title
            content {
                document(hydrateRelationships: false)
            }
            createdBy {
                name
                role
            }
            createdAt
        }
    }
`);

export const CLASS_TESTS = gql(`
    query ClassTests($limit: Int, $offset: Int!, $orderBy: [ClassTestOrderByInput!]!) {
        classTests(take: $limit, skip: $offset, orderBy: $orderBy) {
            id
            title
            content: contentSummary
            datetime
            createdBy {
                name
                role
            }
            createdAt
        }
        classTestsCount
    }
`);
