# HostedResources
module HostedResources
  
  ENVIRONMENTS = {
    :production  => true,
    :test        => false,
    :development => false,
  }
  
  def self.reference_locally?
    !ENVIRONMENTS[ ENV["RAILS_ENV"].to_sym ]
  end
  
  def self.reference_locally=(value) 
    ENVIRONMENTS[ ENV["RAILS_ENV"].to_sym ] = !value
  end
  
  RESOURCES = YAML::parse( File.open( "#{File.dirname(__FILE__)}/resources.yml" ) ).transform
  
  def stylesheet_link_tag(*resources)
    resources.map!{ |resource|  hosted_resource_path(:stylesheet, resource) }
    super(resources)
  end
  
  private 
  
  def hosted_resource_path(type, resource)
    
    resource = { :name => resource } if resource.is_a?(String) or resource.is_a?(Symbol)
    resource[:name] = resource[:name].to_s
    resource[:localname] = resource[:name] if resource[:localname].nil?
    
    return resource[:localname] if HostedResources.reference_locally?
    
    raise "'#{type}' is not a registed hosted resource type"  unless resource_type = RESOURCES[type.to_s]
    
    key, resource_versions = resource_type.find{|name,value| name.eql?( resource[:name] )}
    return resource[:localname] if resource_versions.nil?
    
    if resource[:version].nil?
      return resource_versions.sort_by{|r| r['version'] }.last['url']
    else
      if resource_version = resource_versions.find{|r| r['version'].eql?(resource[:version]) }
        return resource_version['url']
      else
        raise "the #{type} #{resource[:name]} version #{resource[:version]} is not registed "
      end
    end
    
    
  end
  
end