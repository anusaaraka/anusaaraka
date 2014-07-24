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
;@@@ Added by Prachi Rathore[31-1-14]
;She tapped out the beat on the table.[oald]
;उसने मेज पर ताल बजाई . 
(defrule tap0
(declare (salience 5000))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tap.clp 	tap0  "  ?id "  " ?id1 "  bajA )" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;He tapped out a few words on the keyboard.[oald]
;उसने कुञ्जीपटल पर कुछ शब्द लिखे . 
(defrule tap1
(declare (salience 5100))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 word|message|number|information|letter|name)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tap.clp 	tap1  "  ?id "  " ?id1 "  liKa )" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;He tried to tap me for a loan. [oald]
;उसने ऋण के लिये मुझे फुसलाने का प्रयास किया . 
(defrule tap4
(declare (salience 5100))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PusalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap4   "  ?id "  PusalA )" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;He was busy tapping away at his computer.[oald]
;वह उसके सङ्गणक पर लिखने में व्यस्त था . 
(defrule tap5
(declare (salience 5000))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tap.clp 	tap5  "  ?id "  " ?id1 "  liKa )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;Ralph tapped me on the shoulder.. [oald]
;रालफ् ने  मुझे  कन्धे पर थपथपाया . . 
(defrule tap6
(declare (salience 5100))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapaWapA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap6   "  ?id "  WapaWapA )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;A tap at/on the door.[oald]
;दरवाजे पर खटखटाहट . 
(defrule tap7
(declare (salience 5000))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-at_saMbanXI  ?id ?id1)(viSeRya-on_saMbanXI  ?id ?id1))
(id-root ?id1 door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KataKatAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap7   "  ?id "  KataKatAhata )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;I felt a tap on my shoulder. [cambridge]
;मैंने मेरे कन्धे पर थपथपाहट महसूस की . 
(defrule tap8
(declare (salience 5000))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id2 ?id)
(kriyA-on_saMbanXI  ?id2 ?id1)
(id-root ?id1 shoulder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WapaWapAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap8   "  ?id "  WapaWapAhata )" crlf))
)


;@@@ Added by Prachi Rathore[24-2-14]
 ;As late as 1933 the great physicist Ernest Rutherford had dismissed the possibility of tapping energy from atoms.[ncert]
;.वर्ष 1933 तक महान भौतिक विज्ञानी अर्नस्ट रदरफोर्ड परमाणुओं से ऊर्जा निष्कासन की सम्भावना को मन से दूर कर चुके थे.
(defrule tap9
(declare (salience 5000))
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 energy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRkAsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap9   "  ?id "  niRkAsana )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[31-1-14]
;Someone tapped at the door.[oald]
;किसीने दरवाजे पर खटखटाया . 
(defrule tap2
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KataKatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap2   "  ?id "  KataKatA )" crlf))
)

;@@@ Added by Prachi Rathore[31-1-14]
;Turn the tap off.[oald]
;टोंटी बंद कीजिए . 
(defrule tap3
(id-root ?id tap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id toMtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tap.clp 	tap3   "  ?id "  toMtI )" crlf))
)
