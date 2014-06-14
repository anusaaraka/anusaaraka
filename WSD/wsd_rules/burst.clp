;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;Don't burst that balloon![oald]
;उस गुब्बारे को मत फोड़ो
(defrule burst2
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object ?id ?id1)
;(id-word ?id1 balloon);uncomment if any conflict is found
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst2   "  ?id " PodZa  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;The river burst its banks and flooded nearby towns.[oald]
;नदी अपने किनारों से बाहर बह गयी और आसपास के शहरों में बाढ़ आ गई.
(defrule burst3
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object ?id ?id1)
(id-word ?id1 banks)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst3   "  ?id " bAhara_baha_jA  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;He burst into the room without knocking.[oald]
;वह बिना खटखटायें कमरे के अंदर अचानक आ गया
(defrule burst4
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 room) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_A_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst4   "  ?id "  acAnaka_A_jA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;The roads are bursting with cars.[oald]
;सड़के कारों से खचाखच भरी हुयी है
(defrule burst5
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
;(id-word ?id1 cars)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KacAKaca_Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst5   "  ?id "  KacAKaca_Bara )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;The hall was full to bursting.[oald]
;हाल खचाखच भरा हुआ था
(defrule burst6
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id1 ?id)
(id-root =(- ?id 1) to)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) KacAKaca ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst6  "  ?id "  " (- ?id 1) "  KacAKaca  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;The hall was filled to bursting point.[oald]
;हाल खचाखच भरा हुआ था
(defrule burst7
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root =(- ?id 1) to)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
(id-word ?id1 point)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) ?id1 KacAKaca ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst7  "  ?id "  " (- ?id 1) " "?id1"  KacAKaca  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;Suddenly the door flew open and Jo burst in.[oald]
;अचानक जोर से दरवाजा खुला और जो अचानक अंदर आ घुसा 
(defrule burst8
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-upasarga ?id ?id1)
(id-word =(+ ?id 1) in) 
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) acAnaka_aMxara_A_GusA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst8  "  ?id "  " (+ ?id 1) "  acAnaka_aMxara_A_GusA  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;She burst into tears.[oald]
;वह अचानक फूट फूट कर रो पड़ी
(defrule burst9
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 tears) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_PUta_PUta_kar_ro_padZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst9  "  ?id "  " ?id1 "  acAnaka_PUta_PUta_kar_ro_padZa  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;The aircraft crashed and burst into flames.[oald]
;विमान दुर्घटनाग्रस्त हो गया और अचानक जल उठा
(defrule burst10
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word ?id1 flames) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_jala_uTA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst10  "  ?id "  " ?id1 "  acAnaka_jala_uTA  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;The sun burst through the clouds.[oald]
;सूरज बादलों में से अचानक दिखायी दिया
(defrule burst11
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id ?id1)
;(id-word ?id1 clouds) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_xiKAyI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst11   "  ?id "  acAnaka_xiKAyI_xe )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;‘For heavens' sake!’ he burst out.[oald]
;'भगवान के लिये !' , वह अचानक चिल्लाया
(defrule burst12
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_cillAyA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst12  "  ?id "  " ?id1 "   acAnaka_cillAyA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;The dam burst under the weight of water.[oald]
;पानी के दबाव से बाँध टूट गया
(defrule burst13
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-word ?id1 dam) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst13   "  ?id " tUta_jA  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;To be bursting with ideas.[oald]
;विचारों से परिपूर्ण होना
(defrule burst14
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-word ?id1 ideas)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paripUrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst14   "  ?id "  paripUrNa_ho )" crlf)
)
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;frequent bursts of machine-gun fire.[oald]
;मशीन गन की लगातार बारूद की बौछार
(defrule burst15
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 fire)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bArOxa_kI_bOCAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst15  "  ?id "  " ?id1 " bArOxa_kI_bOCAra  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;A bud bursts.[shiksharthi]
;कली फूटती है
(defrule burst16
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-word ?id1 bud)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUta ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst16   "  ?id " PUta  )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;The door burst open[shiksharthi]
;दरवाजा अचानक खुल गया
(defrule burst17
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(kriyA-subject  ?id ?id1)
(id-word ?id2 open)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_Kula_jA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst17  "  ?id "  " ?id1 "   acAnaka_Kula_jA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;A spring bursts forth.[shiksharthi]
;सोता फूट निकलता है
(defrule burst18
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 forth)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PUta_nikala ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst18  "  ?id "  " ?id1 "   PUta_nikala )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 21/03/2014
;I tend to work in bursts.[shiksharthi]
;मैं टुकड़ो में काम करता हूँ
(defrule burst19
(declare (salience 3000))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tukadZA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " burst.clp	burst19  "  ?id "  " ?id1 "   tukadZA )" crlf)
)
)


;************************DEFAULT RULES********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;That balloon will burst if you blow it up any more.[oald]
;वह गुब्बारा फट जायेगा अगर तुम उसको और फुलाओगे
(defrule burst0
(declare (salience 0))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst0   "  ?id " Pata  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 20/03/2014
;A burst in a water pipe.[oald]
;पानी के पाइप में दरार
(defrule burst1
(declare (salience 0))
(id-root ?id burst)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burst.clp 	burst1   "  ?id " xarAra  )" crlf)
)
)

