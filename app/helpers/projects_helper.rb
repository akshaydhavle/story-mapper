module ProjectsHelper
  def sticky(title, content)
    render :partial => "projects/sticky", :locals => {:title => title, :content => content}
  end
end
