from setuptools import setup, find_packages

__VERSION__ = '1.0b'
__NAME__ = 'udma'

with open('README.md') as readme_file:
    README = readme_file.read()

with open('LICENSE') as license_file:
    LICENSE = license_file.read()

setup(
    name=__NAME__,
    python_requires='>=3.6',
    author='MLAB-ICTP Team',
    version= __VERSION__,
    author_email='wflorian@ictp.it',
    description='Automatic and platform-independent CLI communication system via ethernet \n with ComBlock support.',
    long_description=README,
    long_description_content_type='text/markdown',
    url='https://gitlab.com/ictp-mlab/udma',
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    license= LICENSE,
    install_requires=[
        'wheel>=0.34.2',
        'cmd2>=2.4.3',
        'appdirs>=1.4.4',
        'tqdm>=4.58.0'
    ],
    entry_points={
        'console_scripts': ['udma_cli=cli.cli:main']
    }
)
