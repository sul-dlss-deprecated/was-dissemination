cert_dir = File.join(File.dirname(__FILE__), '..', 'certs')

Dor::Config.configure do

  workflow.url ''
  workflow.logfile 'log/workflow_service.log'
  workflow.shift_age 'weekly'
  solrizer.url ''

  robots do
    workspace '/tmp'
  end
  ssl do
    cert_file File.join(cert_dir,'.crt')
    key_file File.join(cert_dir,'.key')
    key_pass ''
  end
  suri do
    mint_ids true
    id_namespace 'druid'
    url ''
    user ''
    pass ''
  end
  dor do
    service_root ''
  end
  fedora do
    url ''
  end
end

REDIS_URL ||= 'sul-lyberservices-test.stanford.edu:6379/resque:test'
