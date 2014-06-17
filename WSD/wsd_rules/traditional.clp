
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
;##########################################################################

;@@@ Added by Prachi Rathore[26-2-14]
 ;It's traditional in America to eat turkey on Thanks giving Day.[oald]
;धन्यवाद देने के दिन पर अमरीका में पीरू खाने की  परंपरा है . 
(defrule traditional0
(declare (salience 5000))
(id-root ?id traditional)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraMparA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traditional.clp 	traditional0   "  ?id "  paraMparA )" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[26-2-14]
 ;Traditional dress.[oald]
;परंपरागत लिबास . 
(defrule traditional1
(declare (salience 400))
(id-root ?id traditional)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraMparAgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traditional.clp 	traditional1   "  ?id " paraMparAgawa )" crlf))
)


;@@@ Added by Prachi Rathore[26-2-14]
 ;Traditional dress.[oald]
;परंपरागत लिबास . 
(defrule traditional2
(declare (salience 200))
(id-root ?id traditional)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraMparAgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traditional.clp 	traditional2   "  ?id " paraMparAgawa )" crlf))
)

