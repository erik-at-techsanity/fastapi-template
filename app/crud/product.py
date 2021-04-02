# Standard Library Imports
from typing import (
    List,
    Optional
)

# 3rd-Party Imports
# None

# App-Local Imports
from app.crud.base import CRUDBase
from app.models.product import Product
from app.schemas import ProductCreate, ProductUpdate


class CRUDProduct(CRUDBase[Product, ProductCreate, ProductUpdate]):
    # Declare model specific CRUD operation methods.
    pass


product = CRUDProduct(Product)