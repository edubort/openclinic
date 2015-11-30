/**
 * access_log_tbl.sql
 *
 * Creation of access_log_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: access_log_tbl.sql,v 1.8 2013/01/07 18:17:06 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.3
 */

CREATE TABLE access_log_tbl (
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL,
  access_date DATETIME NOT NULL,
  id_profile SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (id_user,access_date)
) ENGINE=MyISAM;
/**
 * connection_problem_tbl.sql
 *
 * Creation of connection_problem_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: connection_problem_tbl.sql,v 1.7 2013/01/07 18:17:27 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE connection_problem_tbl (
  id_problem INT UNSIGNED NOT NULL,
  id_connection INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_problem,id_connection),
  FOREIGN KEY (id_problem) REFERENCES problem_tbl(id_problem) ON DELETE CASCADE,
  FOREIGN KEY (id_connection) REFERENCES problem_tbl(id_problem) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * deleted_Beneficiário_tbl.sql
 *
 * Creation of deleted_Beneficiário_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: deleted_Beneficiário_tbl.sql,v 1.12 2013/01/16 19:02:26 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.2
 */

CREATE TABLE deleted_Beneficiário_tbl (
  id_Beneficiário INT UNSIGNED NOT NULL,
  nif VARCHAR(20) NULL,
  first_name VARCHAR(25) NOT NULL,
  surname1 VARCHAR(30) NOT NULL,
  surname2 VARCHAR(30) NULL DEFAULT '',
  address TEXT NULL,
  phone_contact TEXT NULL,
  sex ENUM('V','H') NOT NULL DEFAULT 'V',
  race VARCHAR(25) NULL, /* raza: blanca, amarilla, cobriza, negra */
  birth_date DATE NULL, /* fecha de nacimiento */
  birth_place VARCHAR(40) NULL, /* lugar de nacimiento */
  decease_date DATE NULL, /* fecha de defunci髇 */
  nts VARCHAR(30) NULL, /* n鷐ero de tarjeta sanitaria */
  nss VARCHAR(30) NULL, /* n鷐ero de la seguridad social */
  family_situation TEXT NULL, /* situaci髇 familiar */
  labour_situation TEXT NULL, /* situaci髇 laboral */
  education TEXT NULL, /* estudios */
  insurance_company VARCHAR(30) NULL, /* entidad aseguradora */
  id_member INT UNSIGNED NULL, /* clave del m閐ico al que pertenece por cupo */
  collegiate_number VARCHAR(20) NULL, /* numero de colegiado (del m閐ico al que pertenece por cupo) */
  birth_growth TEXT NULL, /* nacimiento y crecimiento (desarrollo) */
  growth_sexuality TEXT NULL, /* desarrollo y vida sexual */
  feed TEXT NULL, /* alimentaci髇 */
  habits TEXT NULL, /* h醔itos */
  peristaltic_conditions TEXT NULL, /* condiciones perist醫icas */
  psychological TEXT NULL, /* psicol骻icos */
  children_complaint TEXT NULL, /* enfermedades de la infancia */
  venereal_disease TEXT NULL, /* enfermedades de transmisi髇 sexual */
  accident_surgical_operation TEXT NULL, /* accidentes e intervenciones quir鷕gicas */
  medicinal_intolerance TEXT NULL, /* intolerancia medicamentosa */
  mental_illness TEXT NULL, /* enfermedades mentales y neur髏icas */
  parents_status_health TEXT NULL, /* estado de salud de los padres */
  brothers_status_health TEXT NULL, /* estado de salud de los hermanos */
  spouse_childs_status_health TEXT NULL, /* estado de salud del c髇yuge e hijos */
  family_illness TEXT NULL, /* enfermedades acumuladas en la familia */
  create_date DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL
) ENGINE=MyISAM;
/**
 * deleted_problem_tbl.sql
 *
 * Creation of deleted_problem_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: deleted_problem_tbl.sql,v 1.10 2013/01/07 18:18:02 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.2
 */

