;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;;@@@   ---Added by Prachi Rathore
;He was put on a ventilator.[oald]
;उसे वायुयंत्र पर रखा गया था . 
(defrule ventilator0
(declare (salience 5000))
(id-root ?id ventilator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?id2 ?id)
(kriyA-subject  ?id2 ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAyuyaMwra))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ventilator.clp 	ventilator0   "  ?id "  vAyuyaMwra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  ventilator.clp      ventilator0   "  ?id " ko )" crlf)
))



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;The ventilator shafts were heavily barred.[gyannidhi]
;रोशन दान पर मोटी मोटी शलाकाएं लगी हुई थीं।
(defrule ventilator1
(declare (salience 4000))
(id-root ?id ventilator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roSana_xAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ventilator.clp 	ventilator1   "  ?id "  roSana_xAna )" crlf))
)
