from rest_framework import serializers
from .models import InterlibraryLoan

class InterlibraryLoanSerializer(serializers.ModelSerializer):
    class Meta:
        model = InterlibraryLoan
        fields = '__all__'
