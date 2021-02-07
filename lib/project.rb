class Project
    attr_accessor :title, :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_project_array = ProjectBacker.all.select do |backerproject|
            backerproject.project == self
        end
        backer_project_array.map do |backer_project|
            backer_project. backer
        end
    end
end