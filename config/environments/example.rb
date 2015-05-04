Dor::Config.configure do

  workflow.url 'https://example.com/workflow/'

  robots do 
    workspace '/tmp'
  end
  
  demoConfig do
    
  end

  dor do
    service_root 'https://USERNAME:PASSWORD@example.com/dor/v1'
  end
   
end

REDIS_URL = '127.0.0.1:6379/resque:development' # hostname:port[:db]/namespace
# REDIS_TIMEOUT = '5' # seconds
