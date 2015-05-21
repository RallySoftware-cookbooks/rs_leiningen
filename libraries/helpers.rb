module RSLeiningen

  def self.build_install_script(node)
    "#{node[:leiningen][:install_script_prefix]}#{node[:leiningen][:version]}#{node[:leiningen][:install_script_suffix]}"
  end 

end