CREATE TABLE deleted_problem_tbl (
  id_problem INT UNSIGNED NOT NULL,
  last_update_date DATE NOT NULL, /* fecha de 鷏tima actualizaci髇 */
  id_Beneficiário INT UNSIGNED NOT NULL,
  id_member INT UNSIGNED NULL, /* clave del m閐ico que atiende el problema */
  collegiate_number VARCHAR(20) NULL, /* numero de colegiado (del m閐ico al que pertenece por cupo) */
  order_number TINYINT UNSIGNED NOT NULL, /* n鷐ero de orden relativo a cada paciente */
  opening_date DATE NOT NULL, /* fecha de apertura */
  closing_date DATE NULL, /* fecha de cierre */
  meeting_place VARCHAR(40) NULL, /* lugar de encuentro */
  wording TEXT NOT NULL, /* enunciado del problema */
  subjective TEXT NULL, /* subjetivo */
  objective TEXT NULL, /* objetivo */
  appreciation TEXT NULL, /* valoraci髇 */
  action_plan TEXT NULL, /* plan de actuaci髇 */
  prescription TEXT NULL, /* prescripci髇 (por prescripci髇 facultativa, on doctor's orders) */
  create_date DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL
) ENGINE=MyISAM;
/**
 * history_tbl.sql
 *
 * Creation of history_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: history_tbl.sql,v 1.7 2013/01/07 18:18:18 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE history_tbl (
  id_Beneficiário INT UNSIGNED PRIMARY KEY,
  birth_growth TEXT NULL, /* nacimiento y crecimiento (desarrollo) */
  growth_sexuality TEXT NULL, /* desarrollo y vida sexual */
  feed TEXT NULL, /* alimentaci髇 */
  habits TEXT NULL, /* h醔itos */
  peristaltic_conditions TEXT NULL, /* condiciones perist醫icas */
  psychological TEXT NULL, /* psicol骻icos */
  children_complaint TEXT NULL, /* enfermedades de la infancia */
  venereal_disease TEXT NULL, /* enfermedades de transmisi髇 sexual */
  accident_surgical_operation TEXT NULL, /* accidentes e intervenciones quir鷕gicas */
  medicinal_intolerance TEXT NULL, /* intolerancia medicamentosa */
  mental_illness TEXT NULL, /* enfermedades mentales y neur髏icas */
  parents_status_health TEXT NULL, /* estado de salud de los padres */
  brothers_status_health TEXT NULL, /* estado de salud de los hermanos */
  spouse_childs_status_health TEXT NULL, /* estado de salud del c髇yuge e hijos */
  family_illness TEXT NULL, /* enfermedades acumuladas en la familia */
  FOREIGN KEY (id_Beneficiário) REFERENCES Beneficiário_tbl(id_Beneficiário) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * access_log_tbl.sql
 *
 * Creation of access_log_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: access_log_tbl.sql,v 1.8 2013/01/07 18:17:06 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.3
 */

CREATE TABLE access_log_tbl (
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL,
  access_date DATETIME NOT NULL,
  id_profile SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (id_user,access_date)
) ENGINE=MyISAM;
/**
 * connection_problem_tbl.sql
 *
 * Creation of connection_problem_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: connection_problem_tbl.sql,v 1.7 2013/01/07 18:17:27 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE connection_problem_tbl (
  id_problem INT UNSIGNED NOT NULL,
  id_connection INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_problem,id_connection),
  FOREIGN KEY (id_problem) REFERENCES problem_tbl(id_problem) ON DELETE CASCADE,
  FOREIGN KEY (id_connection) REFERENCES problem_tbl(id_problem) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * deleted_Beneficiário_tbl.sql
 *
 * Creation of deleted_Beneficiário_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: deleted_Beneficiário_tbl.sql,v 1.12 2013/01/16 19:02:26 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.2
 */

