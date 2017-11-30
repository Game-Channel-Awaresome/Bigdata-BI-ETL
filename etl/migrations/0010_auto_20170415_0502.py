# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-04-15 05:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('etl', '0009_auto_20170110_1041'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductIdName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_id', models.CharField(max_length=128, verbose_name='Id of the product')),
                ('name', models.CharField(max_length=128, verbose_name='Name of the product')),
            ],
        ),
        migrations.AddField(
            model_name='reportunit',
            name='dimension',
            field=models.TextField(default='[]', verbose_name='The dimension configuration'),
        ),
        migrations.AddField(
            model_name='reportunit',
            name='unitname',
            field=models.CharField(default='ds', max_length=128, verbose_name='Unit name of the report unit'),
        ),
    ]
