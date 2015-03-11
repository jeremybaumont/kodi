#
# Cookbook Name:: kodi
# Attribute:: default
#

default['kodi']['packages']['required']['software-properties-common']['preferences']['pin'] = 'version 0.92.37.3'
default['kodi']['packages']['required']['software-properties-common']['preferences']['pin_priority'] = '700'

default['kodi']['apt']['repositories']['kodi']['uri'] = 'ppa:team-xbmc/ppa'
default['kodi']['apt']['repositories']['kodi']['distribution'] = 'trusty'


default['kodi']['main-packages'] = ['kodi']
