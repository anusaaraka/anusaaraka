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
;The photocells, inserted in the door light electric circuit, are used as automatic door opener.[physics]
;स्वचालित द्वार नियन्त्रक में प्रकाश सेल का प्रयोग द्वार - प्रकाश विद्युत परिपथ में होता है.
(defrule insert0
(declare (salience 5000))
(id-root ?id insert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
(viSeRya-kqxanwa_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lage_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insert.clp 	insert0   "  ?id "  lage_ho )" crlf)
))



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;Mongla took out a penknife and [inserted] the blade in the cut.[gyannidhi]
;मंगला ने एक छोटा सा चाकू निकाला और उसे उस कटे स्‍थान पर घुसेड़/डाल दिया।
(defrule insert1
(declare (salience 4000))
(id-root ?id insert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insert.clp 	insert1   "  ?id "  dAla_xe )" crlf))
)

;;@@@   ---Added by Prachi Rathore

(defrule insert2
(declare (salience 4000))
(id-root ?id insert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niveSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insert.clp 	insert2   "  ?id "  niveSana )" crlf))
)
