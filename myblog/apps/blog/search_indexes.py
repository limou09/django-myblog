from haystack import indexes
from .models import Article


# 指定对于某个类的某些数据建立索引
# GoodsInfoIndex类名可以修改为xxxxIndex,
class ArticleIndex(indexes.SearchIndex, indexes.Indexable):
	text = indexes.CharField(document=True, use_template=True)

	#   对title和excerpt字段进行索引
	title = indexes.CharField(model_attr='title')
	excerpt = indexes.CharField(model_attr='excerpt')

	def get_model(self):
		return Article

	def index_queryset(self, using=None):
		return self.get_model().objects.all()