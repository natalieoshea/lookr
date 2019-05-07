# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LookmlModelExploreError Class
#'
#' @field message 
#' @field details 
#' @field error_pos 
#' @field field_error 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LookmlModelExploreError <- R6::R6Class(
  'LookmlModelExploreError',
  public = list(
    `message` = NULL,
    `details` = NULL,
    `error_pos` = NULL,
    `field_error` = NULL,
    initialize = function(`message`, `details`, `error_pos`, `field_error`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`details`)) {
        stopifnot(is.character(`details`), length(`details`) == 1)
        self$`details` <- `details`
      }
      if (!missing(`error_pos`)) {
        stopifnot(is.character(`error_pos`), length(`error_pos`) == 1)
        self$`error_pos` <- `error_pos`
      }
      if (!missing(`field_error`)) {
        self$`field_error` <- `field_error`
      }
    },
    toJSON = function() {
      LookmlModelExploreErrorObject <- list()
      if (!is.null(self$`message`)) {
        LookmlModelExploreErrorObject[['message']] <- self$`message`
      }
      if (!is.null(self$`details`)) {
        LookmlModelExploreErrorObject[['details']] <- self$`details`
      }
      if (!is.null(self$`error_pos`)) {
        LookmlModelExploreErrorObject[['error_pos']] <- self$`error_pos`
      }
      if (!is.null(self$`field_error`)) {
        LookmlModelExploreErrorObject[['field_error']] <- self$`field_error`
      }

      LookmlModelExploreErrorObject
    },
    fromJSON = function(LookmlModelExploreErrorJson) {
      LookmlModelExploreErrorObject <- jsonlite::fromJSON(LookmlModelExploreErrorJson)
      if (!is.null(LookmlModelExploreErrorObject$`message`)) {
        self$`message` <- LookmlModelExploreErrorObject$`message`
      }
      if (!is.null(LookmlModelExploreErrorObject$`details`)) {
        self$`details` <- LookmlModelExploreErrorObject$`details`
      }
      if (!is.null(LookmlModelExploreErrorObject$`error_pos`)) {
        self$`error_pos` <- LookmlModelExploreErrorObject$`error_pos`
      }
      if (!is.null(LookmlModelExploreErrorObject$`field_error`)) {
        self$`field_error` <- LookmlModelExploreErrorObject$`field_error`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "details": %s,
           "error_pos": %s,
           "field_error": %s
        }',
        self$`message`,
        self$`details`,
        self$`error_pos`,
        self$`field_error`
      )
    },
    fromJSONString = function(LookmlModelExploreErrorJson) {
      LookmlModelExploreErrorObject <- jsonlite::fromJSON(LookmlModelExploreErrorJson)
      self$`message` <- LookmlModelExploreErrorObject$`message`
      self$`details` <- LookmlModelExploreErrorObject$`details`
      self$`error_pos` <- LookmlModelExploreErrorObject$`error_pos`
      self$`field_error` <- LookmlModelExploreErrorObject$`field_error`
    }
  )
)