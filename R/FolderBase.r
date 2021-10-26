# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FolderBase Class
#'
#' @field name 
#' @field parent_id 
#' @field id 
#' @field content_metadata_id 
#' @field created_at 
#' @field creator_id 
#' @field child_count 
#' @field external_id 
#' @field is_embed 
#' @field is_embed_shared_root 
#' @field is_embed_users_root 
#' @field is_personal 
#' @field is_personal_descendant 
#' @field is_shared_root 
#' @field is_users_root 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
FolderBase <- R6::R6Class(
  'FolderBase',
  public = list(
    `name` = NULL,
    `parent_id` = NULL,
    `id` = NULL,
    `content_metadata_id` = NULL,
    `created_at` = NULL,
    `creator_id` = NULL,
    `child_count` = NULL,
    `external_id` = NULL,
    `is_embed` = NULL,
    `is_embed_shared_root` = NULL,
    `is_embed_users_root` = NULL,
    `is_personal` = NULL,
    `is_personal_descendant` = NULL,
    `is_shared_root` = NULL,
    `is_users_root` = NULL,
    `can` = NULL,
    initialize = function(`name`, `parent_id`, `id`, `content_metadata_id`, `created_at`, `creator_id`, `child_count`, `external_id`, `is_embed`, `is_embed_shared_root`, `is_embed_users_root`, `is_personal`, `is_personal_descendant`, `is_shared_root`, `is_users_root`, `can`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`parent_id`)) {
        stopifnot(is.character(`parent_id`), length(`parent_id`) == 1)
        self$`parent_id` <- `parent_id`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`content_metadata_id`)) {
        stopifnot(is.numeric(`content_metadata_id`), length(`content_metadata_id`) == 1)
        self$`content_metadata_id` <- `content_metadata_id`
      }
      if (!missing(`created_at`)) {
        stopifnot(is.character(`created_at`), length(`created_at`) == 1)
        self$`created_at` <- `created_at`
      }
      if (!missing(`creator_id`)) {
        stopifnot(is.numeric(`creator_id`), length(`creator_id`) == 1)
        self$`creator_id` <- `creator_id`
      }
      if (!missing(`child_count`)) {
        stopifnot(is.numeric(`child_count`), length(`child_count`) == 1)
        self$`child_count` <- `child_count`
      }
      if (!missing(`external_id`)) {
        stopifnot(is.character(`external_id`), length(`external_id`) == 1)
        self$`external_id` <- `external_id`
      }
      if (!missing(`is_embed`)) {
        self$`is_embed` <- `is_embed`
      }
      if (!missing(`is_embed_shared_root`)) {
        self$`is_embed_shared_root` <- `is_embed_shared_root`
      }
      if (!missing(`is_embed_users_root`)) {
        self$`is_embed_users_root` <- `is_embed_users_root`
      }
      if (!missing(`is_personal`)) {
        self$`is_personal` <- `is_personal`
      }
      if (!missing(`is_personal_descendant`)) {
        self$`is_personal_descendant` <- `is_personal_descendant`
      }
      if (!missing(`is_shared_root`)) {
        self$`is_shared_root` <- `is_shared_root`
      }
      if (!missing(`is_users_root`)) {
        self$`is_users_root` <- `is_users_root`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      FolderBaseObject <- list()
      if (!is.null(self$`name`)) {
        FolderBaseObject[['name']] <- self$`name`
      }
      if (!is.null(self$`parent_id`)) {
        FolderBaseObject[['parent_id']] <- self$`parent_id`
      }
      if (!is.null(self$`id`)) {
        FolderBaseObject[['id']] <- self$`id`
      }
      if (!is.null(self$`content_metadata_id`)) {
        FolderBaseObject[['content_metadata_id']] <- self$`content_metadata_id`
      }
      if (!is.null(self$`created_at`)) {
        FolderBaseObject[['created_at']] <- self$`created_at`
      }
      if (!is.null(self$`creator_id`)) {
        FolderBaseObject[['creator_id']] <- self$`creator_id`
      }
      if (!is.null(self$`child_count`)) {
        FolderBaseObject[['child_count']] <- self$`child_count`
      }
      if (!is.null(self$`external_id`)) {
        FolderBaseObject[['external_id']] <- self$`external_id`
      }
      if (!is.null(self$`is_embed`)) {
        FolderBaseObject[['is_embed']] <- self$`is_embed`
      }
      if (!is.null(self$`is_embed_shared_root`)) {
        FolderBaseObject[['is_embed_shared_root']] <- self$`is_embed_shared_root`
      }
      if (!is.null(self$`is_embed_users_root`)) {
        FolderBaseObject[['is_embed_users_root']] <- self$`is_embed_users_root`
      }
      if (!is.null(self$`is_personal`)) {
        FolderBaseObject[['is_personal']] <- self$`is_personal`
      }
      if (!is.null(self$`is_personal_descendant`)) {
        FolderBaseObject[['is_personal_descendant']] <- self$`is_personal_descendant`
      }
      if (!is.null(self$`is_shared_root`)) {
        FolderBaseObject[['is_shared_root']] <- self$`is_shared_root`
      }
      if (!is.null(self$`is_users_root`)) {
        FolderBaseObject[['is_users_root']] <- self$`is_users_root`
      }
      if (!is.null(self$`can`)) {
        FolderBaseObject[['can']] <- self$`can`
      }

      FolderBaseObject
    },
    fromJSONObject = function(FolderBaseJsonObject) {
      FolderBaseObject <- FolderBaseJsonObject #jsonlite::fromJSON(FolderBaseJson, simplifyVector = FALSE)
      if (!is.null(FolderBaseObject$`name`)) {
        self$`name` <- FolderBaseObject$`name`
      }
      if (!is.null(FolderBaseObject$`parent_id`)) {
        self$`parent_id` <- FolderBaseObject$`parent_id`
      }
      if (!is.null(FolderBaseObject$`id`)) {
        self$`id` <- FolderBaseObject$`id`
      }
      if (!is.null(FolderBaseObject$`content_metadata_id`)) {
        self$`content_metadata_id` <- FolderBaseObject$`content_metadata_id`
      }
      if (!is.null(FolderBaseObject$`created_at`)) {
        self$`created_at` <- FolderBaseObject$`created_at`
      }
      if (!is.null(FolderBaseObject$`creator_id`)) {
        self$`creator_id` <- FolderBaseObject$`creator_id`
      }
      if (!is.null(FolderBaseObject$`child_count`)) {
        self$`child_count` <- FolderBaseObject$`child_count`
      }
      if (!is.null(FolderBaseObject$`external_id`)) {
        self$`external_id` <- FolderBaseObject$`external_id`
      }
      if (!is.null(FolderBaseObject$`is_embed`)) {
        self$`is_embed` <- FolderBaseObject$`is_embed`
      }
      if (!is.null(FolderBaseObject$`is_embed_shared_root`)) {
        self$`is_embed_shared_root` <- FolderBaseObject$`is_embed_shared_root`
      }
      if (!is.null(FolderBaseObject$`is_embed_users_root`)) {
        self$`is_embed_users_root` <- FolderBaseObject$`is_embed_users_root`
      }
      if (!is.null(FolderBaseObject$`is_personal`)) {
        self$`is_personal` <- FolderBaseObject$`is_personal`
      }
      if (!is.null(FolderBaseObject$`is_personal_descendant`)) {
        self$`is_personal_descendant` <- FolderBaseObject$`is_personal_descendant`
      }
      if (!is.null(FolderBaseObject$`is_shared_root`)) {
        self$`is_shared_root` <- FolderBaseObject$`is_shared_root`
      }
      if (!is.null(FolderBaseObject$`is_users_root`)) {
        self$`is_users_root` <- FolderBaseObject$`is_users_root`
      }
      if (!is.null(FolderBaseObject$`can`)) {
        self$`can` <- FolderBaseObject$`can`
      }
    },
    fromJSON = function(FolderBaseJson) {
      FolderBaseObject <- jsonlite::fromJSON(FolderBaseJson, simplifyVector = FALSE)
      self$fromJSONObject(FolderBaseObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "parent_id": %s,
           "id": %s,
           "content_metadata_id": %d,
           "created_at": %s,
           "creator_id": %d,
           "child_count": %d,
           "external_id": %s,
           "is_embed": %s,
           "is_embed_shared_root": %s,
           "is_embed_users_root": %s,
           "is_personal": %s,
           "is_personal_descendant": %s,
           "is_shared_root": %s,
           "is_users_root": %s,
           "can": %s
        }',
        self$`name`,
        self$`parent_id`,
        self$`id`,
        self$`content_metadata_id`,
        self$`created_at`,
        self$`creator_id`,
        self$`child_count`,
        self$`external_id`,
        self$`is_embed`,
        self$`is_embed_shared_root`,
        self$`is_embed_users_root`,
        self$`is_personal`,
        self$`is_personal_descendant`,
        self$`is_shared_root`,
        self$`is_users_root`,
        self$`can`
      )
    },
    fromJSONString = function(FolderBaseJson) {
      FolderBaseObject <- jsonlite::fromJSON(FolderBaseJson, simplifyVector = FALSE)
      self$`name` <- FolderBaseObject$`name`
      self$`parent_id` <- FolderBaseObject$`parent_id`
      self$`id` <- FolderBaseObject$`id`
      self$`content_metadata_id` <- FolderBaseObject$`content_metadata_id`
      self$`created_at` <- FolderBaseObject$`created_at`
      self$`creator_id` <- FolderBaseObject$`creator_id`
      self$`child_count` <- FolderBaseObject$`child_count`
      self$`external_id` <- FolderBaseObject$`external_id`
      self$`is_embed` <- FolderBaseObject$`is_embed`
      self$`is_embed_shared_root` <- FolderBaseObject$`is_embed_shared_root`
      self$`is_embed_users_root` <- FolderBaseObject$`is_embed_users_root`
      self$`is_personal` <- FolderBaseObject$`is_personal`
      self$`is_personal_descendant` <- FolderBaseObject$`is_personal_descendant`
      self$`is_shared_root` <- FolderBaseObject$`is_shared_root`
      self$`is_users_root` <- FolderBaseObject$`is_users_root`
      self$`can` <- FolderBaseObject$`can`
    }
  )
)
