# Looker API 3.1 Reference
#
# ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### Try It Out!  This section describes the existing 'api-docs' page available on Looker instances. We recommend using the [API Explorer](https://looker.com/docs/r/api/explorer) instead.  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  **NOTE**! With great power comes great responsibility: The \"Try It Out!\" button makes API calls to your live Looker instance. Be especially careful with destructive API operations such as `delete_user` or similar. There is no \"undo\" for API operations. (API Explorer's \"Run It\" feature requires a check mark before running API operations that can change data.)   ### In This Release  The following are a few examples of noteworthy items that have changed between API 3.0 and API 3.1. For more comprehensive coverage of API changes, please see the release notes for your Looker release.  ### Examples of new things added in API 3.1 (compared to API 3.0):  * [Dashboard construction](#!/3.1/Dashboard/) APIs * [Themes](#!/3.1/Theme/) and [custom color collections](#!/3.1/ColorCollection) APIs * Create and run [SQL Runner](#!/3.1/Query/run_sql_query) queries * Create and run [merged results](#!/3.1/Query/create_merge_query) queries * Create and modify [dashboard filters](#!/3.1/Dashboard/create_dashboard_filter) * Create and modify [password requirements](#!/3.1/Auth/password_config)  ### Deprecated in API 3.0  The following functions and properties have been deprecated in API 3.0.  They continue to exist and work in API 3.0 for the next several Looker releases but they have not been carried forward to API 3.1:  * Dashboard Prefetch functions * User access_filter functions * User API 1.0 credentials functions * Space.is_root and Space.is_user_root properties. Use Space.is_shared_root and Space.is_users_root instead.  ### Semantic changes in API 3.1:  * [all_looks()](#!/3.1/Look/all_looks) no longer includes soft-deleted looks, matching [all_dashboards()](#!/3.1/Dashboard/all_dashboards) behavior. You can find soft-deleted looks using [search_looks()](#!/3.1/Look/search_looks) with the `deleted` param set to True. * [all_spaces()](#!/3.1/Space/all_spaces) no longer includes duplicate items * [search_users()](#!/3.1/User/search_users) no longer accepts Y,y,1,0,N,n for Boolean params, only \"true\" and \"false\". * For greater client and network compatibility, [render_task_results](#!/3.1/RenderTask/render_task_results) now returns HTTP status **202 Accepted** instead of HTTP status **102 Processing** * [all_running_queries()](#!/3.1/Query/all_running_queries) and [kill_query](#!/3.1/Query/kill_query) functions have moved into the [Query](#!/3.1/Query/) function group.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 3.1.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ThemeSettings Class
#'
#' @field background_color 
#' @field base_font_size 
#' @field color_collection_id 
#' @field font_color 
#' @field font_family 
#' @field font_source 
#' @field info_button_color 
#' @field primary_button_color 
#' @field show_filters_bar 
#' @field show_title 
#' @field text_tile_text_color 
#' @field tile_background_color 
#' @field tile_text_color 
#' @field title_color 
#' @field warn_button_color 
#' @field tile_title_alignment 
#' @field tile_shadow 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
ThemeSettings <- R6::R6Class(
  'ThemeSettings',
  public = list(
    `background_color` = NULL,
    `base_font_size` = NULL,
    `color_collection_id` = NULL,
    `font_color` = NULL,
    `font_family` = NULL,
    `font_source` = NULL,
    `info_button_color` = NULL,
    `primary_button_color` = NULL,
    `show_filters_bar` = NULL,
    `show_title` = NULL,
    `text_tile_text_color` = NULL,
    `tile_background_color` = NULL,
    `tile_text_color` = NULL,
    `title_color` = NULL,
    `warn_button_color` = NULL,
    `tile_title_alignment` = NULL,
    `tile_shadow` = NULL,
    initialize = function(`background_color`, `base_font_size`, `color_collection_id`, `font_color`, `font_family`, `font_source`, `info_button_color`, `primary_button_color`, `show_filters_bar`, `show_title`, `text_tile_text_color`, `tile_background_color`, `tile_text_color`, `title_color`, `warn_button_color`, `tile_title_alignment`, `tile_shadow`){
      if (!missing(`background_color`)) {
        stopifnot(is.character(`background_color`), length(`background_color`) == 1)
        self$`background_color` <- `background_color`
      }
      if (!missing(`base_font_size`)) {
        stopifnot(is.character(`base_font_size`), length(`base_font_size`) == 1)
        self$`base_font_size` <- `base_font_size`
      }
      if (!missing(`color_collection_id`)) {
        stopifnot(is.character(`color_collection_id`), length(`color_collection_id`) == 1)
        self$`color_collection_id` <- `color_collection_id`
      }
      if (!missing(`font_color`)) {
        stopifnot(is.character(`font_color`), length(`font_color`) == 1)
        self$`font_color` <- `font_color`
      }
      if (!missing(`font_family`)) {
        stopifnot(is.character(`font_family`), length(`font_family`) == 1)
        self$`font_family` <- `font_family`
      }
      if (!missing(`font_source`)) {
        stopifnot(is.character(`font_source`), length(`font_source`) == 1)
        self$`font_source` <- `font_source`
      }
      if (!missing(`info_button_color`)) {
        stopifnot(is.character(`info_button_color`), length(`info_button_color`) == 1)
        self$`info_button_color` <- `info_button_color`
      }
      if (!missing(`primary_button_color`)) {
        stopifnot(is.character(`primary_button_color`), length(`primary_button_color`) == 1)
        self$`primary_button_color` <- `primary_button_color`
      }
      if (!missing(`show_filters_bar`)) {
        self$`show_filters_bar` <- `show_filters_bar`
      }
      if (!missing(`show_title`)) {
        self$`show_title` <- `show_title`
      }
      if (!missing(`text_tile_text_color`)) {
        stopifnot(is.character(`text_tile_text_color`), length(`text_tile_text_color`) == 1)
        self$`text_tile_text_color` <- `text_tile_text_color`
      }
      if (!missing(`tile_background_color`)) {
        stopifnot(is.character(`tile_background_color`), length(`tile_background_color`) == 1)
        self$`tile_background_color` <- `tile_background_color`
      }
      if (!missing(`tile_text_color`)) {
        stopifnot(is.character(`tile_text_color`), length(`tile_text_color`) == 1)
        self$`tile_text_color` <- `tile_text_color`
      }
      if (!missing(`title_color`)) {
        stopifnot(is.character(`title_color`), length(`title_color`) == 1)
        self$`title_color` <- `title_color`
      }
      if (!missing(`warn_button_color`)) {
        stopifnot(is.character(`warn_button_color`), length(`warn_button_color`) == 1)
        self$`warn_button_color` <- `warn_button_color`
      }
      if (!missing(`tile_title_alignment`)) {
        stopifnot(is.character(`tile_title_alignment`), length(`tile_title_alignment`) == 1)
        self$`tile_title_alignment` <- `tile_title_alignment`
      }
      if (!missing(`tile_shadow`)) {
        self$`tile_shadow` <- `tile_shadow`
      }
    },
    toJSON = function() {
      ThemeSettingsObject <- list()
      if (!is.null(self$`background_color`)) {
        ThemeSettingsObject[['background_color']] <- self$`background_color`
      }
      if (!is.null(self$`base_font_size`)) {
        ThemeSettingsObject[['base_font_size']] <- self$`base_font_size`
      }
      if (!is.null(self$`color_collection_id`)) {
        ThemeSettingsObject[['color_collection_id']] <- self$`color_collection_id`
      }
      if (!is.null(self$`font_color`)) {
        ThemeSettingsObject[['font_color']] <- self$`font_color`
      }
      if (!is.null(self$`font_family`)) {
        ThemeSettingsObject[['font_family']] <- self$`font_family`
      }
      if (!is.null(self$`font_source`)) {
        ThemeSettingsObject[['font_source']] <- self$`font_source`
      }
      if (!is.null(self$`info_button_color`)) {
        ThemeSettingsObject[['info_button_color']] <- self$`info_button_color`
      }
      if (!is.null(self$`primary_button_color`)) {
        ThemeSettingsObject[['primary_button_color']] <- self$`primary_button_color`
      }
      if (!is.null(self$`show_filters_bar`)) {
        ThemeSettingsObject[['show_filters_bar']] <- self$`show_filters_bar`
      }
      if (!is.null(self$`show_title`)) {
        ThemeSettingsObject[['show_title']] <- self$`show_title`
      }
      if (!is.null(self$`text_tile_text_color`)) {
        ThemeSettingsObject[['text_tile_text_color']] <- self$`text_tile_text_color`
      }
      if (!is.null(self$`tile_background_color`)) {
        ThemeSettingsObject[['tile_background_color']] <- self$`tile_background_color`
      }
      if (!is.null(self$`tile_text_color`)) {
        ThemeSettingsObject[['tile_text_color']] <- self$`tile_text_color`
      }
      if (!is.null(self$`title_color`)) {
        ThemeSettingsObject[['title_color']] <- self$`title_color`
      }
      if (!is.null(self$`warn_button_color`)) {
        ThemeSettingsObject[['warn_button_color']] <- self$`warn_button_color`
      }
      if (!is.null(self$`tile_title_alignment`)) {
        ThemeSettingsObject[['tile_title_alignment']] <- self$`tile_title_alignment`
      }
      if (!is.null(self$`tile_shadow`)) {
        ThemeSettingsObject[['tile_shadow']] <- self$`tile_shadow`
      }

      ThemeSettingsObject
    },
    fromJSONObject = function(ThemeSettingsJsonObject) {
      ThemeSettingsObject <- ThemeSettingsJsonObject #jsonlite::fromJSON(ThemeSettingsJson, simplifyVector = FALSE)
      if (!is.null(ThemeSettingsObject$`background_color`)) {
        self$`background_color` <- ThemeSettingsObject$`background_color`
      }
      if (!is.null(ThemeSettingsObject$`base_font_size`)) {
        self$`base_font_size` <- ThemeSettingsObject$`base_font_size`
      }
      if (!is.null(ThemeSettingsObject$`color_collection_id`)) {
        self$`color_collection_id` <- ThemeSettingsObject$`color_collection_id`
      }
      if (!is.null(ThemeSettingsObject$`font_color`)) {
        self$`font_color` <- ThemeSettingsObject$`font_color`
      }
      if (!is.null(ThemeSettingsObject$`font_family`)) {
        self$`font_family` <- ThemeSettingsObject$`font_family`
      }
      if (!is.null(ThemeSettingsObject$`font_source`)) {
        self$`font_source` <- ThemeSettingsObject$`font_source`
      }
      if (!is.null(ThemeSettingsObject$`info_button_color`)) {
        self$`info_button_color` <- ThemeSettingsObject$`info_button_color`
      }
      if (!is.null(ThemeSettingsObject$`primary_button_color`)) {
        self$`primary_button_color` <- ThemeSettingsObject$`primary_button_color`
      }
      if (!is.null(ThemeSettingsObject$`show_filters_bar`)) {
        self$`show_filters_bar` <- ThemeSettingsObject$`show_filters_bar`
      }
      if (!is.null(ThemeSettingsObject$`show_title`)) {
        self$`show_title` <- ThemeSettingsObject$`show_title`
      }
      if (!is.null(ThemeSettingsObject$`text_tile_text_color`)) {
        self$`text_tile_text_color` <- ThemeSettingsObject$`text_tile_text_color`
      }
      if (!is.null(ThemeSettingsObject$`tile_background_color`)) {
        self$`tile_background_color` <- ThemeSettingsObject$`tile_background_color`
      }
      if (!is.null(ThemeSettingsObject$`tile_text_color`)) {
        self$`tile_text_color` <- ThemeSettingsObject$`tile_text_color`
      }
      if (!is.null(ThemeSettingsObject$`title_color`)) {
        self$`title_color` <- ThemeSettingsObject$`title_color`
      }
      if (!is.null(ThemeSettingsObject$`warn_button_color`)) {
        self$`warn_button_color` <- ThemeSettingsObject$`warn_button_color`
      }
      if (!is.null(ThemeSettingsObject$`tile_title_alignment`)) {
        self$`tile_title_alignment` <- ThemeSettingsObject$`tile_title_alignment`
      }
      if (!is.null(ThemeSettingsObject$`tile_shadow`)) {
        self$`tile_shadow` <- ThemeSettingsObject$`tile_shadow`
      }
    },
    fromJSON = function(ThemeSettingsJson) {
      ThemeSettingsObject <- jsonlite::fromJSON(ThemeSettingsJson, simplifyVector = FALSE)
      self$fromJSONObject(ThemeSettingsObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "background_color": %s,
           "base_font_size": %s,
           "color_collection_id": %s,
           "font_color": %s,
           "font_family": %s,
           "font_source": %s,
           "info_button_color": %s,
           "primary_button_color": %s,
           "show_filters_bar": %s,
           "show_title": %s,
           "text_tile_text_color": %s,
           "tile_background_color": %s,
           "tile_text_color": %s,
           "title_color": %s,
           "warn_button_color": %s,
           "tile_title_alignment": %s,
           "tile_shadow": %s
        }',
        self$`background_color`,
        self$`base_font_size`,
        self$`color_collection_id`,
        self$`font_color`,
        self$`font_family`,
        self$`font_source`,
        self$`info_button_color`,
        self$`primary_button_color`,
        self$`show_filters_bar`,
        self$`show_title`,
        self$`text_tile_text_color`,
        self$`tile_background_color`,
        self$`tile_text_color`,
        self$`title_color`,
        self$`warn_button_color`,
        self$`tile_title_alignment`,
        self$`tile_shadow`
      )
    },
    fromJSONString = function(ThemeSettingsJson) {
      ThemeSettingsObject <- jsonlite::fromJSON(ThemeSettingsJson, simplifyVector = FALSE)
      self$`background_color` <- ThemeSettingsObject$`background_color`
      self$`base_font_size` <- ThemeSettingsObject$`base_font_size`
      self$`color_collection_id` <- ThemeSettingsObject$`color_collection_id`
      self$`font_color` <- ThemeSettingsObject$`font_color`
      self$`font_family` <- ThemeSettingsObject$`font_family`
      self$`font_source` <- ThemeSettingsObject$`font_source`
      self$`info_button_color` <- ThemeSettingsObject$`info_button_color`
      self$`primary_button_color` <- ThemeSettingsObject$`primary_button_color`
      self$`show_filters_bar` <- ThemeSettingsObject$`show_filters_bar`
      self$`show_title` <- ThemeSettingsObject$`show_title`
      self$`text_tile_text_color` <- ThemeSettingsObject$`text_tile_text_color`
      self$`tile_background_color` <- ThemeSettingsObject$`tile_background_color`
      self$`tile_text_color` <- ThemeSettingsObject$`tile_text_color`
      self$`title_color` <- ThemeSettingsObject$`title_color`
      self$`warn_button_color` <- ThemeSettingsObject$`warn_button_color`
      self$`tile_title_alignment` <- ThemeSettingsObject$`tile_title_alignment`
      self$`tile_shadow` <- ThemeSettingsObject$`tile_shadow`
    }
  )
)
