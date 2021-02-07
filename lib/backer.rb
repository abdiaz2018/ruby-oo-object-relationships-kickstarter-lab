class Backer
    attr_accessor :name, :project
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer_array = ProjectBacker.all.select do |projectbacker|
            projectbacker.backer == self
        end
        project_backer_array.map do |backed_project|
            backed_project.project
        end
    end
end