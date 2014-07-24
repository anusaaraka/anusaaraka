;########################################################################
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
;
;########################################################################`
;@@@ Added by jagriti(30.12.2013)
;We scoured the area for somewhere to pitch our tent. [oald]
;हमने अपने तम्बू गाड़ने के लिए पूरा क्षेत्र छान मारा.
(defrule scour0
(declare (salience 5000))
(id-root ?id scour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 area|place|scene)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAna_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scour.clp 	scour0   "  ?id "  CAna_mAra )" crlf))
)
;@@@ Added by jagriti(30.12.2013)
;I had to scour out the pans.[oald]
;मुझे पैन को रगड़ कर साफ़ करना पड़ा.
(defrule scour1
(declare (salience 4900))
(id-root ?id scour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa_kara_sAPZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scour.clp 	scour1   "  ?id "  ragadZa_kara_sAPZa_kara  )" crlf))
)

