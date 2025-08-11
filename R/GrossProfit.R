#' @return 无返回值
#' @export
#'
#' @examples
#' GrossProfit_upload()
GrossProfit_upload<- function(dms_token) {

  sql=paste0("

exec rds_dms_src_proc_GrossProfit_upload
             ")

  res=tsda::sql_update2(token = dms_token,sql_str = sql)
  return(res)
}


#' 查询当前GrossProfit
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' GrossProfit_new_view()
GrossProfit_new_view<- function(dms_token,FDate) {

  sql=paste0(" exec rds_dms_src_proc_GrossProfit_cn '",FDate,"'  ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}


#' 查询GrossProfit存档
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' GrossProfit_archive_view()
GrossProfit_archive_view<- function(dms_token,FDate) {

  sql=paste0(" exec rds_dms_src_proc_GrossProfit_archive_cn '",FDate,"'  ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
