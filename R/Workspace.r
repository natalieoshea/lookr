# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Workspace Class
#'
#' @field id 
#' @field projects 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Workspace <- R6::R6Class(
  'Workspace',
  public = list(
    `id` = NULL,
    `projects` = NULL,
    `can` = NULL,
    initialize = function(`id`, `projects`, `can`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`projects`)) {
        stopifnot(is.list(`projects`), length(`projects`) != 0)
        lapply(`projects`, function(x) stopifnot(R6::is.R6(x)))
        self$`projects` <- `projects`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      WorkspaceObject <- list()
      if (!is.null(self$`id`)) {
        WorkspaceObject[['id']] <- self$`id`
      }
      if (!is.null(self$`projects`)) {
        WorkspaceObject[['projects']] <- lapply(self$`projects`, function(x) x$toJSON())
      }
      if (!is.null(self$`can`)) {
        WorkspaceObject[['can']] <- self$`can`
      }

      WorkspaceObject
    },
    fromJSON = function(WorkspaceJson) {
      WorkspaceObject <- jsonlite::fromJSON(WorkspaceJson)
      if (!is.null(WorkspaceObject$`id`)) {
        self$`id` <- WorkspaceObject$`id`
      }
      if (!is.null(WorkspaceObject$`projects`)) {
        self$`projects` <- lapply(WorkspaceObject$`projects`, function(x) {
          projectsObject <- Project$new()
          projectsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          projectsObject
        })
      }
      if (!is.null(WorkspaceObject$`can`)) {
        self$`can` <- WorkspaceObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "projects": [%s],
           "can": %s
        }',
        self$`id`,
        lapply(self$`projects`, function(x) paste(x$toJSON(), sep=",")),
        self$`can`
      )
    },
    fromJSONString = function(WorkspaceJson) {
      WorkspaceObject <- jsonlite::fromJSON(WorkspaceJson)
      self$`id` <- WorkspaceObject$`id`
      self$`projects` <- lapply(WorkspaceObject$`projects`, function(x) Project$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`can` <- WorkspaceObject$`can`
    }
  )
)