# Generated by Django 4.1 on 2022-09-06 17:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('notes', '0005_rename_content_post_description_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='username',
            field=models.CharField(max_length=200, null=True),
        ),
    ]