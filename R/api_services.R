createServicesEndpoint = function() {
  services = plumber$new()
  
  services$handle("GET",
                  "/types",
                  handler = .not_implemented_yet,
                  serializer = serializer_unboxed_json())
  services$handle("OPTIONS",
                  "/types",
                  handler = .cors_option_bypass)
  
  
  services$handle("GET",
                  "/<service_id>",
                  handler=.not_implemented_yet,
                  serializer = serializer_unboxed_json())
  services$handle("DELETE",
                  "/<service_id>",
                  handler=.not_implemented_yet,
                  serializer = serializer_unboxed_json())
  services$handle("OPTIONS",
                  "/<service_id>",
                  handler=.cors_option_bypass)
  
  return(services)
}