# src/bashvar_sentry/__init__.py

"""
BashVar Sentry: Safely source bash scripts and extract variables.
"""

__version__ = "1.0.0"

from .sentry import source_and_get_vars
from .exceptions import (
    BashVarSentryError,
    BashScriptError,
    ScriptNotFoundError,
    ParsingError,
)

__all__ = [
    "source_and_get_vars",
    "BashVarSentryError",
    "BashScriptError",
    "ScriptNotFoundError",
    "ParsingError",
]
