;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(13.3.2014)
;He is so showy that it is hard to believe him.[rajpal]
;वह इतना आडम्बरी है कि उस पर विश्वास करना कठिन है . 
(defrule showy0
(declare (salience 5000))
(id-root ?id showy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(or(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "human.gdbm" ?str)))(id-root ?id1 work|display))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdambarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  showy.clp 	showy0   "  ?id "AdambarI)" crlf))
)
;...Default Rule...
;@@@ Added by jagriti(13.3.2014)
;She wears showy cloths.[rajpal]
;वह भड्कीला कपडे पहनती है . 
(defrule showy1
(declare (salience 100))
(id-root ?id showy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BadZkIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  showy.clp 	showy1   "  ?id "BadZkIlA)" crlf))
)

