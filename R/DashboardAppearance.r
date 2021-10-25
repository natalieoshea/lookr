# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' DashboardAppearance Class
#'
#' @field page_side_margins 
#' @field page_background_color 
#' @field tile_title_alignment 
#' @field tile_space_between 
#' @field tile_background_color 
#' @field tile_shadow 
#' @field key_color 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DashboardAppearance <- R6::R6Class(
  'DashboardAppearance',
  public = list(
    `page_side_margins` = NULL,
    `page_background_color` = NULL,
    `tile_title_alignment` = NULL,
    `tile_space_between` = NULL,
    `tile_background_color` = NULL,
    `tile_shadow` = NULL,
    `key_color` = NULL,
    initialize = function(`page_side_margins`, `page_background_color`, `tile_title_alignment`, `tile_space_between`, `tile_background_color`, `tile_shadow`, `key_color`){
      if (!missing(`page_side_margins`)) {
        stopifnot(is.numeric(`page_side_margins`), length(`page_side_margins`) == 1)
        self$`page_side_margins` <- `page_side_margins`
      }
      if (!missing(`page_background_color`)) {
        stopifnot(is.character(`page_background_color`), length(`page_background_color`) == 1)
        self$`page_background_color` <- `page_background_color`
      }
      if (!missing(`tile_title_alignment`)) {
        stopifnot(is.character(`tile_title_alignment`), length(`tile_title_alignment`) == 1)
        self$`tile_title_alignment` <- `tile_title_alignment`
      }
      if (!missing(`tile_space_between`)) {
        stopifnot(is.numeric(`tile_space_between`), length(`tile_space_between`) == 1)
        self$`tile_space_between` <- `tile_space_between`
      }
      if (!missing(`tile_background_color`)) {
        stopifnot(is.character(`tile_background_color`), length(`tile_background_color`) == 1)
        self$`tile_background_color` <- `tile_background_color`
      }
      if (!missing(`tile_shadow`)) {
        self$`tile_shadow` <- `tile_shadow`
      }
      if (!missing(`key_color`)) {
        stopifnot(is.character(`key_color`), length(`key_color`) == 1)
        self$`key_color` <- `key_color`
      }
    },
    toJSON = function() {
      DashboardAppearanceObject <- list()
      if (!is.null(self$`page_side_margins`)) {
        DashboardAppearanceObject[['page_side_margins']] <- self$`page_side_margins`
      }
      if (!is.null(self$`page_background_color`)) {
        DashboardAppearanceObject[['page_background_color']] <- self$`page_background_color`
      }
      if (!is.null(self$`tile_title_alignment`)) {
        DashboardAppearanceObject[['tile_title_alignment']] <- self$`tile_title_alignment`
      }
      if (!is.null(self$`tile_space_between`)) {
        DashboardAppearanceObject[['tile_space_between']] <- self$`tile_space_between`
      }
      if (!is.null(self$`tile_background_color`)) {
        DashboardAppearanceObject[['tile_background_color']] <- self$`tile_background_color`
      }
      if (!is.null(self$`tile_shadow`)) {
        DashboardAppearanceObject[['tile_shadow']] <- self$`tile_shadow`
      }
      if (!is.null(self$`key_color`)) {
        DashboardAppearanceObject[['key_color']] <- self$`key_color`
      }

      DashboardAppearanceObject
    },
    fromJSON = function(DashboardAppearanceJson) {
      DashboardAppearanceObject <- jsonlite::fromJSON(DashboardAppearanceJson)
      if (!is.null(DashboardAppearanceObject$`page_side_margins`)) {
        self$`page_side_margins` <- DashboardAppearanceObject$`page_side_margins`
      }
      if (!is.null(DashboardAppearanceObject$`page_background_color`)) {
        self$`page_background_color` <- DashboardAppearanceObject$`page_background_color`
      }
      if (!is.null(DashboardAppearanceObject$`tile_title_alignment`)) {
        self$`tile_title_alignment` <- DashboardAppearanceObject$`tile_title_alignment`
      }
      if (!is.null(DashboardAppearanceObject$`tile_space_between`)) {
        self$`tile_space_between` <- DashboardAppearanceObject$`tile_space_between`
      }
      if (!is.null(DashboardAppearanceObject$`tile_background_color`)) {
        self$`tile_background_color` <- DashboardAppearanceObject$`tile_background_color`
      }
      if (!is.null(DashboardAppearanceObject$`tile_shadow`)) {
        self$`tile_shadow` <- DashboardAppearanceObject$`tile_shadow`
      }
      if (!is.null(DashboardAppearanceObject$`key_color`)) {
        self$`key_color` <- DashboardAppearanceObject$`key_color`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "page_side_margins": %d,
           "page_background_color": %s,
           "tile_title_alignment": %s,
           "tile_space_between": %d,
           "tile_background_color": %s,
           "tile_shadow": %s,
           "key_color": %s
        }',
        self$`page_side_margins`,
        self$`page_background_color`,
        self$`tile_title_alignment`,
        self$`tile_space_between`,
        self$`tile_background_color`,
        self$`tile_shadow`,
        self$`key_color`
      )
    },
    fromJSONString = function(DashboardAppearanceJson) {
      DashboardAppearanceObject <- jsonlite::fromJSON(DashboardAppearanceJson)
      self$`page_side_margins` <- DashboardAppearanceObject$`page_side_margins`
      self$`page_background_color` <- DashboardAppearanceObject$`page_background_color`
      self$`tile_title_alignment` <- DashboardAppearanceObject$`tile_title_alignment`
      self$`tile_space_between` <- DashboardAppearanceObject$`tile_space_between`
      self$`tile_background_color` <- DashboardAppearanceObject$`tile_background_color`
      self$`tile_shadow` <- DashboardAppearanceObject$`tile_shadow`
      self$`key_color` <- DashboardAppearanceObject$`key_color`
    }
  )
)