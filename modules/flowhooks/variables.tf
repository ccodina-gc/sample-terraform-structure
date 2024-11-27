variable "gcp_project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "flow_hook_config" {
  type        = map(map(object({ sharedflow = string, description = string })))
  description = "Configuration for flow hooks across environments"
  default = {
    "dev" : { 
      "PreProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PreTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      }
    },
    "prod" : { 
      "PreProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PreTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      }
    },
    "qa" : { 
      "PreProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PreTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      }
    },
    "stg" : { 
      "PreProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostProxyFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PreTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      },
      "PostTargetFlowHook" : {
        "sharedflow" : "",
        "description" : ""
      }
    }
  }
}