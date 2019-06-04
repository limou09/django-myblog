import xadmin
from xadmin import views
from .models import Banner,Category,Tag,Tui,Article,Link
#  导入需要管理的数据库
# Register your models here.

#   自定义模板内容
class GlobalSetting(object):
    site_title = '大脸后台管理系统'#修改首页标题
    site_footer = "大脸科技有限公司"#修改首页页脚标题
    menu_style = "accordion"

#  注册文章类
class ArticleAdmin(object):
    #  后台展示字段
    list_display = ['id','category','tags','title','tui','user','views','create_time']
    #   搜索
    search_fields = ['category','tags','title','user']
    #  后台数据分页
    list_per_page = 50
    #  后台数据排序方式
    ordering = ['-create_time']
    #   显示富文本
    style_fields = {"body": "ueditor"}
    def tag(self,obj):
        return [bt.name for bt in obj.tags.all()]
    filter_horizontal = ('tags',)


#  注册广告类
class BannerAdmin(object):
    list_display = ['id','text_info','img','link_url','is_active']

#  注册分类表
class CategoryAdmin(object):
    list_display = ['id','name','index']

#  注册标签类
class TagAdmin(object):
    list_display = ['id','name']

#  注册推荐类
class TuiAdmin(object):
    list_display = ['id','name']

#  注册友情链接
class LinkAdmin(object):
    list_display = ['id','name','linkurl']

#	注册xadmin模型类
xadmin.site.register(Article, ArticleAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(Category, CategoryAdmin)
xadmin.site.register(Tag, TagAdmin)
xadmin.site.register(Tui, TuiAdmin)
xadmin.site.register(Link, LinkAdmin)

xadmin.site.register(views.CommAdminView, GlobalSetting)
