from django.db import models
from django.contrib.auth.models import User
from DjangoUeditor.models import UEditorField
# Create your models here.

#  文章分类（category）
class Category(models.Model):
    name = models.CharField('文章分类', max_length=100)
    index = models.IntegerField(default=999, verbose_name='分类排序')

    class Meta:
        verbose_name = "文章分类"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

# 文章标签（tag）：
class Tag(models.Model):
    name = models.CharField('文章标签',max_length=100)

    class Meta:
        verbose_name = "文章标签"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

# 推荐位（tui）：
class Tui(models.Model):
    name = models.CharField('推荐位',max_length=100)

    class Meta:
        verbose_name = '推荐位'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

#文章表（Article）：
class Article(models.Model):
    title = models.CharField('标题',max_length=100)
    excerpt = models.TextField('摘要',max_length=200,blank=True)
    #  与文章分类外键关联 一对多关系
    category  = models.ForeignKey(Category,on_delete=models.DO_NOTHING,verbose_name='分类',blank=True,null=True)
    #  与文章标签外键关联多对多关系
    tags  = models.ManyToManyField(Tag,verbose_name='标签',blank=True)
    img   = models.ImageField(upload_to='article_img/%Y/%m/%d/', verbose_name='文章图片',blank=True,null=True)
    #  富文本字段
    body  = UEditorField('内容',width=800,height=500,toolbars="full", imagePath="upimg/", filePath="upfile/",upload_settings={"imageMaxSize": 1204000},settings={}, command=None, blank=True)

    user  = models.ForeignKey(User,on_delete=models.CASCADE,verbose_name='作者')
    views = models.PositiveIntegerField('阅读量',default=0)
    tui   = models.ForeignKey(Tui,on_delete=models.DO_NOTHING)
    create_time = models.DateTimeField('发布时间',auto_now_add=True)
    update_time = models.DateTimeField('修改时间',auto_now=True)

    class Meta:
        verbose_name = '文章列表'
        verbose_name_plural = verbose_name

    def __str__(self):
        return  self.title

# 广告图（banner）：
class Banner(models.Model):
    text_info = models.CharField('标题',max_length=50,default='')
    img = models.ImageField('轮播图',upload_to='banner/')
    link_url = models.URLField('图片链接',max_length=100)
    is_active = models.BooleanField('是否激活',default=False)

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.text_info


# 友情链接（link）：
class Link(models.Model):
    name = models.CharField('链接名称',max_length=50)
    linkurl = models.URLField('网址',max_length=100)

    class Meta:
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

#   评论
class Comment(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('昵称', max_length=20)
    email = models.EmailField('邮箱')
    content = models.TextField('内容')
    publish = models.DateField('时间', auto_now=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE, verbose_name='文章')
    reply = models.ForeignKey('self', on_delete=models.DO_NOTHING, null=True, blank=True, verbose_name='回复')

    class Meta:
        verbose_name_plural = verbose_name = '评论'

    def __str__(self):
        return self.content