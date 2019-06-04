from django.db import models

# Create your models here.

class User(models.Model):
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=256)
    nickname = models.CharField(max_length=20)
    email = models.EmailField()
    gender = models.BooleanField(default=True)
    photo = models.ImageField(upload_to='photo/')

    def __str__(self):
        return self.nickname

