# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#' @title Content operations
#' @description swagger.Content
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' all_content_metadata_accesses Get All Content Metadata Accesses
#'
#'
#' all_content_metadatas Get All Content Metadatas
#'
#'
#' content_favorite Get Favorite Content
#'
#'
#' content_metadata Get Content Metadata
#'
#'
#' content_thumbnail Get Content Thumbnail
#'
#'
#' content_validation Validate Content
#'
#'
#' create_content_favorite Create Favorite Content
#'
#'
#' create_content_metadata_access Create Content Metadata Access
#'
#'
#' delete_content_favorite Delete Favorite Content
#'
#'
#' delete_content_metadata_access Delete Content Metadata Access
#'
#'
#' search_content_favorites Search Favorite Contents
#'
#'
#' search_content_views Search Content Views
#'
#'
#' update_content_metadata Update Content Metadata
#'
#'
#' update_content_metadata_access Update Content Metadata Access
#'
#'
#' vector_thumbnail Get Vector Thumbnail
#'
#' }
#'
#' @export
ContentApi <- R6::R6Class(
  'ContentApi',
  public = list(
    userAgent = "R-SDK",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    all_content_metadata_accesses = function(content_metadata_id, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`content_metadata_id`)) {
        queryParams['content_metadata_id'] <- content_metadata_id
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/content_metadata_access"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMetaGroupUser$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    all_content_metadatas = function(parent_id, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`parent_id`)) {
        queryParams['parent_id'] <- parent_id
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/content_metadata"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMeta$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    content_favorite = function(content_favorite_id, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/content_favorite/{content_favorite_id}"
      if (!missing(`content_favorite_id`)) {
        urlPath <- gsub(paste0("\\{", "content_favorite_id", "\\}"), `content_favorite_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentFavorite$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    content_metadata = function(content_metadata_id, fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/content_metadata/{content_metadata_id}"
      if (!missing(`content_metadata_id`)) {
        urlPath <- gsub(paste0("\\{", "content_metadata_id", "\\}"), `content_metadata_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMeta$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    content_thumbnail = function(type, resource_id, reload, format, width, height, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`reload`)) {
        queryParams['reload'] <- reload
      }

      if (!missing(`format`)) {
        queryParams['format'] <- format
      }

      if (!missing(`width`)) {
        queryParams['width'] <- width
      }

      if (!missing(`height`)) {
        queryParams['height'] <- height
      }

      urlPath <- "/content_thumbnail/{type}/{resource_id}"
      if (!missing(`type`)) {
        urlPath <- gsub(paste0("\\{", "type", "\\}"), `type`, urlPath)
      }

      if (!missing(`resource_id`)) {
        urlPath <- gsub(paste0("\\{", "resource_id", "\\}"), `resource_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    content_validation = function(fields, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      urlPath <- "/content_validation"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentValidation$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    create_content_favorite = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/content_favorite"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentFavorite$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    create_content_metadata_access = function(body, send_boards_notification_email, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`send_boards_notification_email`)) {
        queryParams['send_boards_notification_email'] <- send_boards_notification_email
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/content_metadata_access"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMetaGroupUser$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_content_favorite = function(content_favorite_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/content_favorite/{content_favorite_id}"
      if (!missing(`content_favorite_id`)) {
        urlPath <- gsub(paste0("\\{", "content_favorite_id", "\\}"), `content_favorite_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_content_metadata_access = function(content_metadata_access_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/content_metadata_access/{content_metadata_access_id}"
      if (!missing(`content_metadata_access_id`)) {
        urlPath <- gsub(paste0("\\{", "content_metadata_access_id", "\\}"), `content_metadata_access_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    search_content_favorites = function(id, user_id, content_metadata_id, dashboard_id, look_id, limit, offset, sorts, fields, filter_or, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`id`)) {
        queryParams['id'] <- id
      }

      if (!missing(`user_id`)) {
        queryParams['user_id'] <- user_id
      }

      if (!missing(`content_metadata_id`)) {
        queryParams['content_metadata_id'] <- content_metadata_id
      }

      if (!missing(`dashboard_id`)) {
        queryParams['dashboard_id'] <- dashboard_id
      }

      if (!missing(`look_id`)) {
        queryParams['look_id'] <- look_id
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`sorts`)) {
        queryParams['sorts'] <- sorts
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      if (!missing(`filter_or`)) {
        queryParams['filter_or'] <- filter_or
      }

      urlPath <- "/content_favorite/search"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentFavorite$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    search_content_views = function(view_count, group_id, look_id, dashboard_id, content_metadata_id, start_of_week_date, all_time, user_id, fields, limit, offset, sorts, filter_or, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`view_count`)) {
        queryParams['view_count'] <- view_count
      }

      if (!missing(`group_id`)) {
        queryParams['group_id'] <- group_id
      }

      if (!missing(`look_id`)) {
        queryParams['look_id'] <- look_id
      }

      if (!missing(`dashboard_id`)) {
        queryParams['dashboard_id'] <- dashboard_id
      }

      if (!missing(`content_metadata_id`)) {
        queryParams['content_metadata_id'] <- content_metadata_id
      }

      if (!missing(`start_of_week_date`)) {
        queryParams['start_of_week_date'] <- start_of_week_date
      }

      if (!missing(`all_time`)) {
        queryParams['all_time'] <- all_time
      }

      if (!missing(`user_id`)) {
        queryParams['user_id'] <- user_id
      }

      if (!missing(`fields`)) {
        queryParams['fields'] <- fields
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`sorts`)) {
        queryParams['sorts'] <- sorts
      }

      if (!missing(`filter_or`)) {
        queryParams['filter_or'] <- filter_or
      }

      urlPath <- "/content_view/search"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentView$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_content_metadata = function(body, content_metadata_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/content_metadata/{content_metadata_id}"
      if (!missing(`content_metadata_id`)) {
        urlPath <- gsub(paste0("\\{", "content_metadata_id", "\\}"), `content_metadata_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PATCH",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMeta$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_content_metadata_access = function(body, content_metadata_access_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/content_metadata_access/{content_metadata_access_id}"
      if (!missing(`content_metadata_access_id`)) {
        urlPath <- gsub(paste0("\\{", "content_metadata_access_id", "\\}"), `content_metadata_access_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ContentMetaGroupUser$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    vector_thumbnail = function(type, resource_id, reload, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`reload`)) {
        queryParams['reload'] <- reload
      }

      urlPath <- "/vector_thumbnail/{type}/{resource_id}"
      if (!missing(`type`)) {
        urlPath <- gsub(paste0("\\{", "type", "\\}"), `type`, urlPath)
      }

      if (!missing(`resource_id`)) {
        urlPath <- gsub(paste0("\\{", "resource_id", "\\}"), `resource_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
