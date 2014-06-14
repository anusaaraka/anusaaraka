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
;@@@ Added by Prachi Rathore[25-3-14]
;The knave of clubs.[oald]
;चिडी का गुलाम . 
(defrule knave1
(declare (salience 5000))
(id-root ?id knave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 clubs|hearts|diamonds|spades)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knave.clp 	knave1   "  ?id "  gulAma )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[25-3-14]
;He is a knave, I hate him.[shiksharthi-kosh]
;वह बेईमान है, मैं उसको नापसन्द करता हूँ . 
(defrule knave3
(declare (salience 400))
(id-root ?id knave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beImAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knave.clp 	knave3   "  ?id "  beImAna )" crlf))
)

;@@@ Added by Prachi Rathore[25-3-14]

(defrule knave4
(declare (salience 200))
(id-root ?id knave)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beImAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knave.clp 	knave4   "  ?id "  beImAna )" crlf))
)
