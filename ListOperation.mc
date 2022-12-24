transpose2D(list):=
  block([n_row,n_col,i,j],
    n_row:length(list),
    n_col:length(list[1]),
    makelist(makelist(list[i][j],i,1,n_row),j,1,n_col)
  );

list2matrix(list):=
  block([n_row,n_col,i,j,tmp],
    n_row:length(list),
    n_col:length(list[1]),
    tmp[i,j]:=list[i][j],
    genmatrix(tmp,n_row,n_col)
  );

matrix2list(matrix):=
  block([n_row,n_col,i,j],
    n_row:length(matrix),
    n_col:length(matrix[1]),
    makelist(makelist(matrix[j,i],i,1,n_col),j,1,n_row)
  );

add_list_row(list):=
  makelist(sum(list[i][j],j,1,length(list[1])),i,1,length(list));

add_list_col(list):=
  sum(list[i],i,1,length(list));

list_outer_product(list1,list2):=
  makelist(makelist(list1[i]*list2[j],j,1,length(list2)),i,1,length(list1));

additional(list):=
  block(
    local[ad,len,i],
    ad:0,
    len:length(list),
    for i:1 while i<=len do(
      ad:ad+list[i]
    ),
    return(ad)
  );
