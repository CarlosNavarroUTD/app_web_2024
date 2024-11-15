from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request,  'mainapp/index.html', {
    'title': 'inicio',
    'content': 'Soy inicio'
    })

def about(request):
    return render(request,  'mainapp/about.html', {
    'title': 'about',
    'content': 'Soy about'
    })

def mision(request):
    return render(request,  'mainapp/mision.html', {
    'title': 'misión',
    'content': 'Soy misión'
    })

def vision(request):
    return render(request,  'mainapp/vision.html', {
    'title': 'visión',
    'content': 'Soy visión'
    })