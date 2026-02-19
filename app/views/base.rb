class Views::Base < Components::Base
  include ApplicationHelper

  GITHUB_REPO_URL = "https://github.com/sethhorsley/seth_ui/"
  GITHUB_FILE_URL = "#{GITHUB_REPO_URL}blob/main/"

  def before_template
    # Docs::VisualCodeExample.reset_collected_code
    super
  end
end
