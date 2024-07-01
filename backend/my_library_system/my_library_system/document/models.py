from django.db import models

class DocumentResource(models.Model):
    RESOURCE_TYPES = [
        ('journal', 'Journal'),
        ('paper', 'Paper'),
        ('ebook', 'Ebook'),
    ]

    title = models.CharField(max_length=255)
    type = models.CharField(max_length=10, choices=RESOURCE_TYPES)
    file_path = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
