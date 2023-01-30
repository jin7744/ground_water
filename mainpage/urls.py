from django.urls import path

from django.views.decorators.csrf import csrf_exempt
from .views import *

urlpatterns = [
    path('', main, name='main'),

    # path('accept_out', csrf_exempt(accept_out), name='accept_out'),
    # path('cancel_out', csrf_exempt(cancel_out), name='cancel_out'),


    
]