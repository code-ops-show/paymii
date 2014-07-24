module SettingsHelper
	def settings_icon
		{ 'account' => 'tasks',
			'invoice' => 'file',
			'company' => 'building-o' }
	end

  def possible_values
    YAML::load(File.open(File.join(Rails.root, 'config', 'configurables.yml')))[:possible_values]
  end
end
