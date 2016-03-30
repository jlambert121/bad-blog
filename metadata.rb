name 'bad-blog'
maintainer 'Justin Lambert'
maintainer_email 'jlambert@eml.cc'
license 'all_rights'
description 'Installs/Configures bad-blog'
long_description 'Installs/Configures bad-blog'
version '0.1.0'

depends                 'apt'
depends                 'hhvm'
depends                 'nginx'
depends                 'mysql'
depends                 'wordpress'

supports                'ubuntu'

source_url 'https://github.com/jlambert121/bad-blog' if respond_to?(:source_url)
issues_url 'https://github.com/jlambert121/bad-blog/issues' if respond_to?(:issues_url)
