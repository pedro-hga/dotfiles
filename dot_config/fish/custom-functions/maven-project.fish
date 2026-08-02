function maven_project
    read -P "Project name: " projectname
    set -l projectname (string trim "$projectname")
    mvn archetype:generate \
        -DgroupId=com.example \
        -DartifactId=$projectname \
        -DarchetypeArtifactId=maven-archetype-quickstart \
        -DinteractiveMode=false
    cd $projectname
end
