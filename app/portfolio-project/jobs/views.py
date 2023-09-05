from django.shortcuts import render

# Create your views here.


def home(request):
    return HttpResponse('<h1>Blog Home</h1>')
    # return render(request, 'jobs/home.html')
    