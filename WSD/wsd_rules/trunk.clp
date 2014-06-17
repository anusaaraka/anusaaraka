;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;I always keep a blanket and a toolkit in the trunk for emergencies.[cambridge]
;मैं हमेशा कम्बल और एमर्जेंसी के लिये टूलकिट डिक्की में  रखता हूँ . 
(defrule trunk0
(declare (salience 5000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dikkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk0   "  ?id "  dikkI )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Her husband's dismembered body was later discovered in the trunk of her car.[cambridge]
;उसके पति का विखंडित शरीर बाद में उसकी गाडी की डिक्की में पाया गया था . 
(defrule trunk1
(declare (salience 5000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 car)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dikkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk1   "  ?id "  dikkI )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;A trunk full of clothes.[m-w]
;वस्त्रों से भरा एक संदूक .
(defrule trunk2
(declare (salience 5000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 cloth|clothes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk2   "  ?id " saMxUka )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;It looks like he tied a bungee cord to the trunk of one of the trees and then tied the beer to the other end of the cord.[coca]
(defrule trunk3
(declare (salience 5000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id2 tree)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk3   "  ?id "  wanA )" crlf))
)

;;@@@   ---Added by Prachi Rathore[12-12-13]
; Some tourist has carved his name on the trunk. [gyannidhi]
;किसी यात्री ने छाल पर अपना नाम खोद दिया हैं।
(defrule trunk5
(declare (salience 5000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?id1 ?id)
;(id-root ?id1 carve)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk5   "  ?id "  CAla )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;He's got a thick trunk.[cambridge]
;उसके पास एक मोटा धड है .  
(defrule trunk4
(declare (salience 4000))
(id-root ?id trunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trunk.clp 	trunk4   "  ?id " Xada)" crlf))
)
