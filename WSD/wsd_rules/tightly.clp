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
;@@@ Added by Prachi Rathore
;A tightly packed crowd of tourists.[oald]
;पर्यटकों की एक ठसाठस भरी हुई भीड .  
(defrule tightly0
(declare (salience 5000))
(id-root ?id tightly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(or(viSeRaNa-viSeRaka  ?id1 ?id)(kriyA-kriyA_viSeRaNa  ?id1 ?id))
(id-root ?id1 pack)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TasATasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tightly.clp 	tightly0   "  ?id "  TasATasa )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;Her eyes were tightly closed.
;उसकी आँखें कसकर बन्द थीं . 
(defrule tightly1
(declare (salience 4000))
(id-root ?id tightly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tightly.clp 	tightly1   "  ?id "  kasakara )" crlf))
)
