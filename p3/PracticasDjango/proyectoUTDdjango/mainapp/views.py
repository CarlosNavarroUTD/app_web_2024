from django.shortcuts import render, redirect

# Create your views here.

def index(requets):
    return render(requets,'mainapp/index.html', {
        'title': 'Página Principal',
        'content' : '..:: ¡Bienvenidos a mi Página Principal! ::..'
    })

def about (request):
    mensaje='Bienvenido mi Nombre es: Cecilia Gabriela Mendoza Gonzalez'
    return render (request, 'mainapp/about.html', {
        'title': 'Acerca de Nosotros',
        'content': 'Alumna en proceso de estudio para alcanzar las notas',
        'mensaje': mensaje
    })

def mision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Misión',
        'content': 'Graduarme y Obtener mi titulo de Ing.',
    })

def vision (request):
    return render (request, 'mainapp/mision.html', {
        'title': 'Visión',
        'content': 'Ser capaz de desarrollora proyectos, trabajos .'
    })

#def redirigir_inicio(request,exception=None):
    #return redirect('inicio')

def redirigir_inicio(request,exception):
    return render(request,'mainapp/404.html')