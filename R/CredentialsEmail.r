# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CredentialsEmail Class
#'
#' @field can 
#' @field created_at 
#' @field email 
#' @field forced_password_reset_at_next_login 
#' @field is_disabled 
#' @field logged_in_at 
#' @field password_reset_url 
#' @field type 
#' @field url 
#' @field user_url 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
CredentialsEmail <- R6::R6Class(
  'CredentialsEmail',
  public = list(
    `can` = NULL,
    `created_at` = NULL,
    `email` = NULL,
    `forced_password_reset_at_next_login` = NULL,
    `is_disabled` = NULL,
    `logged_in_at` = NULL,
    `password_reset_url` = NULL,
    `type` = NULL,
    `url` = NULL,
    `user_url` = NULL,
    initialize = function(`can`, `created_at`, `email`, `forced_password_reset_at_next_login`, `is_disabled`, `logged_in_at`, `password_reset_url`, `type`, `url`, `user_url`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`created_at`)) {
        stopifnot(is.character(`created_at`), length(`created_at`) == 1)
        self$`created_at` <- `created_at`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`forced_password_reset_at_next_login`)) {
        self$`forced_password_reset_at_next_login` <- `forced_password_reset_at_next_login`
      }
      if (!missing(`is_disabled`)) {
        self$`is_disabled` <- `is_disabled`
      }
      if (!missing(`logged_in_at`)) {
        stopifnot(is.character(`logged_in_at`), length(`logged_in_at`) == 1)
        self$`logged_in_at` <- `logged_in_at`
      }
      if (!missing(`password_reset_url`)) {
        stopifnot(is.character(`password_reset_url`), length(`password_reset_url`) == 1)
        self$`password_reset_url` <- `password_reset_url`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`user_url`)) {
        stopifnot(is.character(`user_url`), length(`user_url`) == 1)
        self$`user_url` <- `user_url`
      }
    },
    toJSON = function() {
      CredentialsEmailObject <- list()
      if (!is.null(self$`can`)) {
        CredentialsEmailObject[['can']] <- self$`can`
      }
      if (!is.null(self$`created_at`)) {
        CredentialsEmailObject[['created_at']] <- self$`created_at`
      }
      if (!is.null(self$`email`)) {
        CredentialsEmailObject[['email']] <- self$`email`
      }
      if (!is.null(self$`forced_password_reset_at_next_login`)) {
        CredentialsEmailObject[['forced_password_reset_at_next_login']] <- self$`forced_password_reset_at_next_login`
      }
      if (!is.null(self$`is_disabled`)) {
        CredentialsEmailObject[['is_disabled']] <- self$`is_disabled`
      }
      if (!is.null(self$`logged_in_at`)) {
        CredentialsEmailObject[['logged_in_at']] <- self$`logged_in_at`
      }
      if (!is.null(self$`password_reset_url`)) {
        CredentialsEmailObject[['password_reset_url']] <- self$`password_reset_url`
      }
      if (!is.null(self$`type`)) {
        CredentialsEmailObject[['type']] <- self$`type`
      }
      if (!is.null(self$`url`)) {
        CredentialsEmailObject[['url']] <- self$`url`
      }
      if (!is.null(self$`user_url`)) {
        CredentialsEmailObject[['user_url']] <- self$`user_url`
      }

      CredentialsEmailObject
    },
    fromJSONObject = function(CredentialsEmailJsonObject) {
      CredentialsEmailObject <- CredentialsEmailJsonObject #jsonlite::fromJSON(CredentialsEmailJson, simplifyVector = FALSE)
      if (!is.null(CredentialsEmailObject$`can`)) {
        self$`can` <- CredentialsEmailObject$`can`
      }
      if (!is.null(CredentialsEmailObject$`created_at`)) {
        self$`created_at` <- CredentialsEmailObject$`created_at`
      }
      if (!is.null(CredentialsEmailObject$`email`)) {
        self$`email` <- CredentialsEmailObject$`email`
      }
      if (!is.null(CredentialsEmailObject$`forced_password_reset_at_next_login`)) {
        self$`forced_password_reset_at_next_login` <- CredentialsEmailObject$`forced_password_reset_at_next_login`
      }
      if (!is.null(CredentialsEmailObject$`is_disabled`)) {
        self$`is_disabled` <- CredentialsEmailObject$`is_disabled`
      }
      if (!is.null(CredentialsEmailObject$`logged_in_at`)) {
        self$`logged_in_at` <- CredentialsEmailObject$`logged_in_at`
      }
      if (!is.null(CredentialsEmailObject$`password_reset_url`)) {
        self$`password_reset_url` <- CredentialsEmailObject$`password_reset_url`
      }
      if (!is.null(CredentialsEmailObject$`type`)) {
        self$`type` <- CredentialsEmailObject$`type`
      }
      if (!is.null(CredentialsEmailObject$`url`)) {
        self$`url` <- CredentialsEmailObject$`url`
      }
      if (!is.null(CredentialsEmailObject$`user_url`)) {
        self$`user_url` <- CredentialsEmailObject$`user_url`
      }
    },
    fromJSON = function(CredentialsEmailJson) {
      CredentialsEmailObject <- jsonlite::fromJSON(CredentialsEmailJson, simplifyVector = FALSE)
      self$fromJSONObject(CredentialsEmailObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "created_at": %s,
           "email": %s,
           "forced_password_reset_at_next_login": %s,
           "is_disabled": %s,
           "logged_in_at": %s,
           "password_reset_url": %s,
           "type": %s,
           "url": %s,
           "user_url": %s
        }',
        self$`can`,
        self$`created_at`,
        self$`email`,
        self$`forced_password_reset_at_next_login`,
        self$`is_disabled`,
        self$`logged_in_at`,
        self$`password_reset_url`,
        self$`type`,
        self$`url`,
        self$`user_url`
      )
    },
    fromJSONString = function(CredentialsEmailJson) {
      CredentialsEmailObject <- jsonlite::fromJSON(CredentialsEmailJson, simplifyVector = FALSE)
      self$`can` <- CredentialsEmailObject$`can`
      self$`created_at` <- CredentialsEmailObject$`created_at`
      self$`email` <- CredentialsEmailObject$`email`
      self$`forced_password_reset_at_next_login` <- CredentialsEmailObject$`forced_password_reset_at_next_login`
      self$`is_disabled` <- CredentialsEmailObject$`is_disabled`
      self$`logged_in_at` <- CredentialsEmailObject$`logged_in_at`
      self$`password_reset_url` <- CredentialsEmailObject$`password_reset_url`
      self$`type` <- CredentialsEmailObject$`type`
      self$`url` <- CredentialsEmailObject$`url`
      self$`user_url` <- CredentialsEmailObject$`user_url`
    }
  )
)
