# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-06 09:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('etl', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='computeconfiguration',
            name='desc',
            field=models.TextField(verbose_name='Description of the configuration'),
        ),
        migrations.AlterField(
            model_name='computeengine',
            name='desc',
            field=models.TextField(verbose_name='Description of the engine'),
        ),
    ]
