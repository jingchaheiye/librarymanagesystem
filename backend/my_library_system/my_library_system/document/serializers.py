from rest_framework import serializers
from .models import DocumentResource

class DocumentResourceSerializer(serializers.ModelSerializer):
    class Meta:
        model = DocumentResource
        fields = '__all__'
