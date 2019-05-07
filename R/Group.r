# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Group Class
#'
#' @field id 
#' @field name 
#' @field user_count 
#' @field contains_current_user 
#' @field externally_managed 
#' @field include_by_default 
#' @field external_group_id 
#' @field can_add_to_content_metadata 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Group <- R6::R6Class(
  'Group',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `user_count` = NULL,
    `contains_current_user` = NULL,
    `externally_managed` = NULL,
    `include_by_default` = NULL,
    `external_group_id` = NULL,
    `can_add_to_content_metadata` = NULL,
    `can` = NULL,
    initialize = function(`id`, `name`, `user_count`, `contains_current_user`, `externally_managed`, `include_by_default`, `external_group_id`, `can_add_to_content_metadata`, `can`){
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`user_count`)) {
        stopifnot(is.numeric(`user_count`), length(`user_count`) == 1)
        self$`user_count` <- `user_count`
      }
      if (!missing(`contains_current_user`)) {
        self$`contains_current_user` <- `contains_current_user`
      }
      if (!missing(`externally_managed`)) {
        self$`externally_managed` <- `externally_managed`
      }
      if (!missing(`include_by_default`)) {
        self$`include_by_default` <- `include_by_default`
      }
      if (!missing(`external_group_id`)) {
        stopifnot(is.character(`external_group_id`), length(`external_group_id`) == 1)
        self$`external_group_id` <- `external_group_id`
      }
      if (!missing(`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- `can_add_to_content_metadata`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      GroupObject <- list()
      if (!is.null(self$`id`)) {
        GroupObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        GroupObject[['name']] <- self$`name`
      }
      if (!is.null(self$`user_count`)) {
        GroupObject[['user_count']] <- self$`user_count`
      }
      if (!is.null(self$`contains_current_user`)) {
        GroupObject[['contains_current_user']] <- self$`contains_current_user`
      }
      if (!is.null(self$`externally_managed`)) {
        GroupObject[['externally_managed']] <- self$`externally_managed`
      }
      if (!is.null(self$`include_by_default`)) {
        GroupObject[['include_by_default']] <- self$`include_by_default`
      }
      if (!is.null(self$`external_group_id`)) {
        GroupObject[['external_group_id']] <- self$`external_group_id`
      }
      if (!is.null(self$`can_add_to_content_metadata`)) {
        GroupObject[['can_add_to_content_metadata']] <- self$`can_add_to_content_metadata`
      }
      if (!is.null(self$`can`)) {
        GroupObject[['can']] <- self$`can`
      }

      GroupObject
    },
    fromJSON = function(GroupJson) {
      GroupObject <- jsonlite::fromJSON(GroupJson)
      if (!is.null(GroupObject$`id`)) {
        self$`id` <- GroupObject$`id`
      }
      if (!is.null(GroupObject$`name`)) {
        self$`name` <- GroupObject$`name`
      }
      if (!is.null(GroupObject$`user_count`)) {
        self$`user_count` <- GroupObject$`user_count`
      }
      if (!is.null(GroupObject$`contains_current_user`)) {
        self$`contains_current_user` <- GroupObject$`contains_current_user`
      }
      if (!is.null(GroupObject$`externally_managed`)) {
        self$`externally_managed` <- GroupObject$`externally_managed`
      }
      if (!is.null(GroupObject$`include_by_default`)) {
        self$`include_by_default` <- GroupObject$`include_by_default`
      }
      if (!is.null(GroupObject$`external_group_id`)) {
        self$`external_group_id` <- GroupObject$`external_group_id`
      }
      if (!is.null(GroupObject$`can_add_to_content_metadata`)) {
        self$`can_add_to_content_metadata` <- GroupObject$`can_add_to_content_metadata`
      }
      if (!is.null(GroupObject$`can`)) {
        self$`can` <- GroupObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %d,
           "name": %s,
           "user_count": %d,
           "contains_current_user": %s,
           "externally_managed": %s,
           "include_by_default": %s,
           "external_group_id": %s,
           "can_add_to_content_metadata": %s,
           "can": %s
        }',
        self$`id`,
        self$`name`,
        self$`user_count`,
        self$`contains_current_user`,
        self$`externally_managed`,
        self$`include_by_default`,
        self$`external_group_id`,
        self$`can_add_to_content_metadata`,
        self$`can`
      )
    },
    fromJSONString = function(GroupJson) {
      GroupObject <- jsonlite::fromJSON(GroupJson)
      self$`id` <- GroupObject$`id`
      self$`name` <- GroupObject$`name`
      self$`user_count` <- GroupObject$`user_count`
      self$`contains_current_user` <- GroupObject$`contains_current_user`
      self$`externally_managed` <- GroupObject$`externally_managed`
      self$`include_by_default` <- GroupObject$`include_by_default`
      self$`external_group_id` <- GroupObject$`external_group_id`
      self$`can_add_to_content_metadata` <- GroupObject$`can_add_to_content_metadata`
      self$`can` <- GroupObject$`can`
    }
  )
)