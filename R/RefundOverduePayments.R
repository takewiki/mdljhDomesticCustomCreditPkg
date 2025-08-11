#' 上传逾期表
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' RefundOverduePayments_upload()
RefundOverduePayments_upload<- function(dms_token,FDate) {

  sql=paste0("

exec rds_dms_src_proc_RefundOverduePayments_upload  '",FDate,"'
             ")

  res=tsda::sql_update2(token = dms_token,sql_str = sql)
  return(res)
}


#' 查询当前RefundOverduePayments
#'
#' @param dms_token

#' @return 无返回值
#' @export
#'
#' @examples
#' RefundOverduePayments_new_view()
RefundOverduePayments_new_view<- function(dms_token) {

  sql=paste0(" exec rds_dms_src_proc_RefundOverduePayments_cn ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}


#' 查询RefundOverduePayments存档
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' RefundOverduePayments_archive_view()
RefundOverduePayments_archive_view<- function(dms_token,FDate) {

  sql=paste0(" exec rds_dms_src_proc_RefundOverduePayments_archive_cn '",FDate,"'  ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
