<?php
	#* ************************************************************************** *#
	#*                                                                            *#
	#*                                                        :::      ::::::::   *#
	#*   ft_server                                           :+:      :+:    :+:  *#
	#*                                                    +:+ +:+         +:+     *#
	#*   By: tsaiyan <tsaiyan@42.fr>                    +#+  +:+       +#+        *#
	#*                                                +#+#+#+#+#+   +#+           *#
	#*   Created: 2020/10/31 14:37:58 by tsaiyan           #+#    #+#             *#
	#*   Updated: 2020/10/31 14:38:00 by tsaiyan          ###   ########.fr       *#
	#*                                                                            *#
	#* ************************************************************************** *#

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['blowfish_secret'] = ''; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

/**
 * Servers configuration
 */
$i = 0;

/**
 * First server
 */
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = 'localhost';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;

/**
 * phpMyAdmin configuration storage settings.
 */

/* User used to manipulate with storage */
 $cfg['Servers'][$i]['controlhost'] = '';
 $cfg['Servers'][$i]['controlport'] = '';
 $cfg['Servers'][$i]['controluser'] = 'medovar';
 $cfg['Servers'][$i]['controlpass'] = 'password';

/* Storage database and tables */
 $cfg['Servers'][$i]['pmadb'] = 'phpmyadmin';
 $cfg['Servers'][$i]['bookmarktable'] = 'medovar__bookmark';
 $cfg['Servers'][$i]['relation'] = 'medovar__relation';
 $cfg['Servers'][$i]['table_info'] = 'medovar__table_info';
 $cfg['Servers'][$i]['table_coords'] = 'medovar__table_coords';
 $cfg['Servers'][$i]['pdf_pages'] = 'medovar__pdf_pages';
 $cfg['Servers'][$i]['column_info'] = 'medovar__column_info';
 $cfg['Servers'][$i]['history'] = 'medovar__history';
 $cfg['Servers'][$i]['table_uiprefs'] = 'medovar__table_uiprefs';
 $cfg['Servers'][$i]['tracking'] = 'medovar__tracking';
 $cfg['Servers'][$i]['userconfig'] = 'medovar__userconfig';
 $cfg['Servers'][$i]['recent'] = 'medovar__recent';
 $cfg['Servers'][$i]['favorite'] = 'medovar__favorite';
 $cfg['Servers'][$i]['users'] = 'medovar__users';
 $cfg['Servers'][$i]['usergroups'] = 'medovar__usergroups';
 $cfg['Servers'][$i]['navigationhiding'] = 'medovar__navigationhiding';
 $cfg['Servers'][$i]['savedsearches'] = 'medovar__savedsearches';
 $cfg['Servers'][$i]['central_columns'] = 'medovar__central_columns';
 $cfg['Servers'][$i]['designer_settings'] = 'medovar__designer_settings';
 $cfg['Servers'][$i]['export_templates'] = 'medovar__export_templates';
 $cfg['TempDir'] = '/var/lib/phpmyadmin/tmp';
/**
 * End of servers configuration
 */

/**
 * Directories for saving/loading files from server
 */
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';

/**
 * Whether to display icons or text or both icons and text in table row
 * action segment. Value can be either of 'icons', 'text' or 'both'.
 * default = 'both'
 */
//$cfg['RowActionType'] = 'icons';

/**
 * Defines whether a user should be displayed a "show all (records)"
 * button in browse mode or not.
 * default = false
 */
//$cfg['ShowAll'] = true;

/**
 * Number of rows displayed when browsing a result set. If the result
 * set contains more rows, "Previous" and "Next".
 * Possible values: 25, 50, 100, 250, 500
 * default = 25
 */
//$cfg['MaxRows'] = 50;

/**
 * Disallow editing of binary fields
 * valid values are:
 *   false    allow editing
 *   'blob'   allow editing except for BLOB fields
 *   'noblob' disallow editing except for BLOB fields
 *   'all'    disallow editing
 * default = 'blob'
 */
//$cfg['ProtectBinary'] = false;

/**
 * Default language to use, if not browser-defined or user-defined
 * (you find all languages in the locale folder)
 * uncomment the desired line:
 * default = 'en'
 */
$cfg['DefaultLang'] = 'ru';
//$cfg['DefaultLang'] = 'de';

/**
 * How many columns should be used for table display of a database?
 * (a value larger than 1 results in some information being hidden)
 * default = 1
 */
//$cfg['PropertiesNumColumns'] = 2;

/**
 * Set to true if you want DB-based query history.If false, this utilizes
 * JS-routines to display query history (lost by window close)
 *
 * This requires configuration storage enabled, see above.
 * default = false
 */
//$cfg['QueryHistoryDB'] = true;

/**
 * When using DB-based query history, how many entries should be kept?
 * default = 25
 */
//$cfg['QueryHistoryMax'] = 100;

/**
 * Whether or not to query the user before sending the error report to
 * the phpMyAdmin team when a JavaScript error occurs
 *
 * Available options
 * ('ask' | 'always' | 'never')
 * default = 'ask'
 */
//$cfg['SendErrorReports'] = 'always';

/**
 * You can find more configuration options in the documentation
 * in the doc/ folder or at <https://docs.phpmyadmin.net/>.
 */
