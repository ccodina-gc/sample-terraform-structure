gcp_project_id = "[PROJECT_ID]"

flow_hook_config = {
  "dev" : { 
    "PreProxyFlowHook" : {
      "sharedflow" : "sharedflow1",
      "description" : "Description for PreProxyFlowHook in dev"
    },
    "PostProxyFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostProxyFlowHook in dev"
    },
    "PreTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PreTargetFlowHook in dev"
    },
    "PostTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostTargetFlowHook in dev"
    }
  },
  "prod" : { 
    "PreProxyFlowHook" : {
      "sharedflow" : "sharedflow1",
      "description" : "Description for PreProxyFlowHook in prod"
    },
    "PostProxyFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostProxyFlowHook in prod"
    },
    "PreTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PreTargetFlowHook in prod"
    },
    "PostTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostTargetFlowHook in prod"
    }
  },
  "qa" : { 
    "PreProxyFlowHook" : {
      "sharedflow" : "sharedflow1",
      "description" : "Description for PreProxyFlowHook in qa"
    },
    "PostProxyFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostProxyFlowHook in qa"
    },
    "PreTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PreTargetFlowHook in qa"
    },
    "PostTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostTargetFlowHook in qa"
    }
  },
  "stg" : { 
    "PreProxyFlowHook" : {
      "sharedflow" : "sharedflow1",
      "description" : "Description for PreProxyFlowHook in stg"
    },
    "PostProxyFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostProxyFlowHook in stg"
    },
    "PreTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PreTargetFlowHook in stg"
    },
    "PostTargetFlowHook" : {
      "sharedflow" : "sharedflow2",
      "description" : "Description for PostTargetFlowHook in stg"
    }
  }
}
