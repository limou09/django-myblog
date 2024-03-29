# Generated by Django 2.1 on 2019-05-16 19:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=20)),
                ('password', models.CharField(max_length=256)),
                ('nickname', models.CharField(max_length=20)),
                ('email', models.EmailField(max_length=254)),
                ('gender', models.BooleanField(default=True)),
                ('photo', models.ImageField(upload_to='photo/')),
            ],
        ),
    ]
