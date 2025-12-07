from setuptools import setup, find_packages

setup(
    name = 'pelican-podcast-feed',
    version = '0.0.1',
    url = 'https://github.com/magnunleno/pelican-podcast-feed',
    author = 'Magnun Leno',
    author_email = 'magnun.leno@gmail.com',
    description = 'This plugins adds a feed generator and feed writer for your podcast.',
    packages = '.',
    install_requires = [
        'six',
        'pelican',
        'jinja2',
        'feedgenerator',
        'htmlminf==0.1.13',
    ],
)
