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
;@@@ Added by Jagrati
;The judge passed sentence.[oald]
;न्यायाधीश ने सजा सुनायी.
;The prisoner has served his sentence and will be released tomorrow.[oald]
;कैदी ने अपनी सजा काटी है और कल छोड़ दिया जाएगा.
(defrule sentence0
(declare (salience 5000))
(id-root ?id sentence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(kriyA-subject ?id1 ?id2)
(id-root ?id2 judge|prisoner|theif)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  sentence.clp  	sentence0   "  ?id "  sajA )" crlf))
)
;.................Default Rule................
;@@@ Added by Jagrati
;Your conclusion is good, but the final sentence is too long and complicated.[cambridge dict]
;आपका निष्कर्ष अच्छा है, लेकिन अंतिम वाक्य बहुत लंबा और जटिल है.
(defrule sentence1
(declare (salience 4900))
(id-root ?id sentence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAkya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  sentence.clp  	sentence1   "  ?id "  vAkya )" crlf))
)
;@@@ Added by Jagrati
;The police sentenced the theft for six months imprisonment .[iit bombat]
;पुलिस ने चोर को छह महीने की सजा सुनाई.
(defrule sentence2
(declare (salience 4800))
(id-root ?id sentence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  sentence.clp  	sentence2   "  ?id "  sajZA_xe )" crlf))
)
