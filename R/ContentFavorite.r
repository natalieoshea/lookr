# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ContentFavorite Class
#'
#' @field id 
#' @field user_id 
#' @field content_metadata_id 
#' @field look_id 
#' @field dashboard_id 
#' @field look 
#' @field dashboard 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContentFavorite <- R6::R6Class(
  'ContentFavorite',
  public = list(
    `id` = NULL,
    `user_id` = NULL,
    `content_metadata_id` = NULL,
    `look_id` = NULL,
    `dashboard_id` = NULL,
    `look` = NULL,
    `dashboard` = NULL,
    `can` = NULL,
    initialize = function(`id`, `user_id`, `content_metadata_id`, `look_id`, `dashboard_id`, `look`, `dashboard`, `can`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`user_id`)) {
        stopifnot(is.numeric(`user_id`), length(`user_id`) == 1)
        self$`user_id` <- `user_id`
      }
      if (!missing(`content_metadata_id`)) {
        stopifnot(is.numeric(`content_metadata_id`), length(`content_metadata_id`) == 1)
        self$`content_metadata_id` <- `content_metadata_id`
      }
      if (!missing(`look_id`)) {
        stopifnot(is.numeric(`look_id`), length(`look_id`) == 1)
        self$`look_id` <- `look_id`
      }
      if (!missing(`dashboard_id`)) {
        stopifnot(is.numeric(`dashboard_id`), length(`dashboard_id`) == 1)
        self$`dashboard_id` <- `dashboard_id`
      }
      if (!missing(`look`)) {
        stopifnot(R6::is.R6(`look`))
        self$`look` <- `look`
      }
      if (!missing(`dashboard`)) {
        stopifnot(R6::is.R6(`dashboard`))
        self$`dashboard` <- `dashboard`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      ContentFavoriteObject <- list()
      if (!is.null(self$`id`)) {
        ContentFavoriteObject[['id']] <- self$`id`
      }
      if (!is.null(self$`user_id`)) {
        ContentFavoriteObject[['user_id']] <- self$`user_id`
      }
      if (!is.null(self$`content_metadata_id`)) {
        ContentFavoriteObject[['content_metadata_id']] <- self$`content_metadata_id`
      }
      if (!is.null(self$`look_id`)) {
        ContentFavoriteObject[['look_id']] <- self$`look_id`
      }
      if (!is.null(self$`dashboard_id`)) {
        ContentFavoriteObject[['dashboard_id']] <- self$`dashboard_id`
      }
      if (!is.null(self$`look`)) {
        ContentFavoriteObject[['look']] <- self$`look`$toJSON()
      }
      if (!is.null(self$`dashboard`)) {
        ContentFavoriteObject[['dashboard']] <- self$`dashboard`$toJSON()
      }
      if (!is.null(self$`can`)) {
        ContentFavoriteObject[['can']] <- self$`can`
      }

      ContentFavoriteObject
    },
    fromJSON = function(ContentFavoriteJson) {
      ContentFavoriteObject <- jsonlite::fromJSON(ContentFavoriteJson)
      if (!is.null(ContentFavoriteObject$`id`)) {
        self$`id` <- ContentFavoriteObject$`id`
      }
      if (!is.null(ContentFavoriteObject$`user_id`)) {
        self$`user_id` <- ContentFavoriteObject$`user_id`
      }
      if (!is.null(ContentFavoriteObject$`content_metadata_id`)) {
        self$`content_metadata_id` <- ContentFavoriteObject$`content_metadata_id`
      }
      if (!is.null(ContentFavoriteObject$`look_id`)) {
        self$`look_id` <- ContentFavoriteObject$`look_id`
      }
      if (!is.null(ContentFavoriteObject$`dashboard_id`)) {
        self$`dashboard_id` <- ContentFavoriteObject$`dashboard_id`
      }
      if (!is.null(ContentFavoriteObject$`look`)) {
        lookObject <- LookBasic$new()
        lookObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$look, auto_unbox = TRUE))
        self$`look` <- lookObject
      }
      if (!is.null(ContentFavoriteObject$`dashboard`)) {
        dashboardObject <- DashboardBase$new()
        dashboardObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$dashboard, auto_unbox = TRUE))
        self$`dashboard` <- dashboardObject
      }
      if (!is.null(ContentFavoriteObject$`can`)) {
        self$`can` <- ContentFavoriteObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "user_id": %d,
           "content_metadata_id": %d,
           "look_id": %d,
           "dashboard_id": %d,
           "look": %s,
           "dashboard": %s,
           "can": %s
        }',
        self$`id`,
        self$`user_id`,
        self$`content_metadata_id`,
        self$`look_id`,
        self$`dashboard_id`,
        self$`look`$toJSON(),
        self$`dashboard`$toJSON(),
        self$`can`
      )
    },
    fromJSONString = function(ContentFavoriteJson) {
      ContentFavoriteObject <- jsonlite::fromJSON(ContentFavoriteJson)
      self$`id` <- ContentFavoriteObject$`id`
      self$`user_id` <- ContentFavoriteObject$`user_id`
      self$`content_metadata_id` <- ContentFavoriteObject$`content_metadata_id`
      self$`look_id` <- ContentFavoriteObject$`look_id`
      self$`dashboard_id` <- ContentFavoriteObject$`dashboard_id`
      LookBasicObject -> LookBasic$new()
      self$`look` <- LookBasicObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$look, auto_unbox = TRUE))
      DashboardBaseObject -> DashboardBase$new()
      self$`dashboard` <- DashboardBaseObject$fromJSON(jsonlite::toJSON(ContentFavoriteObject$dashboard, auto_unbox = TRUE))
      self$`can` <- ContentFavoriteObject$`can`
    }
  )
)