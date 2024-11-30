from django.shortcuts import render, redirect

# Create your views here.

def index(requets):
    return render(requets,'mainapp/index.html', {
        'title': 'Página Principal',
        'content' : '..:: ¡Bienvenidos a mi Página Principal! ::..'
    })

def about (request):
    mensaje='Bienvenido mi Nombre es: Carlos Jair Navarro Huerta'
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


def login (request):
    return render (request, 'mainapp/login.html', {
        'title': 'Iniciar sesión',
        'content': 'Este es un formulario de inicio de sesión'
    })

def signin (request):
    return render (request, 'mainapp/signin.html', {
        'title': 'Registrarse',
        'content': 'Este es un formulario de registro'
    })

def register_user(request):

  if request.user.is_authenticated:
    return redirect('inicio')
  else:
     register_form=UserCreationForm()

     if request.method == "POST":
       register_form=UserCreationForm(request.POST)

       if register_form.is_valid():
          register_form.save()
          messages.success(request,"¡Registro con Éxito")
          return redirect('inicio')
          
     return render(request,'users/register.html',{
     'title':'Registro de Usuario',
     'register_form':register_form
     })