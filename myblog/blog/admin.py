from django.contrib import admin
from .models import Banner,Category,Tag,Tui,Article,Link
#  导入需要管理的数据库
# Register your models here.

#  注册文章类
@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    #  后台展示字段
    list_display = ['id','category','tag','title','tui','user','views','create_time']
    #  后台数据分页
    list_per_page = 50
    #  后台数据排序方式
    ordering = ['-create_time']

    def tag(self,obj):
        return [bt.name for bt in obj.tags.all()]
    filter_horizontal = ('tags',)

#  注册广告类
@admin.register(Banner)
class BannerAdmin(admin.ModelAdmin):
    list_display = ['id','text_info','img','link_url','is_active']

#  注册分类表
@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['id','name','index']

#  注册标签类
@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ['id','name']

#  注册推荐类
@admin.register(Tui)
class TuiAdmin(admin.ModelAdmin):
    list_display = ['id','name']

#  注册友情链接
@admin.register(Link)
class LinkAdmin(admin.ModelAdmin):
    list_display = ['id','name','linkurl']