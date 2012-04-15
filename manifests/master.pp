class hiera::master {
  require rubygems::hiera_puppet
  file{"${settings::confdir}/hiera.yaml":
    source => 'puppet:///modules/site_hiera/master/hiera.yaml',
    owner => root, group => puppet, mode => 0640;
  }
}
