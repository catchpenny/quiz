from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
    return HttpResponse("Hello, world. You're looking at the backend.")

def home(request):
    return HttpResponse("Welcome to the Quiz app.<br><br>GitHub repository - <a href='https://github.com/catchpenny/quiz'>Quiz</a>")