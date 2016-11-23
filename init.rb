require_dependency 'iconist_hook_listener.rb'
require_dependency 'issue_workflow_buttons/view_hook_listeners'
require_dependency 'issue_workflow_buttons/issue_extension'

Redmine::Plugin.register :iconist do
  name 'Iconist plugin'
  author 'Jerome Rivron'
  description 'Add Icon for issue'
  version '0.0.1'
  url 'https://github.com/jrivron/redmine_iconsit'
  author_url 'https://github.com/jrivron'

  Issue.send(:include, IssueWorkflowButtons::IssueExtension)
  settings :default => {'empty' => true}, :partial => 'settings/iconist_settings'
end
