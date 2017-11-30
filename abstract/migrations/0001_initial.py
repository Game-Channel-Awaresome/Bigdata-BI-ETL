# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-04-15 05:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Conception',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128, verbose_name='Conception Name')),
                ('defination', models.TextField(verbose_name='Conception Defination')),
                ('date_added', models.DateTimeField(auto_now_add=True, verbose_name='Date added')),
                ('date_updated', models.DateTimeField(auto_now=True, verbose_name='Date updated')),
            ],
        ),
        migrations.CreateModel(
            name='Dimension',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128, verbose_name='Dimension Name')),
                ('event', models.CharField(max_length=128, verbose_name='Event Name')),
                ('defination', models.TextField(verbose_name='Dimension Defination')),
                ('date_added', models.DateTimeField(auto_now_add=True, verbose_name='Date added')),
                ('date_updated', models.DateTimeField(auto_now=True, verbose_name='Date updated')),
            ],
        ),
    ]
