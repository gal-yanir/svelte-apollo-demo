import { gql } from "apollo-boost";

export const GET_BOOKS = gql`
  {
    books {
      title
      author
    }
  }
`;

export const GET_COUSTOMERS = gql`
  {
    customers {
      id
      name
      phone
      email
      invoices {
        invoiceNo
        description
        paymentStatus
        total
      }
    }
  }
`;
