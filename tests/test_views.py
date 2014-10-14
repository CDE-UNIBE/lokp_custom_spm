import pytest
from unittest import TestCase

from conftest import skip_if_no_ini


@pytest.mark.spm
@pytest.mark.customization
@skip_if_no_ini
@pytest.mark.usefixtures('customization_app')
@pytest.mark.integration
class ViewTests(TestCase):

    customization_title = 'ESAPP Stakeholder Platform'

    def is_url_available(self, url):
        res = self.app.get(url)
        # If the route is being redirected, follow it.
        if res.status_int == 302:
            res = res.follow()
        self.assertEqual(res.status_int, 200)
        self.assertIn(self.customization_title, res.body)

    def test_root_view(self):
        self.is_url_available('/')

    def test_map_view(self):
        self.is_url_available('/map')

    def test_charts_view(self):
        self.is_url_available('/charts')
