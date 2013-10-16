;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;They accused the government of being unfit to govern.  [ cambridge ]
;उन्होंने सरकार पर शासन करने मे अयोग्य होने का आरोप लगाया.
;How would he govern if he was elected president?
;वह कैसे शासन करेगा अगर वह राष्ट्रपति निर्वाचित किया गया?
(defrule govern0		
(declare (salience 4800))
(id-root ?id govern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1)(and(kriyA-samakAlika_kriyA ?id ?id2)(kriyA-object ?id2 ?id1))(and(viSeRya-of_saMbanXI ?id1 ?id2)(saMjFA-to_kqxanwa ?id2 ?id)))
(id-root ?id1 country|government|democracy|tribe|president|socialization) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  govern.clp 	govern0   "  ?id "  SAsana_kara )" crlf))
)

;xxxxxxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;We will be studying the forces that govern the Earth's climate.  [ merriam ]
;हम उन बलों का अध्ययन कर रहे होंगे जो पृथ्वी की जलवायु नियन्त्रित करते हैं . 
(defrule govern1		
(declare (salience 2100))
(id-root ?id govern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyanwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  govern.clp 	govern1   "  ?id "  niyanwriwa_kara )" crlf))
)

