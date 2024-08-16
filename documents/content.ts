import { gql } from "@/__generated__";

export const NOTICE = gql(`    
    query Notices($take: Int, $skip: Int!, $orderBy: [NoticeOrderByInput!]!) {
        notices(take: $take, skip: $skip, orderBy: $orderBy) {
            id
            title
            content {
                document
            }
            createdAt
            createdBy {
                name
                role
            }
        }
    }
`);
