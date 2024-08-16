export type ListResponse<Data = {}> = {
  data: ResponseData<Data>[];
  meta: {
    pagination: {
      page: number;
      pageCount: number;
      pageSize: number;
      total: number;
    };
  };
};

export type ResponseData<Data = {}> = {
  id: number;
  attributes: Data;
};

export type User = {
  id: string;
  email: string;
  expoToken?: string;
};
