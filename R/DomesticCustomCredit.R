#获取债权数据
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_view()
DomesticCustomCredit_view<- function(dms_token,FDate) {

  sql=paste0(" exec rds_dms_src_proc_CustomerCredit '",FDate,"'  ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
#' 获取ERP债权表数据
#'
#' @param erp_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_MATUREDDEBIT_view()
DomesticCustomCredit_MATUREDDEBIT_view<- function(erp_token,FDate) {

  sql=paste0(" exec rds_erp_src_proc_AR_MATUREDDEBIT '",FDate,"'  ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}


#' ERP债权表数据插入DMS正式表
#'
#' @param dms_token

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_MATUREDDEBIT_insert()
DomesticCustomCredit_MATUREDDEBIT_insert<- function(dms_token) {

  sql=paste0(" exec rds_proc_AR_MATUREDDEBIT  ")

  res=tsda::sql_update2(token = dms_token,sql_str =  sql)
  return(res)
}



#' 获取收款和退款数据
#'
#' @param erp_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_Receive_view()
DomesticCustomCredit_Receive_view<- function(erp_token,FDate) {

  sql=paste0(" exec rds_erp_src_proc_CustomReceivables '",FDate,"'  ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}


#' ERP收款数据插入DMS正式表
#'
#' @param dms_token

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_Receive_insert()
DomesticCustomCredit_Receive_insert<- function(dms_token) {

  sql=paste0(" exec rds_proc_CustomReceivables  ")

  res=tsda::sql_update2(token = dms_token,sql_str  = sql)
  return(res)
}


#获取ERP客户表数据
#'
#' @param erp_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_customer_ERP_view()
DomesticCustomCredit_customer_ERP_view<- function(erp_token) {

  sql=paste0(" select * from rds_src_vw_customer_Condition ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}
#获取DMS客户表数据
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_customer_DMS_view()
DomesticCustomCredit_customer_DMS_view<- function(dms_token,FDate) {

  sql=paste0(" exec rds_dms_proc_customer_sum '",FDate,"' ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}


#' 清空ERP客户列表
#'
#' @param erp_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_customer_erp_delete()
DomesticCustomCredit_customer_erp_delete<- function(erp_token) {

  sql=paste0(" truncate table rds_src_t_customer_sum ")

  res=tsda::sql_delete2(token = erp_token,sql = sql)
  return(res)
}
#' 清空DMS客户列表
#'
#' @param dms_token
#' @param FDate

#' @return 无返回值
#' @export
#'
#' @examples
#' DomesticCustomCredit_customer_dms_delete()
DomesticCustomCredit_customer_dms_delete<- function(dms_token) {

  sql=paste0(" truncate table rds_erp_src_t_customer ")

  res=tsda::sql_delete2(token = dms_token,sql = sql)
  return(res)
}



