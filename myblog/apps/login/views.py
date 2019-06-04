from django.shortcuts import render,redirect,reverse
from .models import User
from blog.models import Category
from .forms import *
from django.http import JsonResponse
from captcha.models import CaptchaStore

# Create your views here.

def global_user(request):
    #   用户是否登录
    is_login = request.session.get('is_login', None)
    #   根据is_login获取user数据
    if is_login:
        user_name = request.session.get('user_name', '')
        user = User.objects.get(nickname=user_name)
    return locals()

# sha256加密
def sha256(pwd):
    import hashlib
    has = hashlib.sha256()
    has.update(pwd.encode('utf8'))
    return has.hexdigest()

#   ajax动态验证
def ajax_code(request):
    if request.is_ajax():
        cs = CaptchaStore.objects.filter(response=request.GET.get('response'),hashkey=request.GET.get('hashkey'))
        if cs:
            json_data = {'status':1}
        else:
            json_data = {'status':0}
        return JsonResponse(json_data)
    else:
        json_data = {'status': 0}
        return JsonResponse(json_data)


#   注册
def register(request):
    if request.method == 'GET':
        all_cate = Category.objects.all()
        register_form = RegisterForm()

        return render(request, 'login/register.html', locals())
    else:
        all_cate = Category.objects.all()
        register_form = RegisterForm(request.POST,request.FILES)

        if register_form.is_valid():
            username = register_form.cleaned_data.get('username')
            password1 = register_form.cleaned_data.get('password1')
            password2 = register_form.cleaned_data.get('password2')
            gender = register_form.cleaned_data.get('sex')
            email = register_form.cleaned_data.get('email')
            nickname = register_form.cleaned_data.get('nickname')
            photo = register_form.cleaned_data.get('photo')

            #判断用户名和邮箱的唯一性
            u = User.objects.filter(username=username)
            if u:
                message = "用户已存在"
                return render(request, 'login/register.html', locals())
            else:
                e = User.objects.filter(email=email)
                if e:
                    message = "邮箱已存在"
                    return render(request, 'login/register.html', locals())
                else:
                    user = User(username=username,password=sha256(password1),gender=gender,email=email,nickname=nickname,photo=photo)
                    user.save()
                    return redirect(reverse("login:login"))

        else:

            error = register_form.errors
            return render(request, 'login/register.html', locals())

#   登录
def login(request):
    if request.method == 'GET':
        all_cate = Category.objects.all()
        login_form = LoginForm()

        return render(request, 'login/login.html', locals())
    else:
        all_cate = Category.objects.all()
        login_form = LoginForm(request.POST)

        if login_form.is_valid():
            username = login_form.cleaned_data.get('username')
            password = login_form.cleaned_data.get('password')

            try:
                user = User.objects.get(username=username)
            except:
                message = "用户不存在"
                return render(request, 'login/login.html', locals())
            if user.password == sha256(password):
                request.session['is_login'] = True
                request.session['user_name'] = user.nickname
                request.session['user_id'] = user.id
                return redirect(reverse("blog:index"))
            else:
                message = "密码错误"
                return render(request, 'login/login.html', locals())

        else:
            return render(request, 'login/login.html', locals())

def logout(request):
    if not request.session.get('is_login',None):
        return redirect(reverse("blog:index"))
    request.session.flush()
    return redirect(reverse("blog:index"))

def setting(request):
    if request.method == 'GET':
        all_cate = Category.objects.all()

        return render(request, 'login/setting.html', locals())
    else:
        all_cate = Category.objects.all()
        #   用户是否登录
        is_login = request.session.get('is_login', None)
        #   根据is_login获取user数据
        if is_login:
            user_name = request.session.get('user_name', '')
            user = User.objects.get(nickname=user_name)

        photo = request.FILES.get('photo',user.photo)
        nickname = request.POST.get('nickname',user.nickname)
        gender = request.POST.get('gender',user.gender)
        email = request.POST.get('email',user.email)
        username = request.POST.get('username',user.username)

        if photo and nickname and gender and email and username:
            user.photo = photo
            user.nickname = nickname
            user.email = email
            user.username = username
            user.save()
            return redirect(reverse("login:setting"))


