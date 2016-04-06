# Run bundle install
bundle install --binstubs --path vendor/bundle 

# Run librarian install
bundle exec rake librarian:clean_install

# Run tests
#<target name="version-number" description="Replaces the @BUILD_NUMBER@ variable with the TeamCity build number.">
      #  <property file="${teamcity.build.checkoutDir}/build.properties"/>
     #   <property name="spec.source.path" value="${teamcity.build.checkoutDir}/${spec.file.name}"/>
    #    <property name="spec.destination.path" value="${teamcity.build.tempDir}/${spec.file.name}"/>
   #     <copy file="${spec.source.path}" todir="${teamcity.build.tempDir}"/>
  #      <replace file="${spec.destination.path}" token="@BUILD_NUMBER@" value="${build.number}"/>
 #       <echo message="##teamcity[publishArtifacts '${spec.destination.path}']"/>
#</target>
