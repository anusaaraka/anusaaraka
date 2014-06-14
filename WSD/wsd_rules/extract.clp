;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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
;@@@ added by Pramila(BU) on 16-12-2013
;The following extract is taken from her new novel.      ;oald
;निम्नलिखित उद्धरण उसके नए उपन्यास से लिया गया है.
(defrule extract0
(declare (salience 4000))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxXaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract0   "  ?id " uxXaraNa  )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;The cream contained extracts of/from several plants.        ;cald
;क्रीम में कई पौधों का सार है.
(defrule extract1
(declare (salience 4900))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(or(kriyA-from_saMbanXI  ?kri ?id1)(kriyA-of_saMbanXI  ?kri ?id1))
(id-root ?id1 plant|flower)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract1   "  ?id " sAra )" crlf))
)

;Cream containing natural plant extracts.        ;oald
;प्राकृतिक पौधो के सार से युक्त क्रीम.
(defrule extract2
(declare (salience 4900))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 plant|flower|vegetable)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract2   "  ?id " sAra )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;This article is extracted from his new book.    ;oald
;यह लेख उसकी नई पुस्तक से लिया गया है.
;(defrule extract3
;(declare (salience 4900))
;(id-root ?id extract)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-from_saMbanXI  ?id ?id1)
;(id-root ?id1 book|novel|poem|autobiography)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id le_jA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract3   "  ?id " le_jA  )" crlf))
;)

;@@@ added by Pramila(BU) on 16-12-2013
;He managed to extract all kinds of information about her private life.      ;oald
;वह उसके निजी जीवन के बारे में सभी प्रकार की जानकारी प्राप्त करने में कामयाब रहा.
(defrule extract4
(declare (salience 4900))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(and(kriyA-kriyArWa_kriyA  ?id1 ?id)(kriyA-about_saMbanXI  ?id ?id3))
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract4   "  ?id " prApwa_kara )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;The dentist may decide that the wisdom teeth need to be extracted.   ;oald
;दंत चिकित्सक फैसला कर सकते हैं कि अक्ल दाढ़ को उखाड़ने की जरूरत है .
(defrule extract5
(declare (salience 4900))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-subject  ?id1 ?sub)
(id-root ?sub tooth)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uKAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract5   "  ?id "  uKAdZa )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;They are unlikely to extract much benefit from the trip.         ;oald
;वे यात्रा से अधिक लाभ नहीं ले सके.
(defrule extract6
(declare (salience 4900))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id1 ?id)
(kriyA-object  ?id ?id2)
(id-word ?id2 benefit)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract6   "  ?id "  le )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
(defrule extract7
(declare (salience 4000))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract7   "  ?id "  nikAla )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
(defrule extract8
(declare (salience 4000))
(id-root ?id extract)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extract.clp 	extract8   "  ?id "  nikAla )" crlf))
)
