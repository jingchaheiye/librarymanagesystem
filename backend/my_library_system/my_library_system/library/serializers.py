from rest_framework import serializers
from .models import Book, Category

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'

class BookSerializer(serializers.ModelSerializer):
    category = CategorySerializer()

    class Meta:
        model = Book
        fields = '__all__'

    def create(self, validated_data):
        category_data = validated_data.pop('category')
        category, created = Category.objects.get_or_create(**category_data)
        book = Book.objects.create(category=category, **validated_data)
        return book

    def update(self, instance, validated_data):
        category_data = validated_data.pop('category')
        category, created = Category.objects.get_or_create(**category_data)
        
        instance.title = validated_data.get('title', instance.title)
        instance.author = validated_data.get('author', instance.author)
        instance.isbn = validated_data.get('isbn', instance.isbn)
        instance.publisher = validated_data.get('publisher', instance.publisher)
        instance.publish_date = validated_data.get('publish_date', instance.publish_date)
        instance.category = category
        instance.stock = validated_data.get('stock', instance.stock)
        instance.location = validated_data.get('location', instance.location)
        instance.status = validated_data.get('status', instance.status)
        instance.save()
        return instance

class BookCreateUpdateSerializer(serializers.ModelSerializer):
    category_id = serializers.PrimaryKeyRelatedField(queryset=Category.objects.all(), source='category')

    class Meta:
        model = Book
        fields = '__all__'
