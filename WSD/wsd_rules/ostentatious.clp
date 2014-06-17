;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 27-03-2014
;He is too ostentatious to be believed.  ;shiksharthi
;वह इतना ज्यादा आडंबरी है कि उस पर विश्वास नहीं किया जा सकता.
(defrule ostentatious1
(declare (salience 5000))
(id-word ?id ostentatious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdaMbarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " ostentatious.clp 	ostentatious1   "  ?id " AdaMbarI )" crlf)
))


;-------------default rules---------------------------------
;@@@ Added by Pramila(BU) on 27-03-2014
;He is a man of ostentatious behaviour,I would never like him.  ;shiksharthi
;वह आडंबरपूर्ण व्यवहार का आदमी है, मैं उसे कभी पसंद नहीं करता.
(defrule ostentatious2
(declare (salience 100))
(id-word ?id ostentatious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdaMbarapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " ostentatious.clp 	ostentatious2   "  ?id " AdaMbarapUrNa )" crlf)
))

;@@@ Added by Pramila(BU) on 27-03-2014
(defrule ostentatious3
(declare (salience 0))
(id-word ?id ostentatious)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdaMbarapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " ostentatious.clp 	ostentatious3   "  ?id " AdaMbarapUrNa )" crlf)
))





