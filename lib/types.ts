export type ListResponse<Data = {}> = {
  data: Data[];
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
