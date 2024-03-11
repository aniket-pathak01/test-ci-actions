from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.

def func1(request):
    user = 3
    if user == 3:
        return HttpResponse("we got your message and it is working successfully good")
    
    return HttpResponse("you code is not working something issue raised")