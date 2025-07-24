from starlette.middleware.base import BaseHTTPMiddleware
from starlette.requests import Request

class ComplianceLoggerMiddleware(BaseHTTPMiddleware):
    async def dispatch(self, request: Request, call_next):
        # This is the middleware for compliance logging
        # The implementation should ensure non-blocking logging
        response = await call_next(request)
        # Place where logging should occur (currently blocking)
        return response
