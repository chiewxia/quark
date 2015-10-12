# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from .dispatch import dispatch
from .ast import *

def has_super(fun):
    for stmt in fun.body.statements:
        if is_super(stmt):
            return True
    return False

@dispatch(Statement)
def is_super(stmt):
    return False

@dispatch(ExprStmt)
def is_super(stmt):
    return is_super(stmt.expr)

@dispatch(Expression)
def is_super(expr):
    return False

@dispatch(Call)
def is_super(call):
    return isinstance(call.expr, Super)

def constructors(cls):
    return [d for d in cls.definitions if isinstance(d, Method) and d.type is None]

def base_constructors(cls):
    base = cls.base
    cons = []
    while base:
        cons = constructors(base.definition)
        if cons:
            break
        else:
            base = base.definition.base
    return cons
