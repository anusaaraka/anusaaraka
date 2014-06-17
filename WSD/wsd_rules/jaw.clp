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
;@@@ Added by Prachi Rathore[20-3-14]
;The lion opened its jaws and roared.[cambridge]
;सिंह ने उसका मुँह खोला और दहाडा . 
(defrule jaw0
(declare (salience 5000))
(id-root ?id jaw)
(id-word ?id jaws)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  jaw.clp 	jaw0   "  ?id " muzha )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]
;His jaw dropped when he heard who had won.[m-w]
;उसका मुँह खुला रह गया  जब उसने सुना कि कौन जीता . 
(defrule jaw1
(declare (salience 5000))
(id-root ?id jaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject ?id1 ?id)
(id-root ?id1 drop)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaw.clp 	jaw1   "  ?id "  muzha )" crlf))
)


;@@@ Added by Prachi Rathore[20-3-14]
;I met Jane and we had a good jaw over lunch.[cambridge]
;मैं जेन से मिला और दोपहर के खाने के समय हमारी अच्छी बातचीत हुयी .  
(defrule jaw5
(declare (salience 5000))
(id-root ?id jaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaw.clp 	jaw5   "  ?id "  bAwacIwa )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[20-3-14]
;The punch broke my jaw.[oald]
;मुक्के ने मेरा जबडा तोडा . 
(defrule jaw2
(declare (salience 400))
(id-root ?id jaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jabadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaw.clp 	jaw2   "  ?id "  jabadA )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]
;She was on the phone jawing with her sister all night.[m-w]
;वह पूरी रात उसकी बहन के साथ बातचीत करते हुए टेलीफोन पर थी . 
(defrule jaw4
(declare (salience 400))
(id-root ?id jaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaw.clp 	jaw4   "  ?id "  bAwacIwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]

(defrule jaw3
(declare (salience 200))
(id-root ?id jaw)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jabadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jaw.clp 	jaw3   "  ?id "  jabadA )" crlf))
)