CREATE TABLE deleted_Beneficiário_tbl (
  id_Beneficiário INT UNSIGNED NOT NULL,
  nif VARCHAR(20) NULL,
  first_name VARCHAR(25) NOT NULL,
  surname1 VARCHAR(30) NOT NULL,
  surname2 VARCHAR(30) NULL DEFAULT '',
  address TEXT NULL,
  phone_contact TEXT NULL,
  sex ENUM('V','H') NOT NULL DEFAULT 'V',
  race VARCHAR(25) NULL, /* raza: blanca, amarilla, cobriza, negra */
  birth_date DATE NULL, /* fecha de nacimiento */
  birth_place VARCHAR(40) NULL, /* lugar de nacimiento */
  decease_date DATE NULL, /* fecha de defunci髇 */
  nts VARCHAR(30) NULL, /* n鷐ero de tarjeta sanitaria */
  nss VARCHAR(30) NULL, /* n鷐ero de la seguridad social */
  family_situation TEXT NULL, /* situaci髇 familiar */
  labour_situation TEXT NULL, /* situaci髇 laboral */
  education TEXT NULL, /* estudios */
  insurance_company VARCHAR(30) NULL, /* entidad aseguradora */
  id_member INT UNSIGNED NULL, /* clave del m閐ico al que pertenece por cupo */
  collegiate_number VARCHAR(20) NULL, /* numero de colegiado (del m閐ico al que pertenece por cupo) */
  birth_growth TEXT NULL, /* nacimiento y crecimiento (desarrollo) */
  growth_sexuality TEXT NULL, /* desarrollo y vida sexual */
  feed TEXT NULL, /* alimentaci髇 */
  habits TEXT NULL, /* h醔itos */
  peristaltic_conditions TEXT NULL, /* condiciones perist醫icas */
  psychological TEXT NULL, /* psicol骻icos */
  children_complaint TEXT NULL, /* enfermedades de la infancia */
  venereal_disease TEXT NULL, /* enfermedades de transmisi髇 sexual */
  accident_surgical_operation TEXT NULL, /* accidentes e intervenciones quir鷕gicas */
  medicinal_intolerance TEXT NULL, /* intolerancia medicamentosa */
  mental_illness TEXT NULL, /* enfermedades mentales y neur髏icas */
  parents_status_health TEXT NULL, /* estado de salud de los padres */
  brothers_status_health TEXT NULL, /* estado de salud de los hermanos */
  spouse_childs_status_health TEXT NULL, /* estado de salud del c髇yuge e hijos */
  family_illness TEXT NULL, /* enfermedades acumuladas en la familia */
  create_date DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL
) ENGINE=MyISAM;
/**
 * deleted_problem_tbl.sql
 *
 * Creation of deleted_problem_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: deleted_problem_tbl.sql,v 1.10 2013/01/07 18:18:02 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.2
 */

