# Task Overview

You are addressing a performance issue in a FastAPI backend, specifically related to the /users/profile endpoint, following the introduction of a compliance logging middleware. The current middleware implementation synchronously writes logs to a file, causing severe slowdowns and API timeouts, especially under high concurrency. Your goal is to refactor the compliance logging solution to be fully compatible with FastAPI's async event loop while maintaining regulatory and business guarantees for logging integrity and application responsiveness.

# Guidance

- Focus on analyzing the middleware and identifying how blocking operations affect async performance in FastAPI.
- Ensure the updated logging approach does not drop compliance logs and performs reliably under production loads.
- Consider concurrency and I/O constraints typical to Python async backends.
- Leverage Docker for isolated, production-like deployment and validation.

# Objectives

- Refactor the compliance logging middleware to prevent blocking the async event loop during request logging.
- Guarantee that all compliance logs are reliably stored, with complete logging integrity.
- Ensure the /users/profile and related endpoints remain highly performant, even under sustained, concurrent load.
- Validate the updated solution in a Dockerized environment for correct operation and responsiveness.

# How to Verify

- Use tools to generate concurrent requests to the /users/profile endpoint and ensure consistently fast API responses.
- Examine the compliance log file to confirm every request is logged as required by compliance.
- Confirm that Docker deployment starts successfully and allows expected access to the application endpoints.
