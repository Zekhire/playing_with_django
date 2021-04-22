from django.db import models

# Create your models here.


class Group(models.Model):
    name = models.CharField(max_length=32)

    def __str__(self):
        return self.name

class User(models.Model):
    first_name  = models.CharField(max_length=32)
    second_name = models.CharField(max_length=32)
    friends     = models.ManyToManyField("self")
    groups      = models.ManyToManyField(Group)


    def __str__(self):
        return self.first_name + " " + self.second_name