from django.urls import path, admin
from mainapp import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='inicio'),
    path('inicio/', views.index, name='inicio'),
    path('acercade/', views.about, name='acercade'),
    path('mision/', views.mision, name='mision'),
    path('vision/', views.vision, name='vision'),
    path('login/', views.login, name='login'),
    path('signin/', views.sigin, name='signin')
]