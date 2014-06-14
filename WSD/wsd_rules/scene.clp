;########################################################################`
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
;@@@ Added by jagriti(30.12.2013)
;She had made a scene in the middle of the party. [oald]
;उसने पार्टी के बीच में ही हंगामा खड़ा कर दिया.
(defrule scene0
(declare (salience 5000))
(id-root ?id scene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 make|create)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMgAmA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scene.clp 	scene0   "  ?id "  haMgAmA )" crlf))
)

;@@@ Added by jagriti(30.12.2013)
;The police returned to the scene of the crime.[iit-bombay]
;पुलिस घटना स्थल पर लौट आए.
;The police arrived on the scene almost immediately. [iit-bombay]
;पुलिस घटना स्थल पर  तुरंत पहुंचे.
(defrule scene1
(declare (salience 4900))
(id-root ?id scene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-to_saMbanXI ? ?id)(kriyA-on_saMbanXI ? ?id)(kriyA-at_saMbanXI ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA_sWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scene.clp 	scene1   "  ?id "  GatanA_sWala)" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;No further action appears to have been taken in the matter until Lord Curzon came upon the scene. 
;ऐसा प्रतीत होता है कि लार्ड कर्ज़न के आने तक इस मामले में आगे कोई कार्यवाही नहीं की गई।
(defrule scene2
(declare (salience 4800))
(id-root ?id scene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-upon_saMbanXI ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scene.clp 	scene2   "  ?id "  mAmalA)" crlf))
)

;@@@ Added by jagriti(30.12.2013)
(defrule scene3
(declare (salience 100))
(id-root ?id scene)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scene.clp 	scene3   "  ?id "  xqSya)" crlf))
)
