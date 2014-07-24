;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;################################################################
;@@@ 
;The metal skin of an aircraft .[iit-bombay wordnet]
;एक विमान के धातु की चादर.
(defrule skin0
(declare (salience 5000))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 metal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAxara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin0  "  ?id " cAxara  )" crlf))
)
;@@@ 
;The skin on a milk pudding.[iit-bombay wordnet]
;दूध की खीर पर ​​मलाई.

(defrule skin1
(declare (salience 4900))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI ?id ?id1)
(id-root ?id1 pedding)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin1  "  ?id " malAI  )" crlf))
)
;@@@ 
;A banana skin .
;एक केला का छिलका.
(defrule skin2
(declare (salience 4800))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 banana|apple|orange);All fruits
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin2  "  ?id " CilakA  )" crlf))
)
;@@@ 
;She has beautiful skin.
;उसकी त्वचा सुंदर है.
(defrule skin3
(declare (salience 4700))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wvacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin3  "  ?id " wvacA  )" crlf))
)
;;@@@ 
;He skinned the deer. 
;उसने हिरण का चमड़ा उतारा.
(defrule skin4
(declare (salience 4600))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 deer|bear|lion);All animals
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camadZA_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin4  "  ?id " camadZA_uwAra  )" crlf))
)
;@@@ 
;She skinned the oranges to make juice.
;उसने रस बनाने के लिए संतरे का छिलका उतारा. 
(defrule skin5
(declare (salience 4500))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skin.clp 	skin5  "  ?id " CilakA_uwAra  )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_skin2
(declare (salience 4800))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 banana|apple|orange);All fruits
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " skin.clp   sub_samA_skin2   "   ?id " CilakA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_skin2
(declare (salience 4800))
(id-root ?id skin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 banana|apple|orange);All fruits
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CilakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " skin.clp   obj_samA_skin2   "   ?id " CilakA )" crlf))
)
