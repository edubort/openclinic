<?php
/**
 * history_family_fields.php
 *
 * Fields of family antecedents
 *
 * Licensed under the GNU GPL. For full terms see the file LICENSE.
 *
 * @package   OpenClinic
 * @copyright 2002-2008 jact
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL
 * @version   CVS: $Id: history_family_fields.php,v 1.20 2008/03/23 12:00:17 jact Exp $
 * @author    jact <jachavar@gmail.com>
 */

  require_once(dirname(__FILE__) . "/../lib/exe_protect.php");
  executionProtection(__FILE__);

  $tbody = array();

  $row = Form::label("parents_status_health", _("Estado atual de saúde dos pais") . ":");
  $row .= Form::textArea("parents_status_health",
    $formVar["parents_status_health"],
    array(
      'rows' => 4,
      'cols' => 90
    )
  );
  $tbody[] = $row;

  $row = Form::label("brothers_status_health", _("Estado atual de saúde dos irmãos") . ":");
  $row .= Form::textArea("brothers_status_health",
    $formVar["brothers_status_health"],
    array(
      'rows' => 4,
      'cols' => 90
    )
  );
  $tbody[] = $row;

  $row = Form::label("spouse_childs_status_health", _("Histórico de problemas degenerativos ou de doenças crônicas") . ":");
  $row .= Form::textArea("spouse_childs_status_health",
    $formVar["spouse_childs_status_health"],
    array(
      'rows' => 4,
      'cols' => 90
    )
  );
  $tbody[] = $row;

  $row = Form::label("family_illness", _("Histórico visitas domiciliares") . ":");
  $row .= Form::textArea("family_illness",
    $formVar["family_illness"],
    array(
      'rows' => 4,
      'cols' => 90
    )
  );
  $tbody[] = $row;

  $tfoot = array(
    Form::button("update", _("Atualizar dados"))
    . Form::generateToken()
  );

  $options = array(
    'class' => 'large_area'
  );

  echo Form::fieldset($title, $tbody, $tfoot, $options);
?>
