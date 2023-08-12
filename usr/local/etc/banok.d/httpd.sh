MIN=$(date +%M -d "-10 minutes")
DateFilter="$(LC_ALL=en_US date +%d/%b/%Y:%H: -d "-10 minutes")""${MIN:0:1}"
grep $DateFilter /var/log/httpd/*access_log | grep \
-e "/1.php" \
-e "java.lang.Runtime" \
-e "/8tGi" \
-e "/aaa9" \
-e "/aab8" \
-e "/ab2g" \
-e "/ab2h" \
-e "/actuator/gateway/routes" \
-e "/actuator/health" \
-e "/api/sonicos/auth" \
-e "/api/sonicos/tfa" \
-e "/app" \
-e "/app?service=page" \
-e "/assets/img/touch-icon" \
-e "/auth1.html" \
-e "/auth.html" \
-e "/autodiscover/autodiscover.json" \
-e "/axis2/" \
-e "/axis2-admin/" \
-e "/axis2/axis2-admin/" \
-e "/backup" \
-e "/bc" \
-e "/bk" \
-e "/boaform/admin/formLogin" \
-e "/bundle.js" \
-e "/client/get_targets" \
-e "/c/msdownload/update/software" \
-e "/config/getuser?index=0" \
-e "/confluence/pages/createpage" \
-e "/cong.php" \
-e "/dns-query" \
-e "/dns-query?dns=" \
-e "/e3e7e71a0b28b5e96cc492e636722f73/4sVKAOvu3D/BDyot0NxyG.php" \
-e "/ecp/Current/exporttool/microsoft" \
-e "/.env" \
-e "/etc/gitlab-runner/config.toml" \
-e "/evox/about" \
-e "/feed/" \
-e "/fw6I" \
-e "/geoip/" \
-e "/geoserver/web/" \
-e "/.git/config" \
-e "/HNAP1" \
-e "/home" \
-e "http://5.188.210.227/echo.php" \
-e "/admin/phpmyadmin/scripts/setup.txt" \
-e "/admin/pma/scripts/setup.php" \
-e "/admin/scripts/setup.php" \
-e "/dbadmin/scripts/setup.php" \
-e "/db/scripts/setup.php" \
-e "/myadmin/scripts/setup.php" \
-e "/MyAdmin/scripts/setup.php" \
-e "/mysql-admin/scripts/setup.php" \
-e "/mysqladmin/scripts/setup.php" \
-e "/mysqlmanager/scripts/setup.php" \
-e "/mysql/scripts/setup.php" \
-e "/phpmanager/scripts/setup.php" \
-e "/phpma/scripts/setup.php" \
-e "/phpMyAdmin" \
-e "/php-myadmin/scripts/setup.php" \
-e "/phpmy-admin/scripts/setup.php" \
-e "/phpmyadmin/scripts/setup.php" \
-e "/phpMyAdmin/scripts/setup.php" \
-e "/PHPMYADMIN/scripts/setup.php" \
-e "/_phpMyAdmin/scripts/setup.php" \
-e "/php/scripts/setup.php" \
-e "/pma/scripts/setup.php" \
-e "/sqlmanager/scripts/setup.php" \
-e "/SQL/scripts/setup.php" \
-e "/sqlweb/scripts/setup.php" \
-e "/webadmin/scripts/setup.php" \
-e "/webdb/scripts/setup.php" \
-e "/web/phpMyAdmin/scripts/setup.php" \
-e "/websql/scripts/setup.php" \
-e "/hudson" \
-e "/index_sso.php" \
-e "/is-bin" \
-e "/jquery.js" \
-e "/load" \
-e "/login" \
-e "/main" \
-e "/manager/html" \
-e "/mgmt/tm/util/bash" \
-e "/nation.php" \
-e "/new" \
-e "/new/login" \
-e "/news.php" \
-e "/nmaplowercheck" \
-e "/old" \
-e "/owa/auth/x.js" \
-e "/pages/createpage" \
-e "/pages/doenterpagevariables.action" \
-e "/pages/templates2/viewpagetemplate.action" \
-e "/phpmyadmin/index.php" \
-e "/PhpMyAdmin/index.php" \
-e "/php/thinkphp" \
-e "/pma/index.php" \
-e "/portal/redlion" \
-e "/Public/home/js/check.js" \
-e "/restore.php" \
-e "/screengen/devel" \
-e "/sdk" \
-e "/shell?cd+/tmp" \
-e "/sitemap.xml" \
-e "/sslvpnLogin.html" \
-e "/static/admin/" \
-e "/stat-vlad/call.php" \
-e "/systembc/password.php" \
-e "/t4" \
-e "/template/custom/content-editor" \
-e "/templates/editor-preload-container" \
-e "/tHg9" \
-e "/upl.php" \
-e "/users/user-dark-features" \
-e "/vendor/phpunit" \
-e "/version" \
-e "/Visu/ens/events" \
-e "/viwwwsogou?op=" \
-e "/vpn/index.html" \
-e "/webcapture.jpg" \
-e "/.well-known/security.txt" \
-e "/wh/glass.php" \
-e "/wiki/pages/createpage-entervariables.action" \
-e "/wordpress" \
-e "/wp" \
-e "/wp-admin/install.php" \
-e "/wp-config.php" \
-e "/wp-content" \
-e "/wp-login.php" \
-e "/wsman" \
-e "/xmlrpc.php" \
| cut -d" " -f1 | cut -d":" -f2 | sort | uniq | Add "WEB server attack" "15,21"