CREATE TABLE deleted_problem_tbl (
  id_problem INT UNSIGNED NOT NULL,
  last_update_date DATE NOT NULL, /* fecha de 鷏tima actualizaci髇 */
  id_Beneficiário INT UNSIGNED NOT NULL,
  id_member INT UNSIGNED NULL, /* clave del m閐ico que atiende el problema */
  collegiate_number VARCHAR(20) NULL, /* numero de colegiado (del m閐ico al que pertenece por cupo) */
  order_number TINYINT UNSIGNED NOT NULL, /* n鷐ero de orden relativo a cada paciente */
  opening_date DATE NOT NULL, /* fecha de apertura */
  closing_date DATE NULL, /* fecha de cierre */
  meeting_place VARCHAR(40) NULL, /* lugar de encuentro */
  wording TEXT NOT NULL, /* enunciado del problema */
  subjective TEXT NULL, /* subjetivo */
  objective TEXT NULL, /* objetivo */
  appreciation TEXT NULL, /* valoraci髇 */
  action_plan TEXT NULL, /* plan de actuaci髇 */
  prescription TEXT NULL, /* prescripci髇 (por prescripci髇 facultativa, on doctor's orders) */
  create_date DATETIME NOT NULL,
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL
) ENGINE=MyISAM;
/**
 * history_tbl.sql
 *
 * Creation of history_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: history_tbl.sql,v 1.7 2013/01/07 18:18:18 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE history_tbl (
  id_Beneficiário INT UNSIGNED PRIMARY KEY,
  birth_growth TEXT NULL, /* nacimiento y crecimiento (desarrollo) */
  growth_sexuality TEXT NULL, /* desarrollo y vida sexual */
  feed TEXT NULL, /* alimentaci髇 */
  habits TEXT NULL, /* h醔itos */
  peristaltic_conditions TEXT NULL, /* condiciones perist醫icas */
  psychological TEXT NULL, /* psicol骻icos */
  children_complaint TEXT NULL, /* enfermedades de la infancia */
  venereal_disease TEXT NULL, /* enfermedades de transmisi髇 sexual */
  accident_surgical_operation TEXT NULL, /* accidentes e intervenciones quir鷕gicas */
  medicinal_intolerance TEXT NULL, /* intolerancia medicamentosa */
  mental_illness TEXT NULL, /* enfermedades mentales y neur髏icas */
  parents_status_health TEXT NULL, /* estado de salud de los padres */
  brothers_status_health TEXT NULL, /* estado de salud de los hermanos */
  spouse_childs_status_health TEXT NULL, /* estado de salud del c髇yuge e hijos */
  family_illness TEXT NULL, /* enfermedades acumuladas en la familia */
  FOREIGN KEY (id_Beneficiário) REFERENCES Beneficiário_tbl(id_Beneficiário) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * access_log_tbl.sql
 *
 * Creation of access_log_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: access_log_tbl.sql,v 1.8 /**
 * medical_test_tbl.sql
 *
 * Creation of medical_test_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: medical_test_tbl.sql,v 1.7 2013/01/07 18:18:32 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE medical_test_tbl (
  id_test INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_problem INT UNSIGNED NOT NULL,
  document_type VARCHAR(128) NULL, /* MIME type */
  path_filename TEXT NOT NULL,
  FOREIGN KEY (id_problem) REFERENCES problem_tbl(id_problem) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * Beneficiário_tbl.sql
 *
 * Creation of Beneficiário_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: Beneficiário_tbl.sql,v 1.9 2013/01/13 14:19:34 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE Beneficiário_tbl (
  id_Beneficiário INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  /*last_update_date DATE NOT NULL,*/ /* fecha de 煤ltima actualizaci贸n */
  nif VARCHAR(20) NULL,
  first_name VARCHAR(25) NOT NULL,
  surname1 VARCHAR(30) NOT NULL,
  surname2 VARCHAR(30) NULL DEFAULT '',
  address TEXT NULL,
  phone_contact TEXT NULL,
  sex ENUM('V','H') NOT NULL DEFAULT 'V',
  race VARCHAR(25) NULL, /* raza: amarilla, blanca, cobriza, negra */
  birth_date DATE NULL, /* fecha de nacimiento */
  birth_place VARCHAR(40) NULL, /* lugar de nacimiento */
  decease_date DATE NULL, /* fecha de defunci贸n */
  nts VARCHAR(30) NULL, /* n煤mero de tarjeta sanitaria */
  nss VARCHAR(30) NULL, /* n煤mero de la seguridad social */
  family_situation TEXT NULL, /* situaci贸n familiar */
  labour_situation TEXT NULL, /* situaci贸n laboral */
  education TEXT NULL, /* estudios */
  insurance_company VARCHAR(30) NULL, /* entidad aseguradora */
  id_member INT UNSIGNED NULL, /* clave del m茅dico al que pertenece por cupo */
  FOREIGN KEY (id_member) REFERENCES staff_tbl(id_member) ON DELETE SET NULL
) ENGINE=MyISAM;
/**
 * problem_tbl.sql
 *
 * Creation of problem_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: problem_tbl.sql,v 1.8 2013/01/07 18:18:50 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE problem_tbl (
  id_problem INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  last_update_date DATE NOT NULL, /* fecha de 鷏tima actualizaci髇 */
  id_Beneficiário INT UNSIGNED NOT NULL,
  id_member INT UNSIGNED NULL, /* clave del m閐ico que atiende el problema */
  order_number TINYINT UNSIGNED NOT NULL, /* n鷐ero de orden relativo a cada paciente */
  opening_date DATE NOT NULL, /* fecha de apertura */
  closing_date DATE NULL, /* fecha de cierre */
  meeting_place VARCHAR(40) NULL, /* lugar de encuentro */
  wording TEXT NOT NULL, /* enunciado del problema */
  subjective TEXT NULL, /* subjetivo */
  objective TEXT NULL, /* objetivo */
  appreciation TEXT NULL, /* valoraci髇 */
  action_plan TEXT NULL, /* plan de actuaci髇 */
  prescription TEXT NULL, /* prescripci髇 (por prescripci髇 facultativa, on doctor's orders) */
  FOREIGN KEY (id_Beneficiário) REFERENCES Beneficiário_tbl(id_Beneficiário) ON DELETE CASCADE,
  FOREIGN KEY (id_member) REFERENCES staff_tbl(id_member) ON DELETE SET NULL
) ENGINE=MyISAM;
/**
 * record_log_tbl.sql
 *
 * Creation of record_log_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: record_log_tbl.sql,v 1.9 2013/01/07 18:19:03 jact Exp $
 * @author    jact <jachavar@gmail.com>
 * @since     0.3
 */

