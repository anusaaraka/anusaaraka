;##############################################################################
;#  Copyright (C) 2014-201 Sonam Gupta(sonam27virgo@gmail.com)
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
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02149, USA.
;
;##############################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;The teacher propelled him to continue his study. [rajpal]
;शिक्षक ने उसे अपनी पढ़ाई जारी रखने के लिये प्रेरित किया .
(defrule propel1
(declare (salience 5000))
(id-root ?id propel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id1 pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  propel.clp 	propel1   "  ?id "  preriwa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
;Wind was propelling the boat. [rajpal]
;हवा नाव को धकेल रही थी .
(defrule propel2
(id-root ?id propel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  propel.clp 	propel2   "  ?id "  Xakela )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 1-4-2014
(defrule propel3
(id-root ?id propel)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  propel.clp 	propel3   "  ?id "  Xakela )" crlf))
)
