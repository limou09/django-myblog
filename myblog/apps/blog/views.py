from django.shortcuts import render,reverse,redirect
from .models import *
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger
from login.models import User


# Create your views here.

def global_blog(request):
    #  获取文章分类所有数据
    all_cate = Category.objects.all()
    #   获取热门推荐
    remen = Article.objects.filter(tui__id=1)[:6]
    #   获取所有标签
    tags = Tag.objects.all()[:9]

    return locals()

#  博客首页
def index(request):
    #  获取广告图数据并进行切片
    banner = Banner.objects.filter(is_active=True)[0:4]
    #  获取推荐阅读
    tui = Article.objects.filter(tui__id=2)[:3]
    #  获取最新文章列表
    article = Article.objects.all().order_by('-id')[0:5]
    #   获取热门文章排行
    hot = Article.objects.all().order_by('-views')[:10]
    #   获取友情链接
    link = Link.objects.all()

    return render(request, 'index.html', locals())

#   文章分类列表
def list(request,lid):
    #   获取通过URL传递的参数，筛选出对应的文章
    list = Article.objects.filter(category_id=lid).order_by('-update_time')
    #   获取当前文章的分类名
    cname = Category.objects.get(id=lid)
    #   获取当前页码
    page = request.GET.get('page')
    #   对数据进行分页,3条数据分一页
    paginator = Paginator(list,5)

    #   捕获异常
    try:
        list = paginator.page(page)# 获取当前页码的数据
    except PageNotAnInteger:# 如果用户访问一个非整数页码
        list = paginator.page(1)#返回第一页数据
    except EmptyPage:#如果用户访问页码不存在
        list = paginator.page(paginator.num_pages)#返回最后一页数据

    return render(request, 'list.html', locals())

def show(request,sid):
    #   获取指定id相对应的文章
    show = Article.objects.get(pk=sid)
    #   获取当前标签
    show_tag = Tag.objects.filter(article=sid)
    #   右侧热门文章排行
    hot = Article.objects.all().order_by('-views')[:10]
    #   上一篇博客
    previous_blog = Article.objects.filter(create_time__gt=show.create_time,category=show.category.id).first()
    #   下一篇博客
    next_blog = Article.objects.filter(create_time__lt=show.create_time,category=show.category.id).last()

    #   增加点击量
    show.views = show.views + 1
    show.save()

    return render(request, 'show.html', locals())


#   标签
def tag(request,tag):
    #   通过文章标签获取文章信息
    list = Article.objects.filter(tags__name=tag)
    #   获取当前搜索的标签名
    tname = Tag.objects.get(name=tag)
    #   获取分页
    page = request.GET.get('page')
    #   对数据进行分页
    paginator = Paginator(list,5)

    try:
        list = paginator.page(page)#获取当前页码记录
    except PageNotAnInteger:
        list = paginator.page(1)
    except EmptyPage:
        list = paginator.page(paginator.num_pages)

    return render(request, 'tags.html', locals())


# def search(request):
#     #   获取关键词
#     search = request.GET.get('search')
#     #   获取搜索关键词通过标题进行匹配
#     list = Article.objects.filter(title__icontains=search)
#     #   获取分页页码
#     page = request.GET.get('page')
#     #   对数据进行分页
#     paginator = Paginator(list, 10)
#
#     try:
#         list = paginator.page(page)
#     except PageNotAnInteger:
#         list = paginator.page(1)
#     except EmptyPage:
#         list = paginator.page(paginator.num_pages)
#
#     return render(request, 'search/search.html', locals())


#   关于我们
def about(request):
    return render(request, 'page.html', locals())