CREATE TABLE record_log_tbl (
  id_user INT UNSIGNED NOT NULL,
  login VARCHAR(20) NOT NULL,
  access_date DATETIME NOT NULL,
  table_name VARCHAR(25) NOT NULL,
  operation VARCHAR(10) NOT NULL,
  affected_row TEXT NOT NULL,
  KEY id_user (id_user)
) ENGINE=MyISAM;
/**
 * relative_tbl.sql
 *
 * Creation of relative_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: relative_tbl.sql,v 1.7 2013/01/07 18:19:15 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE relative_tbl (
  id_Beneficiário INT UNSIGNED NOT NULL,
  id_relative INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_Beneficiário,id_relative),
  FOREIGN KEY (id_Beneficiário) REFERENCES Beneficiário_tbl(id_Beneficiário) ON DELETE CASCADE,
  FOREIGN KEY (id_relative) REFERENCES Beneficiário_tbl(id_Beneficiário) ON DELETE CASCADE
) ENGINE=MyISAM;
/**
 * session_tbl.sql
 *
 * Creation of session_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: session_tbl.sql,v 1.7 2013/01/07 18:19:34 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE session_tbl (
  login VARCHAR(20) NOT NULL,
  last_updated_date DATETIME NOT NULL,
  token INT NOT NULL
) ENGINE=MyISAM;
/**
 * setting_tbl.sql
 *
 * Creation of setting_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: setting_tbl.sql,v 1.17 2013/01/07 18:22:09 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE setting_tbl (
  clinic_name VARCHAR(128) NULL,
  clinic_hours VARCHAR(128) NULL,
  clinic_address TEXT NULL,
  clinic_phone VARCHAR(40) NULL,
  clinic_url TEXT NULL, /* web page of the clinic if exists */
  session_timeout SMALLINT UNSIGNED NOT NULL DEFAULT 20,
  items_per_page TINYINT UNSIGNED NOT NULL DEFAULT 10,
  version VARCHAR(14) NOT NULL,
  language VARCHAR(10) NOT NULL DEFAULT 'en',
  id_theme SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  FOREIGN KEY (id_theme) REFERENCES theme_tbl(id_theme) ON DELETE SET DEFAULT
) MIN_ROWS=1 MAX_ROWS=1 ENGINE=MyISAM;

