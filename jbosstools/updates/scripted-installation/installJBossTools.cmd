@echo off

:: install all of JBT into Eclipse Standard bundle
:: cd c:\eclipse\43clean
:: tar xzf c:\tmp\Eclipse_Bundles\eclipse-standard-kepler-R-linux-gtk-x86_64.tar.gz
c:\eclipse\43clean\eclipse\eclipse -consolelog -nosplash -data c:\tmp -application org.eclipse.ant.core.antRunner -f ^
  c:\path\to\installJBossTools.xml ^
  -DsourceZip=c:\tmp\JBossTools\jbosstools-Update-4.1.0.Final_2013-07-19_19-47-52-B380.zip ^
  -DotherRepos=http://download.jboss.org/jbosstools/updates/stable/kepler/central/core/ ^
  -DtargetDir=c:\eclipse\43clean\eclipse\

:: [p2.dir] Installing org.hibernate.eclipse.feature.source.feature.group 3.7.0.Final-v20130717-0715-B84.
:: ...
:: [p2.dir] Installing org.mozilla.xulrunner.feature.feature.group 1.9.218.Final-v20121126-2356-B155.
:: [p2.dir] Operation completed in 212518 ms.

:: install JBT Central, including Subclipse w/ SVNKit into Eclipse JEE bundle
:: cd c:\eclipse\43clean
:: tar xzf c:\tmp\Eclipse_Bundles\eclipse-jee-kepler-R-linux-gtk-x86_64.tar.gz
c:\eclipse\43clean\eclipse\eclipse -consolelog -nosplash -data c:\tmp -application org.eclipse.ant.core.antRunner -f ^
  c:\path\to\installJBossTools.xml ^
  -DsourceZip=c:\tmp\JBossTools\jbosstools-Update-4.1.0.Final_2013-07-19_19-47-52-B380.zip ^
  -DotherRepos=http://download.jboss.org/jbosstools/updates/stable/kepler/central/core/ ^
  -DtargetDir=c:\eclipse\43clean\eclipse\
  -Dinstall="org.jboss.tools.community.central.feature.feature.group,^
org.tigris.subversion.subclipse.feature.group,^
org.tigris.subversion.clientadapter.svnkit.feature.feature.group,^
com.collabnet.subversion.merge.feature.feature.group,^
net.java.dev.jna.feature.group,^
org.tigris.subversion.clientadapter.feature.feature.group,^
org.tigris.subversion.subclipse.graph.feature.feature.group,^
org.tmatesoft.svnkit.feature.group"

:: [p2.dir] Installing org.jboss.tools.community.central.feature.feature.group 1.2.0.Final-v20130719-2050-B70.
:: [p2.dir] Installing org.tigris.subversion.subclipse.feature.group 1.8.20.
:: [p2.dir] Installing org.tigris.subversion.clientadapter.svnkit.feature.feature.group 1.7.9.1.
:: ...
:: [p2.dir] Operation completed in 55635 ms.
