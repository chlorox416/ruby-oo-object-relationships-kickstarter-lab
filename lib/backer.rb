class Backer

    attr_accessor :name
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.select{|backed_project| backed_project.backer == self}.map{|backed_project| backed_project.project}
    end


end