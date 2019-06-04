"""myblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include,re_path
#   导入静态文件模块
from django.views.static import serve
from django.conf import settings
from captcha.views import captcha_refresh

urlpatterns = [
    path('admin/', admin.site.urls),

    #   博客
    path('', include(('blog.urls','blog'),namespace='blog')),
    #   用户登录注册
    path('login/', include(('login.urls','login'),namespace='login')),

    #  富文本路由
    path('ueditor/', include('DjangoUeditor.urls')),
    #  富文本上传图片显示图片
    re_path(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),

    #   验证码
    path('captcha/', include('captcha.urls')),
    re_path(r'refresh/$', captcha_refresh, name='captcha-refresh'),

]
