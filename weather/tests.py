from django.test import TestCase

from .models import City

class CityTestCase(TestCase):
    def testCity(self):
        post = City(name='Delhi')
        self.assertEqual(post.name, "Delhi")
        
