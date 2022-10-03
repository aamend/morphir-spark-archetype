#macro( camelcasePackage $str )
#foreach( $word in $str.split('[^a-z]') )$word.substring(0,1).toUpperCase()$word.substring(1).#end
#end
#macro( camelcaseArtifactId $str )
#foreach( $word in $str.split('[^a-z]') )$word.substring(0,1).toUpperCase()$word.substring(1)#end
#end
#set( $elmPackage = "#camelcasePackage( $package )")
#set( $elmArtifactId = "#camelcaseArtifactId( $artifactId )")
module ${elmPackage}${elmArtifactId} exposing (..)
