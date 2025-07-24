from fastapi import FastAPI, Request
from app.middleware.compliance_logger import ComplianceLoggerMiddleware
from app.routers import users

app = FastAPI()
app.add_middleware(ComplianceLoggerMiddleware)

app.include_router(users.router)
