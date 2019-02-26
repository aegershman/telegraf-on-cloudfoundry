# env-from-manifest-only

This is probably the most simple use-case where we define environment variables within the `manifest.yml` itself. This is _fine_, but it's limited. We can't easily store credentials in the `ENV` block, and it's generally not as useful as being able to bind to an external service.
