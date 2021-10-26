# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ResultMakerWithIdVisConfigAndDynamicFields Class
#'
#' @field id 
#' @field dynamic_fields 
#' @field filterables 
#' @field sorts 
#' @field merge_result_id 
#' @field total 
#' @field query_id 
#' @field sql_query_id 
#' @field query 
#' @field vis_config 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
ResultMakerWithIdVisConfigAndDynamicFields <- R6::R6Class(
  'ResultMakerWithIdVisConfigAndDynamicFields',
  public = list(
    `id` = NULL,
    `dynamic_fields` = NULL,
    `filterables` = NULL,
    `sorts` = NULL,
    `merge_result_id` = NULL,
    `total` = NULL,
    `query_id` = NULL,
    `sql_query_id` = NULL,
    `query` = NULL,
    `vis_config` = NULL,
    initialize = function(`id`, `dynamic_fields`, `filterables`, `sorts`, `merge_result_id`, `total`, `query_id`, `sql_query_id`, `query`, `vis_config`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`dynamic_fields`)) {
        stopifnot(is.character(`dynamic_fields`), length(`dynamic_fields`) == 1)
        self$`dynamic_fields` <- `dynamic_fields`
      }
      if (!missing(`filterables`)) {
        stopifnot(is.list(`filterables`), length(`filterables`) != 0)
        lapply(`filterables`, function(x) stopifnot(R6::is.R6(x)))
        self$`filterables` <- `filterables`
      }
      if (!missing(`sorts`)) {
        stopifnot(is.list(`sorts`), length(`sorts`) != 0)
        lapply(`sorts`, function(x) stopifnot(is.character(x)))
        self$`sorts` <- `sorts`
      }
      if (!missing(`merge_result_id`)) {
        stopifnot(is.character(`merge_result_id`), length(`merge_result_id`) == 1)
        self$`merge_result_id` <- `merge_result_id`
      }
      if (!missing(`total`)) {
        self$`total` <- `total`
      }
      if (!missing(`query_id`)) {
        stopifnot(is.numeric(`query_id`), length(`query_id`) == 1)
        self$`query_id` <- `query_id`
      }
      if (!missing(`sql_query_id`)) {
        stopifnot(is.character(`sql_query_id`), length(`sql_query_id`) == 1)
        self$`sql_query_id` <- `sql_query_id`
      }
      if (!missing(`query`)) {
        stopifnot(R6::is.R6(`query`))
        self$`query` <- `query`
      }
      if (!missing(`vis_config`)) {
        self$`vis_config` <- `vis_config`
      }
    },
    toJSON = function() {
      ResultMakerWithIdVisConfigAndDynamicFieldsObject <- list()
      if (!is.null(self$`id`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['id']] <- self$`id`
      }
      if (!is.null(self$`dynamic_fields`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['dynamic_fields']] <- self$`dynamic_fields`
      }
      if (!is.null(self$`filterables`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['filterables']] <- lapply(self$`filterables`, function(x) x$toJSON())
      }
      if (!is.null(self$`sorts`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['sorts']] <- self$`sorts`
      }
      if (!is.null(self$`merge_result_id`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['merge_result_id']] <- self$`merge_result_id`
      }
      if (!is.null(self$`total`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['total']] <- self$`total`
      }
      if (!is.null(self$`query_id`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['query_id']] <- self$`query_id`
      }
      if (!is.null(self$`sql_query_id`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['sql_query_id']] <- self$`sql_query_id`
      }
      if (!is.null(self$`query`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['query']] <- self$`query`$toJSON()
      }
      if (!is.null(self$`vis_config`)) {
        ResultMakerWithIdVisConfigAndDynamicFieldsObject[['vis_config']] <- self$`vis_config`
      }

      ResultMakerWithIdVisConfigAndDynamicFieldsObject
    },
    fromJSONObject = function(ResultMakerWithIdVisConfigAndDynamicFieldsJsonObject) {
      ResultMakerWithIdVisConfigAndDynamicFieldsObject <- ResultMakerWithIdVisConfigAndDynamicFieldsJsonObject #jsonlite::fromJSON(ResultMakerWithIdVisConfigAndDynamicFieldsJson, simplifyVector = FALSE)
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`id`)) {
        self$`id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`id`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`dynamic_fields`)) {
        self$`dynamic_fields` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`dynamic_fields`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`filterables`)) {
        self$`filterables` <- lapply(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`filterables`, function(x) {
          filterablesObject <- ResultMakerFilterables$new()
          filterablesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          filterablesObject
        })
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sorts`)) {
        self$`sorts` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sorts`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`merge_result_id`)) {
        self$`merge_result_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`merge_result_id`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`total`)) {
        self$`total` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`total`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`query_id`)) {
        self$`query_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`query_id`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sql_query_id`)) {
        self$`sql_query_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sql_query_id`
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`query`)) {
        queryObject <- Query$new()
        queryObject$fromJSON(jsonlite::toJSON(ResultMakerWithIdVisConfigAndDynamicFieldsObject$query, auto_unbox = TRUE))
        self$`query` <- queryObject
      }
      if (!is.null(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`vis_config`)) {
        self$`vis_config` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`vis_config`
      }
    },
    fromJSON = function(ResultMakerWithIdVisConfigAndDynamicFieldsJson) {
      ResultMakerWithIdVisConfigAndDynamicFieldsObject <- jsonlite::fromJSON(ResultMakerWithIdVisConfigAndDynamicFieldsJson, simplifyVector = FALSE)
      self$fromJSONObject(ResultMakerWithIdVisConfigAndDynamicFieldsObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "dynamic_fields": %s,
           "filterables": [%s],
           "sorts": [%s],
           "merge_result_id": %s,
           "total": %s,
           "query_id": %d,
           "sql_query_id": %s,
           "query": %s,
           "vis_config": %s
        }',
        self$`id`,
        self$`dynamic_fields`,
        lapply(self$`filterables`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`sorts`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`merge_result_id`,
        self$`total`,
        self$`query_id`,
        self$`sql_query_id`,
        self$`query`$toJSON(),
        self$`vis_config`
      )
    },
    fromJSONString = function(ResultMakerWithIdVisConfigAndDynamicFieldsJson) {
      ResultMakerWithIdVisConfigAndDynamicFieldsObject <- jsonlite::fromJSON(ResultMakerWithIdVisConfigAndDynamicFieldsJson, simplifyVector = FALSE)
      self$`id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`id`
      self$`dynamic_fields` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`dynamic_fields`
      self$`filterables` <- lapply(ResultMakerWithIdVisConfigAndDynamicFieldsObject$`filterables`, function(x) ResultMakerFilterables$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`sorts` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sorts`
      self$`merge_result_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`merge_result_id`
      self$`total` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`total`
      self$`query_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`query_id`
      self$`sql_query_id` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`sql_query_id`
      QueryObject <- Query$new()
      self$`query` <- QueryObject$fromJSON(jsonlite::toJSON(ResultMakerWithIdVisConfigAndDynamicFieldsObject$query, auto_unbox = TRUE))
      self$`vis_config` <- ResultMakerWithIdVisConfigAndDynamicFieldsObject$`vis_config`
    }
  )
)
