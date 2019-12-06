# Migrate Typo3 to composer mode

- copy database
- copy webroot
- make public / private folder and move stuff from webroot propperly
	* fileadmin -> private
	* typo3conf -> private
	* index.php -> public 
	* delete typo3temp
	* delete typo3
	* delete typo3conf/ext
	* delete typo3conf/l10n
	* move typo3conf/sites to ../config/sites
- edit typo3conf/LocalConfiguration.php to fit new database config / add utf8mb4 config for new tables
- convert all tables, fields and database itself to utf8mb4
- copy _.htaccess template from bootstrap_package/Configuration/Server to public/.htaccess
- push wtmain-web repo to live (includes hellhum/typo3-secure-web)
- configure php options max_execution_time=240 max_input_vars=1500
- change webroot directory from website in hostpoint control panel
- delete old database and webroot
- run upgrade / maintenance wizzards in the typo3 backend
