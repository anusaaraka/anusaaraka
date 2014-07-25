;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (shwetavikram.2009@rediffmail.com)
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
;@@@ Added by SHWETA VIKRAM(23/09/2013)
;It is a water- repellent fabric.(hinkhoj)
;यह एक पानी- निरोधक संरचना है .  (Anussraka)
(defrule repellent0
(declare (salience 5000))
(id-root ?id repellent)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niroXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repellent.clp 	repellent0   "  ?id "  niroXaka )" crlf))
)

;@@@ Added by SHWETA VIKRAM(23/09/2013)
;I find his selfishness repellent.
;मैं उसकी स्वार्थपरता को घृणास्पद पाता हूँ . 
(defrule repellent1
(declare (salience 4850))
(id-root ?id repellent)
?mng <-(meaning_to_be_decided ?id)
(or(object-object_samAnAXikaraNa  ?id1 ?id)(viSeRaNa-viSeRaka  ?id ?))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNAspaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repellent.clp 	repellent1   "  ?id "  GqNAspaxa )" crlf))
)

;@@@ Added by Anita-26.3.2014
;This coat is not water repellent , but it is showerproof. [cambridge dictionary]
;यह कोट पानी निरोधक नहीं है, लेकिन हल्की बरसात में गीला न होने वाला है । [verified sentence]
(defrule repellent2
(declare (salience 5100))
(id-root ?id repellent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 water|mosquito)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niroXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repellent.clp 	repellent2   "  ?id "  niroXaka )" crlf))
)

;============================DEFAULT==========================
;@@@ Added by SHWETA VIKRAM(23/09/2013)
(defrule repellent3
(declare (salience 0))
(id-root ?id repellent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_BagAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repellent.clp 	repellent3   "  ?id "  xUra_BagAne_vAlA)" crlf))
)