INSERT INTO setting_tbl VALUES (
  'My Clinic',
  'L-V 9am-3pm, S 10am-1pm',
  'Sesame Street',
  '999 66 66 66',
  'http://www.example.com',
  20,
  10,
  '0.8.20130107',
  'en',
  1
);
/**
 * staff_tbl.sql
 *
 * Creation of staff_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: staff_tbl.sql,v 1.8 2013/01/13 14:19:38 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE staff_tbl (
  id_member INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  member_type ENUM('Administrative','Doctor') NOT NULL DEFAULT 'Administrative',
  collegiate_number VARCHAR(20) NULL, /* n煤mero de colegiado */
  nif VARCHAR(20) NULL,
  first_name VARCHAR(25) NOT NULL,
  surname1 VARCHAR(30) NOT NULL,
  surname2 VARCHAR(30) NULL DEFAULT '',
  address TEXT NULL,
  phone_contact TEXT NULL,
  id_user INT UNSIGNED NULL,
  login VARCHAR(20) NULL,
  FOREIGN KEY (id_user) REFERENCES user_tbl(id_user) ON DELETE SET NULL
) ENGINE=MyISAM;

INSERT INTO staff_tbl VALUES (
  4,
  'Administrative',
  NULL,
  '123456785',
  'Benito',
  'Camelas',
  'Unmont贸n',
  'Camino de las Torres 777',
  '555-45 45 45',
  NULL,
  'benito'
);

INSERT INTO staff_tbl VALUES (
  3,
  'Doctor',
  '342343445',
  '34567123',
  'Carmelo',
  'Cot贸n',
  'Cot贸n',
  'Plaza Espa帽a 222',
  '555-23 24 23',
  NULL,
  'carmelo'
);

INSERT INTO staff_tbl VALUES (
  2,
  'Administrative',
  NULL,
  'no importa',
  'Admin',
  'Admin',
  'Admin',
  'No importa',
  'No importa',
  2,
  'admin'
);

INSERT INTO staff_tbl VALUES (
  1,
  'Administrative',
  NULL,
  'no importa',
  'Admin',
  'Admin',
  'Admin',
  'No importa',
  'No importa',
  1,
  'sysop'
);
/**
 * theme_tbl.sql
 *
 * Creation of theme_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: theme_tbl.sql,v 1.9 2013/01/07 18:20:09 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE theme_tbl (
  id_theme SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  theme_name VARCHAR(50) NOT NULL,
  css_file VARCHAR(50) NOT NULL
) ENGINE=MyISAM;

INSERT INTO theme_tbl VALUES (
  1, 'OpenClinic', 'openclinic.css'
);
/**
 * user_tbl.sql
 *
 * Creation of user_tbl structure
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2013 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: user_tbl.sql,v 1.7 2013/01/07 18:20:24 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

CREATE TABLE user_tbl (
  id_user INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  pwd VARCHAR(32) NOT NULL, /* 32 caracteres por ser md5 */
  email VARCHAR(40) NULL,
  actived ENUM('N','Y') NOT NULL DEFAULT 'N',
  id_theme SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  id_profile SMALLINT UNSIGNED NOT NULL DEFAULT 3, /* por defecto perfil de m閐ico */
  FOREIGN KEY (id_theme) REFERENCES theme_tbl(id_theme) ON DELETE SET DEFAULT,
  FOREIGN KEY (id_profile) REFERENCES profile_tbl(id_profile) ON DELETE SET DEFAULT
) ENGINE=MyISAM;

INSERT INTO user_tbl VALUES (
  1,
  '73850afb68a28c03ef4d2e426634e041',
  NULL,
  'Y',
  1,
  1
);

INSERT INTO user_tbl VALUES (
  2,
  '21232f297a57a5a743894a0e4a801fc3',
  NULL,
  'Y',
  1,
  1
);
